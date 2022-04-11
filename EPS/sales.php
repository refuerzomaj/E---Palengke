<?php
	include 'includes/session.php';

	if(isset($_GET['pay'])){
		$payid = $_GET['pay'];
		$date = date('Y-m-d');

		$conn = $pdo->open();

		try{
			
			$stmt = $conn->prepare("INSERT INTO sales (user_id, pay_id, sales_date) VALUES (:user_id, :pay_id, :sales_date)");
			$stmt->execute(['user_id'=>$user['id'], 'pay_id'=>$payid, 'sales_date'=>$date]);
			$salesid = $conn->lastInsertId();
			
			try{
				$stmt = $conn->prepare("SELECT * FROM cart LEFT JOIN products ON products.id=cart.product_id WHERE user_id=:user_id");
				$stmt->execute(['user_id'=>$user['id']]);
				
				$stmt2 = $conn->prepare("SELECT quantity FROM cart WHERE user_id=:user_id");
				$stmt2->execute(['user_id'=>$user['id']]);
				$quantity = 0;
				foreach($stmt as $row){
					$prod_id = $row['product_id'];
					$quantity = $row['quantity'];
					foreach($stmt2 as $row2){
						$stmt = $conn->prepare("INSERT INTO details (sales_id, product_id, quantity) VALUES (:sales_id, :product_id, :quantity)");
					    $stmt->execute(['sales_id'=>$salesid, 'product_id'=>$row['product_id'], 'quantity'=>$row2['quantity']]);

						$stmt3 = $conn->prepare("UPDATE products SET quantity=:quantity WHERE id=:id");
			            $stmt3->execute(['quantity'=>$quantity-$row2['quantity'], 'id'=>$prod_id]);
					}
				}

				$stmt = $conn->prepare("DELETE FROM cart WHERE user_id=:user_id");
				$stmt->execute(['user_id'=>$user['id']]);

				$_SESSION['success'] = 'Transaction successful. Thank you.';

			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}

		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	}
	
	header('location: profile.php');
	
?>