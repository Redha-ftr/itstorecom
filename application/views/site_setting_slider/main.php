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
				<div class="form-group">
		          <label for=""> Slider </label>
		          <div class="uploader-wrapper">
		            <button type="button" class="btn btn-primary picker-slider">
		              <i class="fa fa-cloud-upload"></i> <?=$this->lang->line('button_upload')?> </button>
		          </div>
		          <div class="validation-message" data-field="slider"></div>
		        </div>

		        <div class="form-group">
		          <label for=""> Promo 1</label>
		          <div class="uploader-wrapper">
		            <button type="button" class="btn btn-primary picker-promo-1">
		              <i class="fa fa-cloud-upload"></i> <?=$this->lang->line('button_upload')?> </button>
		          </div>
		          <div class="validation-message" data-field="promo_1"></div>
		        </div>

		        <div class="form-group">
		          <label for=""> Promo 2</label>
		          <div class="uploader-wrapper">
		            <button type="button" class="btn btn-primary picker-promo-2">
		              <i class="fa fa-cloud-upload"></i> <?=$this->lang->line('button_upload')?> </button>
		          </div>
		          <div class="validation-message" data-field="promo_2"></div>
		        </div>

		         <div class="form-group">
		          <label for=""> Promo 3</label>
		          <div class="uploader-wrapper">
		            <button type="button" class="btn btn-primary picker-promo-3">
		              <i class="fa fa-cloud-upload"></i> <?=$this->lang->line('button_upload')?> </button>
		          </div>
		          <div class="validation-message" data-field="promo_3"></div>
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
					<?php if(get_access_create($this->session->userdata('active_user')->group_id) == '1' OR get_access_update($this->session->userdata('active_user')->group_id) == '1'){ ?>
					<button type="button" class="btn btn-primary action" title="save" onclick="save()"><?=$this->lang->line('title_save')?> </button>
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

		var uploader_slider = $('.picker-slider').uploader({
			upload_url: '<?php echo base_url() . 'uploader/upload'; ?>',
			file_picker_url: '<?php echo base_url() . 'uploader/files'; ?>',
			input_name: 'slider',
			maximum_total_files: 5,
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

		var uploader_promo_1 = $('.picker-promo-1').uploader({
			upload_url: '<?php echo base_url() . 'uploader/upload'; ?>',
			file_picker_url: '<?php echo base_url() . 'uploader/files'; ?>',
			input_name: 'promo_1',
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

		var uploader_promo_2 = $('.picker-promo-2').uploader({
			upload_url: '<?php echo base_url() . 'uploader/upload'; ?>',
			file_picker_url: '<?php echo base_url() . 'uploader/files'; ?>',
			input_name: 'promo_2',
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

		var uploader_promo_3 = $('.picker-promo-3').uploader({
			upload_url: '<?php echo base_url() . 'uploader/upload'; ?>',
			file_picker_url: '<?php echo base_url() . 'uploader/files'; ?>',
			input_name: 'promo_3',
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
		


		uploader_slider.set_files('<?=$query->slider?>');
		uploader_promo_1.set_files('<?=$query->promo_1?>');
		uploader_promo_2.set_files('<?=$query->promo_2?>');
		uploader_promo_3.set_files('<?=$query->promo_3?>');

	})();

	function validate(formData) {
		var returnData;
		$('#form-action').disable([".action"]);
		$("button[title='save']").html("Validating data, please wait...");
		$.ajax({
			url: "<?php echo base_url() . 'site_setting_slider/validate'; ?>", async: false, type: 'POST', data: formData,
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

	function save() {
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
				$('.validation-message').html('');
				$("button[title='save']").html("Saving data, please wait...");
				$.post("<?php echo base_url() . 'site_setting_slider/save'; ?>", formData).done(function(data) {
					

					$('#form-action').enable([".action"]);
					$("button[title='save']").html("Save");
					

				});

					
			});
		}
	}

</script>