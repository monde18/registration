<?php 
$registrant_id = $_GET['id'];
include 'dashboard.php';

?>


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

             

                    <!-- Topbar Search -->
                   
	<div class="card shadow-sm">
					<div class="card-body">
						<h1 class="text-center">Add Payment Form</h1>
						<?php
						// Check if the success parameter is present in the query string and display success message
						if (isset($_GET['success'])) {
							echo '<div class="alert alert-success" role="alert">Thank you for registering! Your information has been saved.</div>';
						}
						?>
						<hr>
						<form method="post" action="register.php">
							<input type="hidden" name="registrant_id" value="<?= $registrant_id ?>" >
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
							<button type="submit" class="btn btn-primary float-right">Submit</button>
							<a class='btn btn-secondary mr-1 float-right' href='tables.php?id=". $id .""'>Back</a>
						</form>
					</div>
				
</script>