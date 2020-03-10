# Test

## 01. Access Log Analytics
Running Environment:
  - Linux(Ubuntu prefered)

Prerequisite:
  - curl
  - jq

Instruction:
  1. download the log file from `ftp://ita.ee.lbl.gov/traces/NASA_access_log_Aug95.gz`
  2. unzip the downloaded file and put it into `question1` folder
  3. cd into `question1` folder
  4. To count the total number of HTTP request, run

```bash
  ./total_num_of_request.sh
```

  5. To find the top-10 host from 18th Aug to 20th Aug, run
```bash
  ./top-10-hosts.sh
```

  6. To find the country with most requests, run
```bash
  ./country.sh <filename>
```

## 02. RDBMS
Running Environment:
   - MySQL

Instructions:
  1. The answers to this question are inside `question2` folder
  2. To test the SQL, a MySQL/ MariaDB is required. The schema for table `articles` and `clickstream` is in `table_schema.sql`


## Q3. Simple (but hard) counter
Running Environment:
  - MySQL
  - Python 3.7

Prerequisite:
  - docker
  -

Instructions:
  1. The answers to this question are inside `question3` folder. To create your own backend environment, cd into `backend` folder and run the following command

```bash
  docker-compose up
```
  2. After the docker environment is set up, you have to manually login to mysql(`user=user password=password database=hk01`) to set up database schema. For schema and seed data you can find it inside the `question3/backend/migrate/data.sql`.

  3. To open the frontend and vote, you have to open `index.html` inside the `frontend` folder. To vote for your favorite candidate, you have to click the radio button in front of the name of candidate and click `submit` button.

  4. To see the instantaneous results and the results in the last 10 minutes, you have to open `chart.html` inside the `frontend` folder.

Route:
  - `GET` `/vote` To get number of vote of each candidate
  - `POST` `/vote` To vote for a candidate

Improvement:
  1. To test if a system can handle traffic spikes, I would recommend use the service of [load impact](https://loadimpact.com) (or called `k6`) for performance testing. It can simulate a big spike access to our system.
  2. For CI/CD tool, I would choose [Jenkins](https://jenkins.io) to deploy our applications accross all hosting machines. It can also use with `k6` to monitor the performance of the system by scheduling a regular load stress test.
  3. To solve bottleneck of database, I would recommend using the database solution of `AWS` like `DynamoDB` or `Redshift`.
  4. To count number of vote of each kiosk, frontend should also pass its `kiosk_id` to backend for storage. In the application setup, I have taken consideration of this future change.
  5. To fully utilize the power of AWS backend service, I would recommend to use a serverless infrastructure which may include `Lambda`, `Api Gateway` to handle access spike.