<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<h1 class="page-header">YOUR CART</h1>
	        		<div class="box box-solid">
	        			<div class="box-body">
		        		<table class="table table-bordered">
		        			<thead>
		        				<th></th>
		        				<th>Photo</th>
		        				<th>Name</th>
		        				<th>Price</th>
		        				<th width="20%">Quantity</th>
		        				<th>Subtotal</th>
		        			</thead>
		        			<tbody id="tbody">
		        			</tbody>
		        		</table>
	        			</div>
	        		</div>
					
					<div class="cod_button">
					    <button onclick="getCOD()" class="w3-button w3-green w3-large">Cash on Delivery</button>
					</div>
					
	        		<?php
	        			/*if(isset($_SESSION['user'])){
	        				echo "
	        					<div id='paypal-button'></div>
	        				";
	        			}
	        			else{
	        				echo "
	        					<h4>You need to <a href='login.php'>Login</a> to checkout.</h4>
	        				";
	        			}*/
	        		?>
	        	</div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  	<?php $pdo->close(); ?>
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
<script>
var total = 0;
$(function(){
	$(document).on('click', '.cart_delete', function(e){
		e.preventDefault();
		var id = $(this).data('id');
		$.ajax({
			type: 'POST',
			url: 'cart_delete.php',
			data: {id:id},
			dataType: 'json',
			success: function(response){
				if(!response.error){
					getDetails();
					getCart();
					getTotal();
				}
			}
		});
	});

	$(document).on('click', '.minus', function(e){
		e.preventDefault();
		var id = $(this).data('id');
		var qty = $('#qty_'+id).val();
		if(qty>1){
			qty--;
		}
		$('#qty_'+id).val(qty);
		$.ajax({
			type: 'POST',
			url: 'cart_update.php',
			data: {
				id: id,
				qty: qty,
			},
			dataType: 'json',
			success: function(response){
				if(!response.error){
					getDetails();
					getCart();
					getTotal();
				}
			}
		});
	});

	$(document).on('click', '.add', function(e){
		e.preventDefault();
		var id = $(this).data('id');
		var qty = $('#qty_'+id).val();
		qty++;
		$('#qty_'+id).val(qty);
		$.ajax({
			type: 'POST',
			url: 'cart_update.php',
			data: {
				id: id,
				qty: qty,
			},
			dataType: 'json',
			success: function(response){
				if(!response.error){
					getDetails();
					getCart();
					getTotal();
				}
			}
		});
	});

	getDetails();
	getTotal();

});

function getDetails(){
	$.ajax({
		type: 'POST',
		url: 'cart_details.php',
		dataType: 'json',
		success: function(response){
			$('#tbody').html(response);
			getCart();
		}
	});
}

function getTotal(){
	$.ajax({
		type: 'POST',
		url: 'cart_total.php',
		dataType: 'json',
		success:function(response){
			total = response;
		}
	});
}

function getCOD(){
	$.ajax({
		type: 'POST',
		url: 'cart_cod.php',
		dataType: 'json',
		success: function(response){
			$('#tbody2').html(response);
			getCart();
			document.getElementById('id01').style.display='block';
		}
	});
}
String.prototype.shuffle = function () {
    var a = this.split(""),
        n = a.length;

    for(var i = n - 1; i > 0; i--) {
        var j = Math.floor(Math.random() * (i + 1));
        var tmp = a[i];
        a[i] = a[j];
        a[j] = tmp;
    }
    return a.join("");
}
function confirmBtn() {
	var text = "ASb1ZbVxG5ZFzCWLdYLi_d1k5rmSjvBZhxP2etCxBKXaJHxPba13JJD_D3dTNriRbAv3Kp_72cgDvaZ".shuffle();
	window.location = 'sales.php?pay=PAY-'+text;
}
</script>
<!-- Paypal Express -->
<div class="w3-container">
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
      </div>

      <form class="w3-container" action="/action_page.php">
        <div class="w3-section">
            <table class="table table-bordered">
		    	<thead>
		        	<th>Photo</th>
		        	<th>Name</th>
		        	<th>Price</th>
		        	<th>Quantity</th>
		        	<th colspan='6'>Subtotal</th>
		        </thead>
		        <tbody id="tbody2">
		        </tbody>
		    </table>
		</div>
      </form>
    <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id01').style.display='none'" style="width:49.2%;"  type="button" class="w3-button w3-red">Cancel</button>
		<button id="confirm_btn" onclick="confirmBtn()" class="w3-button w3-block w3-green w3-section w3-padding" style="width:49.2%; display:inline-block;"type="submit">Confirm</button>  
	</div>
</body>
</html>