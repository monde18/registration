<?php 
include 'dashboard.php';
 ?>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Registrant's Owner Information</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Business Type</th>
                                            <th>Location</th>
                                            <th>Monthly Rentals</th>
                                            <th>Remarks</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                          <?php
    // Connect to the database
    $host = 'localhost'; // Replace with your database host
    $username = 'root'; // Replace with your database username
    $password = ''; // Replace with your database password
    $dbname = 'registration'; // Replace with your database name
    $conn = new mysqli($host, $username, $password, $dbname);
    if ($conn->connect_error) {
        die('Connection failed: ' . $conn->connect_error);
    }

    // Get all the registered registrants
   $stmt = $conn->prepare("SELECT id, first_name, last_name, business_type, location, monthly_rentals, remarks FROM registrants");
$stmt->execute();
$stmt->bind_result($id, $first_name, $last_name, $business_type,  $location, $monthly_rentals, $remarks);
$counter = 1;
while ($stmt->fetch()) {
  echo "<tr>";
  echo "<td>$counter</td>";
  echo "<td>" . ucwords($first_name) . "</td>";
  echo "<td>" . ucwords($last_name) . "</td>";
  echo "<td>$business_type</td>";
  echo "<td>$location</td>";
  echo "<td>$monthly_rentals</td>";
  echo "<td>$remarks</td>";

  echo "<td>";
  echo "
  <div class='d-flex justify-content-center'>
  <a class='btn btn-secondary mr-1' href='add_payment.php?id=". $id ."'>Add payment</a>
  <button class='btn btn-primary edit-btn mr-1' data-id='" . $id . "' data-toggle='modal' data-target='#editModal'><i class='fas fa-edit'></i></button> ";
  echo "<button class='btn btn-danger delete-btn' data-id='" . $id . "' data-toggle='modal' data-target='#deleteModal'><i class='fas fa-trash-alt'></i></button>
  </div>
  ";
  echo "</td>";
  echo "</tr>";
  $counter++;
}

    // Close the database connection
    $stmt->close();
    $conn->close();
    ?>
                                    </tbody>
                                    
                <!-- /.container-fluid -->

            </div>
         

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

<!-- Edit Modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Edit Registrant</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="update_registrant.php" method="post">
          <input type="hidden" name="id" id="edit_id">
          <div class="form-group">
            <label for="edit_first_name">First Name</label>
            <input type="text" class="form-control" id="edit_first_name" name="first_name">
          </div>
          <div class="form-group">
            <label for="edit_last_name">Last Name</label>
            <input type="text" class="form-control" id="edit_last_name" name="last_name">
          </div>
          <div class="form-group">
  <label for="business-type">Business Type</label>
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
  </select>
</div> 

          <div class="form-group">
            <label for="edit_location">Location</label>
            <input type="text" class="form-control" id="edit_location" name="location">
          </div>
          <div class="form-group">
            <label for="edit_monthly_rentals">Monthly Rentals</label>
            <input type="text" class="form-control" id="edit_monthly_rentals" name="monthly_rentals">
          </div>
          <div class="form-group">
            <label for="edit_remarks">Remarks</label>
            <input type="text" class="form-control" id="edit_remarks" name="remarks">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


<script>
  $(document).ready(function() {
    $('.edit-btn').on('click', function() {
      $('#edit_id').val($(this).data('id'));
      $('#edit_first_name').val($(this).closest('tr').find('td:eq(1)').text());
      $('#edit_last_name').val($(this).closest('tr').find('td:eq(2)').text());
      $('#edit_business_type').val($(this).closest('tr').find('td:eq(3)').text());
      $('#edit_location').val($(this).closest('tr').find('td:eq(4)').text());
      $('#edit_monthly_rentals').val($(this).closest('tr').find('td:eq(5)').text());
      $('#edit_remarks').val($(this).closest('tr').find('td:eq(6)').text());
    });
  });
</script>




</html>