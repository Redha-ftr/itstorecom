<script type="text/javascript" src="<?php echo base_url() . 'assets/plugins/ckeditor/ckeditor.js'; ?>"></script>
<div class="content">
	<div class="panel">
		<div class="content-header no-mg-top">
			<i class="fa fa-list-alt"></i>
			<div class="content-header-title"><?=$title?></div>
		</div>
		<form id="form-action">
		 <div class="row">
		    <div class="col-md-12">
		      <div class="content-box">
		  <div class="row">
		    <div class="col-md-12">
		      <div class="content-box">
		        <input type="text" name="id" class="hidden">
		        <div class="form-group">
				  <label for=""> <?=$this->lang->line('title_judul')?></label>
				  <input class="form-control" name="judul" placeholder="<?=$this->lang->line('placeholder_judul')?>" type="text">
				  <div class="validation-message" data-field="judul"></div>
				</div>
				<div class="form-group">
							<label for=""> Deskripsi</label>
							<textarea cols="80" id="ckeditor_deskripsi" name="deskripsi" rows="10"></textarea>

							<textarea cols="80" class="hidden" id="deskripsi_simpan" name="deskripsi_simpan" rows="50"></textarea>
							<div class="validation-message" data-field="deskripsi"></div>
						</div>
		      
		      <div class="form-group">
		          <label for=""> <?=$this->lang->line('title_logo')?></label>
		          <div class="uploader-wrapper">
		            <button type="button" class="btn btn-primary picker-uploader">
		              <i class="fa fa-cloud-upload"></i> <?=$this->lang->line('button_upload')?> </button>
		          </div>
		          <div class="validation-message" data-field="images"></div>
		        </div>
		    </div>
		  </div>
		</div>
	</div>
</div>
		</form>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="content-box">
				<div class="content-box-footer">
					<?php if($index != ''){?>
					<?php if(get_access_delete($this->session->userdata('active_user')->group_id) == '1'){ ?>
					<button type="button" class="btn btn-danger action" title="cancel" onclick="delete_action('<?=$index?>')"><?=$this->lang->line('title_delete')?> </button>
					<?php } ?>
					<?php } ?>
					<button type="button" class="btn btn-warning action" title="cancel" onclick="form_routes('cancel')"><?=$this->lang->line('title_cancel')?> </button>
					<?php if(get_access_create($this->session->userdata('active_user')->group_id) == '1' OR get_access_update($this->session->userdata('active_user')->group_id) == '1'){ ?>
					<button type="button" class="btn btn-success action" title="save" onclick="form_routes('save')"><?=$this->lang->line('title_save')?> </button>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	
	// Ckeditor
if ($('#ckeditor_deskripsi').length) {
	CKEDITOR.replace('ckeditor_deskripsi')
}


</script>


<script type="text/javascript">

function save_ckeditor() {
	document.getElementById('deskripsi_simpan').value =  CKEDITOR.instances.ckeditor_deskripsi.getData();
}
</script>


<script type="text/javascript">

	var onLoad = (function() {
		var index = "<?php echo $index; ?>";

		var uploader = $('.picker-uploader').uploader({
			upload_url: '<?php echo base_url() . 'uploader/upload'; ?>',
			file_picker_url: '<?php echo base_url() . 'uploader/files'; ?>',
			input_name: 'images',
			maximum_total_files: 1,
			maximum_file_size: 102400000,
			file_types_allowed: ['image/jpeg', 
								'image/png', 
								'image/vnd.adobe.photoshop',
								'application/msword',
								'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
								'application/vnd.ms-powerpoint',
								'application/vnd.openxmlformats-officedocument.presentationml.presentation',
								'application/pdf',
								'application/vnd.ms-powerpoint',
								'application/vnd.openxmlformats-officedocument.presentationml.slideshow',
								'application/vnd.ms-excel',
								'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
								'application/xml',
								'text/plain',
								'image/*',
								'text/csv',
								'text/xml',
								'video/mp4', 
								'video/quicktime'],
			on_error: function(err) {
				swal({
					title: "Upload Failed",
					text: err.messages,
					type: "warning"
				})
			}
		});

		if (index != '') {
			datagrid.formLoad('#form-action', index);
			uploader.set_files(datagrid.getRowData(index).images)
		}

		$('.loading-panel').hide();
		$('.form-panel').show();
	})();

	function validate(formData) {
		var returnData;
		$('#form-action').disable([".action"]);
		$("button[title='save']").html("Validating data, please wait...");
		$.ajax({
			url: "<?php echo base_url() . 'articles/validate'; ?>", async: false, type: 'POST', data: formData,
			success: function(data, textStatus, jqXHR) {
				returnData = data;
			}
		});

		$('#form-action').enable([".action"]);
		$("button[title='save']").html("Save changes");
		if (returnData != 'success') {
			$('#form-action').enable([".action"]);
			$("button[title='save']").html("Save changes");
			$('.validation-message').html('');
			$('.validation-message').each(function() {
				for (var key in returnData) {
					if ($(this).attr('data-field') == key) {
						$(this).html(returnData[key]);
					}
				}
			});
		} else {
			return 'success';	
		}
	}

	function save(formData) {
		$("button[title='save']").html("Saving data, please wait...");
		$.post("<?php echo base_url() . 'articles/action'; ?>", formData).done(function(data) {
			$('.datagrid-panel').fadeIn();
			$('.form-panel').fadeOut();
			datagrid.reload();
		});
	}

	function cancel() {
		$('.datagrid-panel').fadeIn();
		$('.form-panel').fadeOut();
	}

	function form_routes(action) {
		if (action == 'save') {
			save_ckeditor();
			var formData = $('#form-action').serialize();
			if (validate(formData) == 'success') {
				swal({   
					title: "Please check your data",   
					text: "Saved data can not be restored",
					type: "warning",
					showCancelButton: true,
					confirmButtonColor: "#DD6B55",
					cancelButtonText: "Cancel",
					confirmButtonText: "Save",
					closeOnConfirm: true 
				}, function() {
					save(formData);
				});
			}
		} else {
			cancel();
		}
	}

</script>