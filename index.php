<?

require 'vendor/autoload.php';
require 'generated-conf/config.php';

//$task = new Task();
//$task->setColour('red')
//	->setDescription('Do something')
//	->setDeveloper('Niko')
//	->setHoursEstimated(4)
//	->setPriority(1)
//	->save();

$hours_width = 30;
$hours_gutter = 2;
$hours_per_day = 6;

$months_to_display = [
	'July',
	'August',
];

$tasks = TaskQuery::create()
	->filterByDeveloper('Niko')
	->orderByPriority()
	->find()
	->toArray();
$developers_tasks = [
	'Niko' => $tasks
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
		<div class="months">

			<?

			foreach ($months_to_display as $month) {

				echo <<<s
			<div class="month">
				<h6 class="name">{$month}</h6>
				<div class="days">
s;

				$days_in_month = date('t', strtotime($month . ' 2016')) * 1;

				for ($date = 1; $date <= $days_in_month; $date++) {

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
s;

						echo str_repeat('<div class="hour"></div>', $hours_per_day);

						echo <<<s
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
		<div class="developers">

			<?

			foreach ($developers_tasks as $developer_name => $developer_tasks) {

				echo <<<s
			<div class="developer">
				<h2 class="name">{$developer_name}</h2>
				<div class="tasks">
s;

				foreach ($developer_tasks as $developer_task_data) {

					$developer_task_width = $hours_width * $developer_task_data['HoursEstimated'] + $hours_gutter * ($developer_task_data['HoursEstimated'] - 1);

					echo <<<s
					<div class="task {$developer_task_data['Colour']}" style="width: {$developer_task_width}px;" title="{$developer_task_data['Description']}">{$developer_task_data['Description']}</div>
s;

				}

				echo <<<s
				</div>
			</div>
s;

			}

			?>

		</div>
	</div>
</div>
</body>
</html>