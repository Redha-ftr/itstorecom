<div class="auth-wrapper">
    <form id="form-signin">
        <div class="auth-header">
            <div class="auth-title">Notaris</div>
            <div class="auth-subtitle">Management Information System</div>
            <div class="auth-label">Forgot Password</div>
        </div>
        <div class="auth-body">
            <div class="auth-content">
                <div class="form-group">
                    <label for="">Email</label>
                    <input class="form-control" placeholder="Enter email" name="email" type="text" value="">
                </div>
                <div class="validation-message" data-field="email"></div>
            </div>
            <div class="auth-footer">
                <button class="btn btn-primary" id="forgot-password-in" type="button">Reset Password </button>
                <div class="pull-right auth-link">
                    <div class="devider"></div>
                    <a href="<?=base_url()?>auth/login">Login</a>
                </div>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
	$('#forgot-password-in').on("click", function() {
		forgot_password();
	});
	$("#form-signin").keypress(function(event) {
		if (event.which == 13) {
			forgot_password();
		}
	});

	function forgot_password() {
		$('#forgot-password-in').html("Authenticating...").attr('disabled', true);
		var data = $('#form-signin').serialize();
		$.post("<?php echo base_url() . 'auth/forgot_attempt'; ?>", data).done(function(data) {
			if (data.status == "success") {

                $('#forgot-password-in').html("Send Password Reset Link").attr('disabled', false);

                
                swal({   
                        title: "Success",
                        text: "Your password successfully send",
                        type: "success"
                    })

			} else {
				$('#forgot-password-in').html("Send Password Reset Link").attr('disabled', false);
				$('.validation-message').html('');
				$('.validation-message').each(function() {
					for (var key in data) {
						if ($(this).attr('data-field') == key) {
							$(this).html(data[key]);
						}
					}
				});
			}
		});
	}
</script>