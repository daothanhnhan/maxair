<?php 
    $count_down1 = $rowConfig['count_down'];
    $count_down1 = strtotime($count_down1);
    $count_down1 = $count_down1 * 1000;
?>
<link href="css/timeTo.css" type="text/css" rel="stylesheet"/>

<div>
    
    <span id="date-str"></span>

    <div id="countdown-2"></div>
    
    <script src="js/jquery.time-to.js"></script>
    <script>
       
        

        var date = getRelativeDate(2);

     $('#countdown-2').timeTo(date);


        function getRelativeDate(days, hours, minutes) {
            // var d = new Date(Date.now() + 60000 /* milisec */ * 60 /* minutes */ * 24 /* hours */ * days /* days */);
            var d = new Date(<?= $count_down1 ?>);

            d.setHours(hours || 0);
            d.setMinutes(minutes || 0);
            d.setSeconds(0);

            return d;
        }
    </script>
</div>