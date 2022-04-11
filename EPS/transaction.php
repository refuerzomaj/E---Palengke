<?php
	include 'includes/session.php';

	$id = $_POST['id'];

	$conn = $pdo->open();

	$output = array('list'=>'');

	$stmt = $conn->prepare("SELECT * FROM details LEFT JOIN products ON products.id=details.product_id LEFT JOIN sales ON sales.id=details.sales_id WHERE details.sales_id=:id");
	$stmt->execute(['id'=>$id]);

	$stmt2 = $conn->prepare("SELECT quantity FROM details WHERE details.sales_id=:id");
	$stmt2->execute(['id'=>$id]);
	$total = 0;
	foreach($stmt as $row){
		foreach($stmt2 as $row2){
			$output['transaction'] = $row['pay_id'];
	     	$output['date'] = date('M d, Y', strtotime($row['sales_date']));
		    $subtotal = $row['price']*$row2['quantity'];
		    $total += $subtotal;
		    $output['list'] .= "
			    <tr class='prepend_items'>
				    <td>".$row['name']."</td>
				    <td>&#36; ".number_format($row['price'], 2)."</td>
				    <td>".$row2['quantity']."</td>
				    <td>&#36; ".number_format($subtotal, 2)."</td>
			    </tr>
		    ";
		}
	}
	
	$output['total'] = '<b>&#36; '.number_format($total, 2).'<b>';
	$pdo->close();
	echo json_encode($output);

?>