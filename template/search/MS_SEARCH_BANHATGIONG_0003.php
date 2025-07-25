<link rel="stylesheet" href="./plugin/jquery-ui/jquery-ui.min.css">
<div class="gb-filter-price">
    <h3>Filter By Price</h3>
    <div class="gb-divider"></div>
    <div id="slider-range"></div>
    <div class="label-filter-price"><input type="text" id="amount" readonly></div>
    <button class="btn-filter-prince">SEARCH</button>

    <div class="clearfix"></div>
</div>
<script src="./plugin/jquery-ui/jquery-ui.min.js"></script>
<script>
    $(document).ready(function () {
        $( function() {
            $( "#slider-range" ).slider({
                range: true,
                min: 0,
                max: 1000,
                values: [ 75, 500 ],
                slide: function( event, ui ) {
                    $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
                }
            });
            $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
                " - $" + $( "#slider-range" ).slider( "values", 1 ) );
        } );
    });
</script>