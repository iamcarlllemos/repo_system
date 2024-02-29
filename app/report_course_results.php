
<?php
	include "includes/session.php";
function generateRow($conn){
	$contents = '';
	$sql = "SELECT * FROM tbl_storage WHERE COURSE ='".$_GET['COURSE']."' ORDER BY VIEW_COUNTER DESC";
	$query = $conn->query($sql);
	while($row = $query->fetch_assoc()){
		$VIEW_COUNTER=0;
		$VIEW_COUNTER =  htmlentities($row['VIEW_COUNTER']);
		if ($VIEW_COUNTER> 999999) {
		$VIEW_COUNTER = number_format(($VIEW_COUNTER / 1000),1) . ' M';
		}elseif ($VIEW_COUNTER > 999) {
		$VIEW_COUNTER = number_format(($VIEW_COUNTER / 1000),1) . ' K';
		}
		
		$contents .= '
		
		<tr>
		  	<td>'.$row['POST_TITLE'].'</td>
			<td>'.date('Y',strtotime($row['PUBLISHED_YEAR'])).'</td>
			<td>'.$VIEW_COUNTER.'</td>
		  	<td>'.date('Y-m-d',strtotime($row['POSTING_DATE'])).'</td>
		  	<td>'.$row['POSTED_BY'].'</td>
			<td>'.$row['COURSE'].'</td>
		</tr>
	  ';
	  $cnt++;
	}
	return $contents;
}

	require_once('../tcpdf/tcpdf.php');  

  // Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {
  //Page header
  public function Header() {
      // get the current page break margin
      $bMargin = $this->getBreakMargin();
      // get current auto-page-break mode
      $auto_page_break = $this->AutoPageBreak;
      // disable auto-page-break
      $this->SetAutoPageBreak(false, 0);
      // set bacground image
      $img_file = K_PATH_IMAGES.'..';
      $this->Image($img_file, 0, 0, 210, 297, '', '', '', false, 300, '', false, false, 0);
      // restore auto-page-break status
      $this->SetAutoPageBreak($auto_page_break, $bMargin);
      // set the starting point for the page content
      $this->setPageMark();
  }
  public function Footer() {
    // Position at 15 mm from bottom
    $this->SetY(-15);
    // Set font
    $this->SetFont('helvetica', 'I', 8);
    // Page number
    //$this->Cell(0, 10, 'Generated on '.date('l F d, Y').' Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
	
	
}
}

    //$pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
    $pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
    $pdf->SetCreator(PDF_CREATOR);  
    $pdf->SetTitle('LIST OF RECORDS- '.$_GET['COURSE']);  
    $pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);  
    $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
    $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
    $pdf->SetDefaultMonospacedFont('helvetica');  
    $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
    $pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);  
    $pdf->setPrintHeader(FALSE);  
    $pdf->setPrintFooter(TRUE);  
    $pdf->SetAutoPageBreak(TRUE, 10);  
    $pdf->SetFont('helvetica', '', 11);  
    $pdf->AddPage(); 
    $pdf->SetAlpha(0.1);
    $img_file = file_get_contents('../images/CCS.png');
	$pdf->Image('@' . $img_file, 25, 50, 160, '', '', '', '', false, 50, '', false);
	$pdf->SetAlpha(1);
	$content = '';  
    $content .= '
    <table width="100%">
      <tr>
        <td align="left" width="20%">
        <img src="../images/CCS.png" alt="" class="float-left" width="80">
        </td>
          <td align="center" width="60%">
		  <span>REPUBLC OF THE PHILIPPINES</span><br>
          <span>ILOCOS SUR POLYTECHNIC STATE COLLEGE</span><br>
		  <span>COLLEGE OF COMPUTER STUDIES</span><br>
          <span>ILOCOS SUR PHILIPPINES</span>
          <br>
          <br>
          <br>
		  
          </td>
          <td align="right" width="20%">
          <img src="../images/ISPSC.jpg" alt="" class="float-left" width="80">
          </td>
      </tr>
    </table>
	<br>
	<br>
	<br>
	
    <table cellpadding="2" width="100%" border="1" style="border-collapse: collapse">
			<tr>
				<th>TITLE</th>
				<th>PUB YEAR</th>
				<th>VIEWS</th>
				<th>POST DATE</th>
				<th>POST BY</th>
				<th>COURSE</th>
			</tr>

    ';
	$content .= generateRow($conn);  
    $content .= '</table>';  
    $pdf->writeHTML($content); 
	  ob_end_clean();
    $pdf->Output('LIST.pdf', 'I');

?>
