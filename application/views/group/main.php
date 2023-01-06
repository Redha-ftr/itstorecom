<!-- Table -->
<section class="datagrid-panel">
	<div class="content">
		<div class="panel">
			<div class="content-header no-mg-top">
				<i class="fa fa-list-alt"></i>
				<div class="content-header-title"><?=$title?></div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="content-box">
						<div class="content-box-header">
							<div class="row">
								<div class="col-md-6">
									<?php if(get_access_create($this->session->userdata('active_user')->group_id) == '1'){ ?>
									<button class="btn btn-success" onclick="main_routes('create', '')"> <?=$this->lang->line('title_add')?> </button>
									<?php } ?>
								</div>
								<div class="col-md-6 form-inline justify-content-end">
									<select class="form-control col-md-3 mb-1 mr-sm-1 mb-sm-0" id="search-option"></select>
									<input class="form-control col-md-8" id="search" placeholder="Search" type="text">
								</div>
							</div>
						</div>
						<div class="table-responsive">
							<table class="table table-striped table-bordered" id="datagrid"></table>
						</div>
						<div class="content-box-footer">
							<div class="row">
								<div class="col-md-3 form-inline">
									<select class="form-control" id="option"></select>
								</div>
								<div class="col-md-3 form-inline" id="info"></div>
								<div class="col-md-6">
									<ul class="pagination pull-right" id="paging"></ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Form -->
<section class="form-panel"></section>

<script type="text/javascript">
	var datagrid = $("#datagrid").datagrid({
		url						: "<?php echo base_url() . 'group/data'; ?>",
		primaryField			: 'id', 
		rowNumber				: true,
		searchInputElement 		: '#search', 
		searchFieldElement 		: '#search-option', 
		pagingElement 			: '#paging', 
		optionPagingElement 	: '#option', 
		pageInfoElement 		: '#info',
		activePageNumber		: 1,
		itemsPerPage			: 100,
		itemsPerPageOption 		: [100, 200, 300, 400, 500],
		columns					: [
		{field: 'group_name', title: 'Group Name', editable: false, sortable: false, width: '', align: 'center', search: true},
		{field: 'view', title: 'View', editable: false, sortable: false, width: '', align: 'center', search: false},
		{field: 'create', title: 'Create', editable: false, sortable: false, width: '', align: 'center', search: false},
		{field: 'update', title: 'Update', editable: false, sortable: false, width: '', align: 'center', search: false},
		{field: 'delete', title: 'Delete', editable: false, sortable: false, width: '', align: 'center', search: false},
		{field: 'menu', title: 'Menu', sortable: false, width: '', align: 'center', search: false, 
		rowStyler: function(rowData, rowIndex) {
			return menu(rowData, rowIndex);
		}
	}
	]
});

	datagrid.run();

	function menu(rowData, rowIndex) {
		var menu = '<a href="javascript:;" onclick="main_routes(\'update\', ' + rowIndex + ')">Detail</a> '
		return menu;
	}

	function create_update_form(rowIndex) {
		$.post("<?php echo base_url() . 'group/form'; ?>", {index : rowIndex}).done(function(data) {
			$('.form-panel').html(data);
		});
	}

	function delete_action(rowIndex) {
		swal({   
			title: "Are you sure want to delete this data?",   
			text: "Deleted data can not be restored!",
			type: "warning",
			showCancelButton: true,
			confirmButtonColor: "#DD6B55",
			cancelButtonText: "Cancel",
			confirmButtonText: "Hapus",
			closeOnConfirm: true 
		}, function() {
			var row = datagrid.getRowData(rowIndex);
			$.post("<?php echo base_url() . 'group/delete'; ?>", {id : row.id}).done(function(data) {
			$('.datagrid-panel').fadeIn();
			$('.form-panel').fadeOut();
			datagrid.reload();
			});
		});
	}

	function main_routes(action, rowIndex) {
		$('.datagrid-panel').fadeOut();
		$('.loading-panel').fadeIn();

		if (action == 'create') {
			create_update_form(rowIndex);
		} else if (action == 'update') {
			create_update_form(rowIndex);
		}
	}

</script>