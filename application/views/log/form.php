<div class="content">
	<div class="panel">
		<div class="content-header no-mg-top">
			<i class="fa fa-building"></i>
			<div class="content-header-title"><?=$title?></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="content-box">
					<p>Log Activity:</p>            
					  <table class="table table-striped">
					    <thead>
					      <tr>
					        <th>IP</th>
					        <th>Date</th>
					        <th>Activity</th>
					        <th>Email</th>
					        <th>Note</th>
					        <th>Access</th>
					        <th>URL</th>
					      </tr>
					    </thead>
					    <tbody>

					    <?php 

					    $query_log = $this->db->query("SELECT * FROM log WHERE id = '$id'")->row();

					    ?>
					      <tr>
					        <td><?=$query_log->IP?></td>
					        <td><?=$query_log->waktu?></td>
					        <td><?=$query_log->aktifitas?></td>
					        <td><?=$query_log->email?></td>
					        <td><?=$query_log->note?></td>
					        <td><?=$query_log->akses?></td>
					        <td><?=$query_log->url?></td>
					      </tr>
					    </tbody>
					  </table>
					</div>
					<div class="content-box">
					  <p>Log Data:</p>            
					  <table class="table table-striped">
					    <thead>
					      <tr>
					        <th>Table</th>
					        <th>ID</th>
					        <th>Field</th>
					        <th>Before</th>
					        <th>After</th>
					        <th>Now</th>
					      </tr>
					    </thead>
					    <tbody>

					    <?php 

					    $checking = $this->db->query("SELECT * FROM log_change WHERE log_id = '$id'")->num_rows();
					    if($checking > 0){
					    $query_log_change = $this->db->query("SELECT * FROM log_change WHERE log_id = '$id'")->row();
					    $data_after = json_decode($query_log_change->data, TRUE);


					    $query_log_change_before = $this->db->query("SELECT * FROM log_change WHERE record_id = '$query_log_change->record_id' AND log_id < '$query_log_change->log_id' ORDER BY id DESC LIMIT 1");

					    if($query_log_change_before->num_rows() > 0){
					    	$data_before = json_decode($query_log_change_before->row()->data, TRUE);
						}

					    ?>

					      <tr>
					        <td><?=$query_log_change->table?></td>
					        <td><?=$query_log_change->record_id?></td>
					        <td>
					        	<?php
					        	foreach ($data_after as $key => $value) {
					        		echo $key;
					        		echo "<br>";
					        	}
					        	?>
					        </td>
					        <td>
					        	<?php
					        	if(!empty($data_before)){
					        		if($query_log->aktifitas == 'Delete')
					        		{
					        			foreach ($data_before as $key => $value) {
							        		echo $key;
							        		echo " : ";
							        		echo $value;
							        		echo "<br>";
							        	}
					        		}else
					        		{
					        			foreach ($data_before as $key => $value) {
							        		echo $value;
							        		echo "<br>";
							        	}
					        		}
					        	
					        	}else{
					        				echo " - ";
							        		echo "<br>";
					        	}
					        	?>
					        </td>
					        <td>
					        	<?php
					        	foreach ($data_after as $key => $value) {
					        		echo $value;
					        		echo "<br>";
					        	}
					        	?>
					        </td>
					        <td>
					        	<?php
					        	foreach ($data_after as $key => $value) {
					        		echo get_field($query_log_change->record_id,$query_log_change->table,$key);
					        		echo "<br>";
					        	}
					        	?>
					        </td>
					      </tr>

					  <?php }else{ ?>
					  		<tr><td colspan="6" class="text-center">No Record Found</td></tr>
					  <?php } ?> 
					    </tbody>
					  </table>
					<div class="content-box-footer">
						<button type="button" class="btn btn-warning action" title="cancel" onclick="cancel()">Closed</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">

	var onLoad = (function() {
		$('.loading-panel').hide();
		$('.form-panel').show();
	})();


	function cancel() {
		$('.datagrid-panel').fadeIn();
		$('.form-panel').fadeOut();
	}

</script>