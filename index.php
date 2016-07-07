<?

require 'vendor/autoload.php';
require 'generated-conf/config.php';

$hours_width = 30;
$hours_gutter = 2;
$hours_per_day = 6;

$months_to_display = [
	'July',
	'August',
	'September',
];

$tasks_datas = TaskQuery::create()
	->orderByPriority()
	->find()
	->toArray();
foreach ($tasks_datas as $task_data) {
	$developers_tasks[$task_data['Developer']][] = $task_data;
}
$developers_tasks = [
	'Niko' => $developers_tasks['Niko'],
	'Arneau' => $developers_tasks['Arneau'],
	'Julien' => $developers_tasks['Julien'],
	'Alexis' => $developers_tasks['Alexis'],
]

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<link href="reset.css" media="all" rel="stylesheet" type="text/css" />
	<link href="styles.css" media="all" rel="stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body>
<div class="project">
	<div class="timeline">
		<div class="days">

			<?

			$start_date = new DateTime('2016-07-04');
			$end_date = new DateTime('2016-09-30');
			$dates_objects = new DatePeriod($start_date, new DateInterval('P1D'), $end_date);

			foreach ($dates_objects as $date_object) {

				if (!in_array($date_object->format('w'), [
					0,
					6,
				])
				) {

					$day_name = strtolower($date_object->format('l'));

					echo <<<s
					<div class="day {$day_name}">
						<h6 class="name">
							{$date_object->format('F d')}
							<span>({$date_object->format('D')})</span>
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

					if ($developer_task_data['HoursEstimated'] >= $developer_task_data['HoursSpent']) {
						$developer_task_width = $hours_width * $developer_task_data['HoursEstimated'] + $hours_gutter * ($developer_task_data['HoursEstimated'] - 1);
					} else {
						$developer_task_width = $hours_width * $developer_task_data['HoursSpent'] + $hours_gutter * ($developer_task_data['HoursSpent'] - 1);
					}

					echo <<<s
					<div class="task {$developer_task_data['Colour']}" data-hours-estimated="{$developer_task_data['HoursEstimated']}" data-hours-spent="{$developer_task_data['HoursSpent']}" style="width: {$developer_task_width}px;" title="{$developer_task_data['Description']}">{$developer_task_data['Description']}</div>
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