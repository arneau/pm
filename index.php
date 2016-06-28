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

		$months = [
			'July',
			'August',
		];

		foreach ($months as $month) {

			?>

			<div class="month">
				<h2 class="name"><? echo $month; ?></h2>
				<div class="days">

					<?

					$days_in_month = date('t', strtotime($month . ' 2016')) * 1;

					for ($date = 1; $date <= $days_in_month; $date++) {

						$day = new DateTime($date . ' ' . $month . ' 2016');

						if ($day->format('w') == 0) {
							echo '<div class="divider"></div>';
						} elseif ($day->format('w') != 6) {
							echo '<div class="day">' . $day->format('d') . ' <small>(' . $day->format('D') . ')</small></div>';
						}

					}

					?>

				</div>
			</div>

			<?

		}

		?>

	</div>
</div>
</body>
</html>