<div class="container">
  <br>
  <center><h1>Inner Join</h1></center>
        <div class="row">
          <div class="col-12 mt-5">
            <table class="table table-bordered">
              <tr>
                  <th>No</th>
                  <th>Kode Kereta</th>
                  <th>Nama Kereta</th>
                  <th>Kode Gerbong</th>
                  <th>Nama Gerbong</th>
                  <th>Kode Kursi</th>
              </tr>
              <?php
              $no = 1;
              foreach($lokomotif as $m) {?>
              <tr>
                <td><?php echo $no++ ?></td>
                <td><?php echo $m->kd_kereta ?></td>
                <td><?php echo $m->nama_kereta ?></td>
                <td><?php echo $m->kd_gerbong ?></td>
                <td><?php echo $m->nama_gerbong ?></td>
                <td><?php echo $m->kd_kursi ?></td>
              </tr>
            <?php } ?>
            </table>
          </div>
        </div>
      </div>
