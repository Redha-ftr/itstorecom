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
				  <label for=""> <?=$this->lang->line('title_produk')?></label>
				  <input class="form-control" name="nama_produk" placeholder="<?=$this->lang->line('placeholder_produk')?>" type="text">
				  <div class="validation-message" data-field="nama_produk"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_sku')?> </label>
				  <input class="form-control" name="sku" placeholder="<?=$this->lang->line('placeholder_sku')?>" type="text">
				  <div class="validation-message" data-field="sku"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_kode')?> </label>
				  <input class="form-control" name="kode" placeholder="<?=$this->lang->line('placeholder_kode')?>" type="text">
				  <div class="validation-message" data-field="kode"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_berat')?> </label>
				  <input class="form-control" name="berat" placeholder="<?=$this->lang->line('placeholder_berat')?>" type="text">
				  <div class="validation-message" data-field="berat"></div>
				</div>
				<div class="form-group">
				  	<label for=""> <?=$this->lang->line('title_kategori')?> </label>
				  	<select name="kategori_id" class="form-control">
				  		<?php foreach (get_table('kategori','id','nama') as $key => $value) { ?>
							<option value="<?=$value->id?>"><?=$value->nama?></option>
						<?php } ?>
					</select>
				  <div class="validation-message" data-field="kategori_id"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_subkategori')?> </label>
				  <select name="subkategori_id" class="form-control">
						<?php foreach ($subkategori as $key => $value) { ?>
							<option value="<?php echo $value->id; ?>"><?php echo $value->nama; ?></option>
						<?php } ?>
					</select>

			

				  <div class="validation-message" data-field="subkategori_id"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_brand')?> </label>
				  <select name="brand_id" class="form-control">
						<?php foreach ($brand as $key => $value) { ?>
							<option value="<?php echo $value->id; ?>"><?php echo $value->nama; ?></option>
						<?php } ?>
					</select>
				  <div class="validation-message" data-field="brand_id"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_kategori_brand')?> </label>
				  <input class="form-control" name="kategori_brand" placeholder="<?=$this->lang->line('placeholder_kategori_brand')?>" type="text">
				  <div class="validation-message" data-field="kategori_brand"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_tag')?> </label>
				  <input class="form-control" name="tags" placeholder="<?=$this->lang->line('placeholder_tag')?>" type="text">
				  <div class="validation-message" data-field="tags"></div>
				</div>

				
		      </div>
		    </div>

		    <div class="col-md-6">
		      <div class="content-box">
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_deskripsi')?> </label>
				  <input class="form-control" name="deskripsi" placeholder="<?=$this->lang->line('placeholder_deskripsi')?>" type="text">
				  <div class="validation-message" data-field="deskripsi"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_harga')?> </label>
				  <input class="form-control" name="harga" placeholder="<?=$this->lang->line('placeholder_harga')?>" type="text">
				  <div class="validation-message" data-field="harga"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_stok')?> </label>
				  <input class="form-control" name="stok" placeholder="<?=$this->lang->line('placeholder_stok')?>" type="text">
				  <div class="validation-message" data-field="stok"></div>
				</div>
		      	<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_harga_promo')?> </label>
				  <input class="form-control" name="harga_promo" placeholder="<?=$this->lang->line('placeholder_harga_promo')?>" type="text">
				  <div class="validation-message" data-field="harga_promo"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_link_Wa')?> </label>
				  <input class="form-control" name="link_wa" placeholder="<?=$this->lang->line('placeholder_link_Wa')?>" type="text">
				  <div class="validation-message" data-field="link_wa"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_official_brand')?> </label>
				  <select name="official_brand_id" class="form-control">
						<?php foreach ($nama as $key => $value) { ?>
							<option value="<?php echo $value->id; ?>"><?php echo $value->nama; ?></option>
						<?php } ?>
					</select>
				  <div class="validation-message" data-field="official_brand_id"></div>
				</div>
				<div class="form-group">
				  <label for=""> <?=$this->lang->line('title_bestseller')?> </label>
				  <select name="bestseller_id" class="form-control">
				  	<option value="0"><?=$this->lang->line('title_tidak')?></option>
				  	<option value="1"><?=$this->lang->line('title_ya')?></option>
				  </select>
				  <div class="validation-message" data-field="bestseller"></div>
				</div>
		        <div class="form-group">
		          <label for=""> <?=$this->lang->line('title_foto_produk')?></label>
		          <div class="uploader-wrapper">
		            <button type="button" class="btn btn-primary picker-uploader">
		              <i class="fa fa-cloud-upload"></i> <?=$this->lang->line('button_upload')?> </button>
		          </div>
		          <div class="validation-message" data-field="images"></div>
		        </div>
		        <div class="form-group">
		          <label for=""> <?=$this->lang->line('title_detail_foto')?></label>
		          <div class="uploader-wrapper">
		            <button type="button" class="btn btn-primary picker-uploader">
		              <i class="fa fa-cloud-upload"></i> <?=$this->lang->line('button_upload')?> </button>
		          </div>
		          <div class="validation-message" data-field="images_detail"></div>
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
		})


		var uploader_pemerintah = $('.picker-uploader-pemerintah').uploader({
			upload_url: '<?php echo base_url() . 'uploader/upload'; ?>',
			file_picker_url: '<?php echo base_url() . 'uploader/files'; ?>',
			input_name: 'images_detail',
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
			url: "<?php echo base_url() . 'product/validate'; ?>", async: false, type: 'POST', data: formData,
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
		$.post("<?php echo base_url() . 'product/action'; ?>", formData).done(function(data) {
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