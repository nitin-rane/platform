# Matillion
Matillion turns on and off at a schedule MO-FR 06am to 5pm (UTC) (see `CronStartSchedule` and `CronStopSchedule` in `matillion.yml`). To turn it on and off outside this schedule, simply invoke manually the
StartEC2Instances lambda and the StopEC2Instances lambda.

Running the StartEC2Instances lambda when the Matillion instance is up will have no effect.
Running the StopEC2Instances lambda when the Matillion instance is not up will have no effect.

Pushing an update to the `matillion.yml` file in this repo will trigger a task in `.gitlab-ci.yml' to replace the stack (and will also turn on the Matillion EC2 instance while doing so).
If the instance is not meant to be up, invoke manually the StopEC2Instances lambda to turn it off.