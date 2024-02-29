<style>
	table{
		 border-collapse: collapse;
		 margin: auto;
		 margin-top:50px;
	}
</style>

<table border="1" width="500">
  <thead>
   <tr>
	<th colspan="3">SUMMARY PER YEAR UPLOADS</th>
  </tr>
  <tr>
	<th width="10%">#</th>
	<th width="20%">YEAR</th>
	<th width="20%">TOTAL</th>
  </tr>
  </thead>
  <tbody>
	  <?php
		include "includes/conn.php";
		$sql = "SELECT COUNT(*) AS total,date_format(PUBLISHED_YEAR,'%Y') AS YEAR FROM tbl_storage GROUP BY date_format(PUBLISHED_YEAR,'%Y') ORDER BY YEAR DESC";
		$cnt=1;
		$query = $conn->query($sql);
		while($row = $query->fetch_assoc()){
	  ?>
		<tr>
		  <td><?=$cnt++;?></td>
		  <td><?=$row['YEAR'];?></td>
		 <td><?=$row['total'];?></td>
		</tr>
	  <?php
				
	}
  ?>
  </tbody>
</table>