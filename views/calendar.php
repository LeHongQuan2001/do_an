
<div class="box box-primary">
  <div class="box-body no-padding">
    <!-- THE CALENDAR -->
    <div style="width:100%;" id="calendar"></div>
  </div>
</div>
<style>
.fc-disabled {
    background-color: #F0F0F0 !important;
    color: #000;
    cursor: default;
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:10px;
}
</style>
<script language="javascript">
$(function () {
	$('#calendar').fullCalendar({
		header: {
        	left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
		},
        buttonText: {
            today: 'today',
            month: 'month',
            week: 'week',
            day: 'day'
        },
        events: function(start, end, timezone, callback) {
			$.ajax({
				url	: '<?php echo WEB_ROOT; ?>api/process.php?cmd=calview',
				dataType: 'json',
				type	: 'POST',
				data	: {
					start	: start.format(),
					end		: end.format()
				},
				success: function(doc) {
					var events = [];

					console.log('Event ###');
					
					callback(doc);
				}
			})
			;
		},
        editable: false,
        droppable: true, 
        drop: function (date, allDay) { },
		eventClick: function(calEvent, jsEvent, view) {
		},
		dayRender: function(date, cell){
			 $(cell).css('opacity', 1);
		},
		viewRender: function(view, element) {},
		eventRender: function(ev, element, view) {
		},
		eventAfterRender : function(ev, element, view) {
			if(ev.block == true) {
				var start = ev.start.format();
				$("td.fc-day[data-date='"+ start +"']").addClass('fc-disabled');
			}
		},
		eventMouseover: function(calEvent, jsEvent) {
			var tooltip = '<div class="tooltipevent" style="width:100px;height:100px;background:#ccc;position:absolute;z-index:10001;">' + calEvent.title + '</div>';
			var $tootlip = $(tooltip).appendTo('body');
		
			$(this).mouseover(function(e) {
				$(this).css('z-index', 10000);
				$tooltip.fadeIn('500');
				$tooltip.fadeTo('10', 1.9);
			}).mousemove(function(e) {
				$tooltip.css('top', e.pageY + 10);
				$tooltip.css('left', e.pageX + 20);
			});
		},
		eventMouseout: function(calEvent, jsEvent) {
			$(this).css('z-index', 8);
			$('.tooltipevent').remove();
		}
	});
});
</script>