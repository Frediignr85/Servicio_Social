<?php
?>

<?php
echo "<select class='form-control cbx1' id='cbx_dia' name='cbx_Roles'>
        <option value='0'>Día</option>
        <option value='1'>1</option>
        <option value='2'>2</option>
        <option value='3'>3</option>
        <option value='4'>4</option>
        <option value='5'>5</option>
        <option value='6'>6</option>
        <option value='7'>7</option>
        <option value='8'>8</option>
        <option value='9'>9</option>
        <option value='10'>10</option>
        <option value='11'>11</option>
        <option value='12'>12</option>
        <option value='13'>13</option>
        <option value='14'>14</option>
        <option value='15'>15</option>
        <option value='16'>16</option>
        <option value='17'>17</option>
        <option value='18'>18</option>
        <option value='19'>19</option>
        <option value='20'>20</option>
        <option value='21'>21</option>
        <option value='22'>22</option>
        <option value='23'>23</option>
        <option value='24' selected='1'>24</option>
        <option value='25'>25</option>
        <option value='26'>26</option>
        <option value='27'>27</option>
        <option value='28'>28</option>
        <option value='29'>29</option>
        <option value='30'>30</option>
        <option value='31'>31</option>
        </select>"  ;
echo "<select aria-label='Mes' name='birthday_month' id='month' title='Mes' class='_5dba _8esg'>
      <option value='0'>Mes</option>
      <option value='1'>ene</option>
      <option value='2'>feb</option>
      <option value='3'>mar</option>
      <option value='4'>abr</option>
      <option value='5'>may</option>
      <option value='6'>jun</option>
      <option value='7'>jul</option>
      <option value='8'>ago</option>
      <option value='9' selected='1'>sep</option>
      <option value='10'>oct</option>
      <option value='11'>nov</option>
      <option value='12'>dic</option>
</select>";
echo "<select aria-label='año' name='birthday_year' id='year' title='Year' class='_5dba _8esg'>
      <option value='0'>Año</option>
      <option value='1'>2019</option>
      ";
      for ($i=2018; $i > 1900; $i--) {
        echo "<option value='1'>$i</option>";
      }
      echo "
</select>";






 ?>
