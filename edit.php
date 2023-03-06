<!-- Edit Modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Edit Record</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="edit.php" method="post">
        <div class="modal-body">
            <input type="hidden" name="id" id="edit-id">
            <div class="form-group">
                <label for="edit-first-name">First Name</label>
                <input type="text" class="form-control" name="first-name" id="edit-first-name" required>
            </div>
            <div class="form-group">
                <label for="edit-last-name">Last Name</label>
                <input type="text" class="form-control" name="last-name" id="edit-last-name" required>
            </div>
            <div class="form-group">
                <label for="edit-business-type">Business Type</label>
                <input type="text" class="form-control" name="business-type" id="edit-business-type" required>
            </div>
            <div class="form-group">
                <label for="edit-actual-occupant">Actual Occupant</label>
                <input type="text" class="form-control" name="actual-occupant" id="edit-actual-occupant" required>
            </div>
            <div class="form-group">
                <label for="edit-location">Location</label>
                <input type="text" class="form-control" name="location" id="edit-location" required>
            </div>
            <div class="form-group">
                <label for="edit-monthly-rentals">Monthly Rentals</label>
                <input type="text" class="form-control" name="monthly-rentals" id="edit-monthly-rentals" required>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Save Changes</button>
        </div>
      </form>
    </div>
  </div>
</div>
