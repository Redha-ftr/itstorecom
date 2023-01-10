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
		    <div class="col-md-6">
		      <div class="content-box">
		        <input type="text" name="id" class="hidden">
		        <div class="form-group">
				  <label for=""> <?=$this->lang->line('title_nama_sekolah')?></label>
				  <input class="form-control" name="nama_sekolah" placeholder="<?=$this->lang->line('placeholder_nama_sekolah')?>" type="text">
				  <div class="validation-message" data-field="nama_sekolah"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_nis')?> </label>
				  <input class="form-control" name="nis_nss_dns" placeholder="<?=$this->lang->line('placeholder_nis')?>" type="text">
				  <div class="validation-message" data-field="nis_nss_dns"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_npsn')?> </label>
				  <input class="form-control" name="npsn" placeholder="<?=$this->lang->line('placeholder_npsn')?>" type="text">
				  <div class="validation-message" data-field="npsn"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_alamat_sekolah')?> </label>
				  <input class="form-control" name="alamat_sekolah" placeholder="<?=$this->lang->line('placeholder_alamat_sekolah')?>" type="text">
				  <div class="validation-message" data-field="alamat_sekolah"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_kelurahan_desa')?></label>
				  <input class="form-control" name="kelurahan_desa" placeholder="<?=$this->lang->line('placeholder_kelurahan_desa')?>" type="text">
				  <div class="validation-message" data-field="kelurahan_desa"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_kecamatan')?></label>
				  <input class="form-control" name="kecamatan" placeholder="<?=$this->lang->line('placeholder_kecamatan')?>" type="text">
				  <div class="validation-message" data-field="kecamatan"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_kota_kabupaten')?></label>
				  <input class="form-control" name="kota_kabupaten" placeholder="<?=$this->lang->line('placeholder_kota_kabupaten')?>" type="text">
				  <div class="validation-message" data-field="kota_kabupaten"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_provinsi')?></label>
				  <input class="form-control" name="provinsi" placeholder="<?=$this->lang->line('placeholder_provinsi')?>" type="text">
				  <div class="validation-message" data-field="provinsi"></div>
				</div>
				
		      </div>
		    </div>

		    <div class="col-md-6">
		      <div class="content-box">
		      	<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_website')?></label>
				  <input class="form-control" name="website" placeholder="<?=$this->lang->line('placeholder_website')?>" type="text">
				  <div class="validation-message" data-field="website"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_email')?></label>
				  <input class="form-control" name="email" placeholder="<?=$this->lang->line('placeholder_email')?>" type="text">
				  <div class="validation-message" data-field="email"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_telepon')?></label>
				  <input class="form-control" name="telepon" placeholder="<?=$this->lang->line('placeholder_telepon')?>" type="text">
				  <div class="validation-message" data-field="telepon"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_visi')?></label>
				  <input class="form-control" name="visi" placeholder="<?=$this->lang->line('placeholder_visi')?>" type="text">
				  <div class="validation-message" data-field="visi"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_misi')?></label>
				  <input class="form-control" name="misi" placeholder="<?=$this->lang->line('placeholder_misi')?>" type="text">
				  <div class="validation-message" data-field="misi"></div>
				</div>
		        <div class="form-group">
		          <label for=""> <?=$this->lang->line('title_logo_sekolah')?></label>
		          <div class="uploader-wrapper">
		            <button type="button" class="btn btn-primary picker-uploader">
		              <i class="fa fa-cloud-upload"></i> Upload Logo </button>
		          </div>
		          <div class="validation-message" data-field="logo"></div>
		        </div>
		        <div class="form-group">
		          <label for=""> <?=$this->lang->line('title_logo_pemerintah')?></label>
		          <div class="uploader-wrapper">
		            <button type="button" class="btn btn-primary picker-uploader-pemerintah">
		              <i class="fa fa-cloud-upload"></i> Upload Logo </button>
		          </div>
		          <div class="validation-message" data-field="logo_pemerintah"></div>
		        </div>
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
  $(".select2").select2();
</script>

<script type="text/javascript">

	var onLoad = (function() {
		var index = "<?php echo $index; ?>";

		var uploader = $('.picker-uploader').uploader({
			upload_url: '<?php echo base_url() . 'uploader/upload'; ?>',
			file_picker_url: '<?php echo base_url() . 'uploader/files'; ?>',
			input_name: 'logo',
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
		})


		var uploader_pemerintah = $('.picker-uploader-pemerintah').uploader({
			upload_url: '<?php echo base_url() . 'uploader/upload'; ?>',
			file_picker_url: '<?php echo base_url() . 'uploader/files'; ?>',
			input_name: 'logo_pemerintah',
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
		})
		
		if (index != '') {
			datagrid.formLoad('#form-action', index);
			uploader.set_files(datagrid.getRowData(index).logo)
			uploader_pemerintah.set_files(datagrid.getRowData(index).logo_pemerintah)
		}

		$('.loading-panel').hide();
		$('.form-panel').show();
	})();

	function validate(formData) {
		var returnData;
		$('#form-action').disable([".action"]);
		$("button[title='save']").html("Validating data, please wait...");
		$.ajax({
			url: "<?php echo base_url() . 'sekolah/validate'; ?>", async: false, type: 'POST', data: formData,
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
		$.post("<?php echo base_url() . 'sekolah/action'; ?>", formData).done(function(data) {
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