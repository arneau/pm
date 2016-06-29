<?

$hours_per_day = 6;
$months_to_display = [
	'July',
	'August',
];

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<link href="styles.css" media="all" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body>
<div class="project">
	<div class="timeline">

		<?

		foreach ($months_to_display as $month) {

			echo <<<s
		<div class="month">
			<h6 class="name">{$month}</h6>
			<div class="days">
s;

			$days_in_month = date('t', strtotime($month . ' 2016')) * 1;

			for ($date = 1; $date <= $days_in_month; $date ++) {

				$day_object = new DateTime($date . ' ' . $month . ' 2016');

				if (!in_array($day_object->format('w'), [
					0,
					6,
				])
				) {

					$day_name = strtolower($day_object->format('l'));

					echo <<<s
					<div class="day {$day_name}">
						<h6 class="name">
							{$day_object->format('d')}
							<span>({$day_object->format('D')})</span>
						</h6>
						<div class="hours">
							<div class="hour"></div>
							<div class="hour"></div>
							<div class="hour"></div>
							<div class="hour"></div>
							<div class="hour"></div>
							<div class="hour"></div>
						</div>
					</div>
s;
				}

			}

			echo <<<s
			</div>
		</div>
s;

		}

		?>

	</div>
	<div class="developer">
		<h2 class="name">Niko</h2>
		<div class="tasks">
			<div class="task red" style="width: 80px;">Task #1</div>
			<div class="task dark_blue" style="width: 80px;">Task #2</div>
			<div class="task dark_green" style="width: 80px;">Task #3</div>
		</div>
	</div>
</div>
</body>
</html>