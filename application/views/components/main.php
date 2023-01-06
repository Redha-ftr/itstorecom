<?php $this->load->view('components/head'); ?>
<?php $this->load->language('siakad', $this->session->userdata('language')); ?>

<div class="top-nav">
	<div class="top-nav-box">
		<div class="side-nav-mobile"><i class="fa fa-bars"></i></div>
		<div class="logo-wrapper">
			<div class="logo-box">
				<a href="<?php echo base_url(); ?>">
					<div class="logo-title"><?=$this->lang->line('title_apps')?></div>
				</a>
			</div>
		</div>
		<div class="top-nav-content">
			<div class="top-nav-box">

				<div class="quick-link">

</div>





				<div class="user-top-profile">
							


								
							


					<div class="user-image">
						<div class="user-on"></div>
						<img alt="pongo" style="width: 40px;height: 40px;" src="<?php echo base_url().'foto/'.$picture_users; ?>">
					</div>
					<div class="clear">
						<div class="user-name"><?php echo $active_user->name; ?></div>
						<div class="user-group"><?php echo $active_user_group->group_name; ?></div>
						<ul class="user-top-menu animated bounceInUp">
							<li><a href="<?php echo base_url() . 'change_picture'; ?>">Change Picture</a></li>
							<li><a href="<?php echo base_url() . 'change_password'; ?>">Change Password</a></li>
							<li><a href="<?php echo base_url() . 'auth/logout'; ?>">Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="profile-nav-mobile"><i class="fa fa-cog"></i></div>
	</div>
</div>
<div class="wrapper <?php echo $menu_style != 'default' ? $menu_style : ''; ?>">
	<aside class="side-nav">
		

		<div class="main-menu">
			<ul>
				<li style="text-align:center;">
					<a href="<?php echo base_url(); ?>">
						<img alt="pongo" style="width: 100px;height: auto;" src="<?=base_url()?>assets/images/logo_yayasan.png">
					</a>
				</li>
				<li class="<?php echo $active_menu == 0 ? 'active' : ''; ?>">
					<a href="<?php echo base_url(); ?>">
						<i class="fa fa-bars"></i> 
						<span>Dashboard</span>
					</a>
				</li>
				<?php foreach ($list_menu as $key => $menu) { ?>
	                <?php if ($menu->id < 60) { ?>
	                    <!-- Print parent menu -->
	                    <?php if ($menu->parent_id == 0 && $menu->is_have_child != 0) { ?>
				            <li class="<?php echo $active_menu == $menu->id && $menu_style != 'compact-nav' ? 'active' : ''; ?>">
					            <a href="">
						            <i class="<?php echo $menu->icon; ?>"></i> 
						            <span><?php echo $this->lang->line($menu->menu_lang); ?></span>
					            </a>
					            <ul>
						            <!-- Print submenu -->
	            		            <?php foreach ($list_menu as $submenu) { ?>
	                		            <?php if ($submenu->parent_id == $menu->id) { ?>
	                    		            <li><a href="<?php echo base_url() . $submenu->link; ?>">
	                    		            <?php echo $this->lang->line($submenu->menu_lang); ?></a></li>
	                		            <?php } ?>
	            		            <?php } ?>
					            </ul>
				            </li>
	                    <?php } elseif ($menu->parent_id == 0 && $menu->is_have_child == 0) { ?>
	                        <li class="<?php echo $active_menu == $menu->id ? 'active' : ''; ?>">
					            <a href="<?php echo base_url() . $menu->link; ?>">
						            <i class="<?php echo $menu->icon; ?>"></i> 
						            <span><?php echo $this->lang->line($menu->menu_lang); ?></span>
					            </a>
				            </li>
                        <?php } ?>
                    <?php } ?>
	            <?php } ?>
			</ul>
		</div>


		<div class="side-banner">
			<div class="banner-content">
				<div class="title">SIAKAD <div class="version">v1.1</div></div>
				<div class="subtitle"><?=$this->lang->line('title_apps')?></div>
				<div class="subtitle"><a href="<?=base_url()?>language/update/1" style="color: #ffffff;">English</a> | <a href="<?=base_url()?>language/update/2" style="color: #ffffff;">Indonesia</a></div>
			</div>
		</div>
	</aside>
	<div class="main">




		<?php $this->load->view($subview); ?>		
	</div>
</div>

<script type="text/javascript">
	function setup_tahun_aktif(tahun_id) {

	url = "<?=base_url()?>setup_tahun/update";
	$.ajax({
		type: "POST",
		url: url,
		data: {
			tahun_id: tahun_id,
		},
		success: function(data) {

		location.reload();
		}
	});
}
</script>


<?php $this->load->view('components/foot'); ?>

