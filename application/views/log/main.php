<!-- Table -->
<section class="datagrid-panel">
	<div class="content">
		<div class="panel">
			<div class="content-header no-mg-top">
				<i class="fa fa-building"></i>
				<div class="content-header-title"><?=$title?></div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="content-box">
						<div class="content-box-header">
							<div class="row">
								<div class="col-md-12 form-inline">
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
		url						: "<?php echo base_url() . 'log/data'; ?>",
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
		{field: 'IP', title: 'IP', editable: false, sortable: false, width: '', align: 'center', search: true},
		{field: 'waktu', title: 'Date', editable: false, sortable: false, width: '', align: 'center', search: true},
		{field: 'aktifitas', title: 'Activity', editable: false, sortable: false, width: '', align: 'center', search: true},
	    {field: 'email', title: 'Email', editable: false, sortable: false, width: '', align: 'center', search: true},
	    {field: 'note', title: 'Note', editable: false, sortable: false, width: '', align: 'center', search: true},
	    {field: 'akses', title: 'Access', editable: false, sortable: false, width: '', align: 'center', search: true},
	    {field: 'url', title: 'URL', editable: false, sortable: false, width: '', align: 'center', search: true},
	    {field: 'menu', title: 'Menu', sortable: false, width: '', align: 'center', search: false, 
	       		rowStyler: function(rowData, rowIndex) {
	       			return menu(rowData, rowIndex);
	       		}
	       	}
	    ]
	});

	datagrid.run();

	function menu(rowData, rowIndex) {
		var menu = '<a href="javascript:;" onclick="main_routes(\'view\', ' + rowIndex + ')"> View </a> '
		return menu;
	}

	function view_form(rowIndex) {
		var row = datagrid.getRowData(rowIndex);
		$.post("<?php echo base_url() . 'log/form'; ?>", {index : rowIndex, id : row.id}).done(function(data) {
			$('.form-panel').html(data);
		});
	}



	function main_routes(action, rowIndex) {
		$('.datagrid-panel').fadeOut();
		$('.loading-panel').fadeIn();

		view_form(rowIndex);
		
	}

</script>