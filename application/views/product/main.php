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
		url						: "<?php echo base_url() . 'product/data'; ?>",
		primaryField			: 'id', 
		sortBy					: 'id',
		orderBy					: 'ASC',
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
		{field: 'nama_produk', title: '<?=$this->lang->line('nama')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'sku', title: '<?=$this->lang->line('title_sku')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'code', title: '<?=$this->lang->line('title_kode')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'berat', title: '<?=$this->lang->line('title_berat')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'kategori_id', title: '<?=$this->lang->line('title_kategori')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'subkategori_id', title: '<?=$this->lang->line('title_subkategori')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'brand_id', title: '<?=$this->lang->line('title_brand')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'kategori_brand', title: '<?=$this->lang->line('title_kategori_brand')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'tags', title: '<?=$this->lang->line('title_tag')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'deskripsi', title: '<?=$this->lang->line('title_deskripsi')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'harga', title: '<?=$this->lang->line('title_harga')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'stok', title: '<?=$this->lang->line('title_stok')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'images', title: '<?=$this->lang->line('title_foto_produk')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'images_detail', title: '<?=$this->lang->line('title_detail_foto')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'harga_promo', title: '<?=$this->lang->line('title_harga_promo')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'link_wa', title: '<?=$this->lang->line('title_link_Wa')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'official_brand_id', title: '<?=$this->lang->line('title_official_brand')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'bestseller_id', title: '<?=$this->lang->line('title_bestseller')?>', editable: true, sortable: false, width: '', align: 'center', search: true},
		{field: 'menu', title: '<?=$this->lang->line('aksi')?>', sortable: false, width: 100, align: 'center', search: false, 
		rowStyler: function(rowData, rowIndex) {
			return menu(rowData, rowIndex)
		}
	}
	]
})

	datagrid.run()

	function menu(rowData, rowIndex) {
		var menu = '<a href="javascript:;" onclick="main_routes(\'update\', ' + rowIndex + ')"> Detil </a> '
		return menu
	}

	function create_update_form(rowIndex) {
		$.post("<?php echo base_url() . 'product/form'; ?>", {index : rowIndex}).done(function(data) {
			$('.form-panel').html(data)
		})
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
			var row = datagrid.getRowData(rowIndex)
			$.post("<?php echo base_url() . 'product/delete'; ?>", {id : row.id}).done(function(data) {
				$('.loading-panel').hide();
				$('.form-panel').hide();
				$('.datagrid-panel').fadeIn();
				datagrid.reload();
			})
		})
	}

	function main_routes(action, rowIndex) {
		$('.datagrid-panel').fadeOut()
		$('.loading-panel').fadeIn()

		if (action == 'create') {
			create_update_form(rowIndex)
		} else if (action == 'update') {
			create_update_form(rowIndex)
		}
	}
</script>