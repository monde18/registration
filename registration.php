<?php
include 'dashboard.php';
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Registration Form</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="table.css">

</head>
<body>

<header>
</header>

<main>

		    <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
		<div class="card shadow-sm">
					<div class="card-body">

						<h1 class="text-center mb-4">Registration Form</h1>
						<?php
						// Check if the success parameter is present in the query string and display success message
						if (isset($_GET['success'])) {
							echo '<div class="alert alert-success" role="alert">Thank you for registering! Your information has been saved.</div>';
						}
						?>
						<hr>
						<form method="post" action="register.php">
							<div class="form-group">
								<label for="first-name">First Name</label>
								<input type="text" class="form-control text-capitalize" id="first-name" name="first-name" required>
							</div>
							<div class="form-group">
								<label for="last-name">Last Name</label>
								<input type="text" class="form-control text-capitalize" id="last-name" name="last-name" required>
							</div>
							<div class="form-group">
								<label for="business-type">Type of Business</label>
								<select class="form-control" id="business-type" name="business-type" required>
									<option value="">Please select</option>
									<option>Dry Goods</option>
									<option>Refreshment</option>
									<option>Restaurant</option>
									<option>Grocery</option>
									<option>Fruits & Vegetable</option>
									<option>Meat Stall</option>
									<option>Fish Stall</option>
									<option>Food House</option>
									<option>Salon</option>
									<option>Service</option>
									<option>Variety Store</option>
									<option>Enterprises</option>
									<option>Poultry & Farm Supply</option>
									<option>Plastic Ware and Rice Retailer</option>
									<option>Service Computer Shop</option>
									<option>Chicken Joy</option>
									<option>Sari-Sari</option>
									<option>Drug Store</option>
									<option>Pansiteria</option>
									<option>Tailoring</option>
									<option>Food Product</option>
									<option>Remitance</option>
									<option>SSS/Fruit and Vegetable</option>
								</select>
							</div>
							<div class="form-group">
								<label for="actual-occupant">Actual Occupant</label>
								<input type="text" class="form-control" id="actual-occupant" name="actual-occupant">
							</div>
							<div class="form-group">
								<label for="location">Location</label>
								<select class="form-control" id="location" name="location" required>
								<option>Please select</option>
								<option>Poblacion</option>
								<option>San Jose</option>
								<option>Tallang</option>
								</select>
							</div>
							<div class="form-group">
								<label for="stall-occupant">Stall Occupant</label>
								<input type="text" class="form-control" id="stall-occupant" name="stall-occupant">
							</div>
							<div class="form-group">
								<label for="stall-rental">Stall Rental</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<div class="input-group-text">₱</div>
									</div>
									<input type="number" class="form-control" id="stall-rental" name="stall-rental" step=".01">
								</div>
							</div>
							<div class="form-group">
								<label for="lot-rental">Lot Rental</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<div class="input-group-text">₱</div>
									</div>
									<input type="number" class="form-control" id="lot-rental" name="lot-rental" step=".01">
								</div>
							</div>
							<div class="form-group">
								<label for="slaughter-fee">Slaughter Fee</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<div class="input-group-text">₱</div>
									</div>
									<input type="number" class="form-control" id="slaughter-fee" name="slaughter-fee" step=".01">
								</div>
							</div>
							<div class="form-group">
								<label for="electric-bill">Electric Bill</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<div class="input-group-text">₱</div>
									</div>
									<input type="number" class="form-control" id="electric-bill" name="electric-bill" step=".01">
								</div>
							</div>
							<div class="form-group">
								<label for="water-bill">Water Bill:</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<div class="input-group-text">₱</div>
									</div>
									<input type="number" name="water-bill" id="water-bill" class="form-control" step=".01">
								</div>
							</div>
							<div class="form-group">
								<label for="month">Month</label>
								<input type="month" class="form-control" id="month" name="month">
							</div>
							<div class="form-group">
								<label for="monthly-rentals">Monthly Rentals</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<div class="input-group-text">₱</div>
									</div>
									<input type="number" class="form-control" id="monthly-rentals" name="monthly-rentals" step=".01" required>
								</div>
							</div>
							<div class="form-group">
								<label for="remarks">Remarks</label>
								<textarea class="form-control" id="remarks" name="remarks"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				
	</main>
	</body>
	</html>

</script>