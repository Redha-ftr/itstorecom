<div class="content">
	<div class="panel">
		<div class="content-header no-mg-top">
			<i class="fa fa-list-alt"></i>
			<div class="content-header-title"><?=$title?></div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="content-box">
					<form id="form-action">
						<input type="text" name="id" class="hidden">
						<div class="form-group">
							<label for=""> Full Name</label>
							<input class="form-control" name="name" placeholder="Name" type="text">
							<div class="validation-message" data-field="name"></div>
						</div>
						<div class="form-group">
							<label for=""> Username</label>
							<input class="form-control" name="username" placeholder="Username" type="text">
							<div class="validation-message" data-field="username"></div>
						</div>
						<div class="form-group">
							<label for=""> Password</label>
							<input class="form-control" name="password" placeholder="Password" type="password">
							<div class="validation-message" data-field="password"></div>
						</div>
						<div class="form-group">
							<label for=""> Group</label>
							<select name="group_id" class="form-control">
								<?php foreach ($groups as $key => $group) { ?>
									<option value="<?php echo $group->id; ?>"><?php echo $group->group_name; ?></option>
								<?php } ?>
							</select>
							<div class="validation-message" data-field="group"></div>
						</div>

					</form>
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
</div>


<script type="text/javascript">
  $(".select2").select2();
</script>

<script type="text/javascript">

	var onLoad = (function() {
		var index = "<?php echo $index; ?>";
		
		if (index != '') {
			datagrid.formLoad('#form-action', index);
		}

		$('.loading-panel').hide();
		$('.form-panel').show();
	})();

	function validate(formData) {
		var returnData;
		$('#form-action').disable([".action"]);
		$("button[title='save']").html("Validating data, please wait...");
		$.ajax({
			url: "<?php echo base_url() . 'user/validate'; ?>", async: false, type: 'POST', data: formData,
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
		$.post("<?php echo base_url() . 'user/action'; ?>", formData).done(function(data) {
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