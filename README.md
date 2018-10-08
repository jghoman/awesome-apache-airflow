[<img src="https://github.com/jghoman/awesome-apache-airflow/raw/master/airflow-logo.png" align="right">](https://airflow.apache.org/)
# Awesome Apache Airflow
This is a curated list of resources about [Apache Airflow](https://airflow.apache.org/) ([incubating](https://incubator.apache.org/)).  Please feel free to contribute any items that should be included.  Items are generally added at the top of each section so that more fresh items are featured more prominently.

## Contents
- [Vital links](#vital-links)
- [Airflow deployment solutions](#airflow-deployment-solutions)
- [Introductions and tutorials](#introductions-and-tutorials)
- [Best practices, lessons learned and cool use cases](#best-practices-lessons-learned-and-cool-use-cases)
- [Blogs, etc.](#blogs-etc)
- [Slide deck presentations and online videos](#slide-deck-presentations-and-online-videos)
- [Libraries, Hooks, Utilities](#libraries-hooks-utilities)
- [Meetups](#meetups)
- [Commercial Airflow-as-a-service providers](#commercial-airflow-as-a-service-providers)
- [Non-English resources](#non-english-resources)

## Vital links
* Official website: [Apache Airflow](https://airflow.apache.org/)
* Latest release: [1.10.0-incubating](https://cwiki.apache.org/confluence/display/AIRFLOW/Announcements#Announcements-Aug20,2018)
* Official Twitter account: [Apache Airflow](https://twitter.com/ApacheAirflow)

## Airflow deployment solutions
* [Puckel's Docker Image](https://github.com/puckel/docker-airflow) - [@Puckel_](https://twitter.com/Puckel_)'s well-crafted Docker image has become the base for many Airflow installations.  It is regularly updated and closely tracks the official Apache releases.
* [Kubernetes Custom Operator for Deploying Airflow](https://github.com/GoogleCloudPlatform/airflow-operator) - Kubernetes Custom controller (also called operator pattern) for deploying Airflow on Kubernetes.
* [airflow-pipeline](https://github.com/datagovsg/airflow-pipeline) - Airflow Docker container that comes preconfigured for Spark and Hadoop.  It can be docker pulled at ``datagovsg/airflow-pipeline``.
* [kube-airflow](https://github.com/mumoshu/kube-airflow) - This repository contains both an Airflow Docker image (that appears to have been based on Puckel's work) and Kubernetes service definition.  [mumoshu](https://github.com/mumoshu)'s repository has not been recently updated, but there are numerous forks that may be based on more recent releases.
* [airflow-on-kubernetes](https://github.com/rolanddb/airflow-on-kubernetes) - A guide on all relevant resources, scripts and projects that relate to running Airflow on Kubernetes.
* [airflow-k8s-executor-on-GKE](https://github.com/EamonKeane/airflow-GKE-k8sExecutor-helm) - A detailed tutorial to get a scalable, low maintenance airflow kubernetes executor environment deployed on [Google Kubernetes Engine](https://cloud.google.com/kubernetes-engine/) with [helm](https://helm.sh/).
* [airflow-cookbook](https://github.com/bahchis/airflow-cookbook) Chef cookbook for deploying Airflow.
* [Running Airflow on top of Apache Mesos](http://agrajmangal.in/blog/big-data/running-airflow-on-top-of-apache-mesos/) - Blog describing how to configure [Mesos](http://mesos.apache.org/) to run all of the Airflow componenents.
* [Integrating Apache Airflow with Apache Ambari](https://medium.com/@mykolamykhalov/integrating-apache-airflow-with-apache-ambari-ccab2c90173) - [Mykola Mykhalov](https://www.linkedin.com/in/mykola-mykhalov-9079a8107/) walks through using [Apache Ambari](https://ambari.apache.org/) to configure and deploy an Airflow instance.
* [Astronomer Open Edition github](https://github.com/astronomerio/astronomer) - [Open Edition of the Astronomer Platform](https://open.astronomer.io/) including Docker images for Airflow (Celery Executor), Postgres, Redis, Flower, StatsD, Prometheus, Grafana, and cAdvisor.

## Introductions and tutorials
* [Remote spark-submit to YARN running on EMR](https://medium.com/@tamizhgeek/remote-spark-submit-toyarn-running-on-emr-9804b89d82d2) - [Azhaguselvan](https://github.com/tamizhgeek) walks through submitting Spark jobs to existing EMR clusters with Airflow.
* [Running Airflow on top of Apache Mesos](http://agrajmangal.in/blog/big-data/running-airflow-on-top-of-apache-mesos/) and its follow-up, [Mesos, Airflow & Docker](http://agrajmangal.in/blog/big-data/mesos-airflow-docker/) by [Agraj Mangal](https://twitter.com/agrajm) is a quick overview of running Airflow atop Apache Mesos.
* [Dustin Stansbury](https://twitter.com/corrcoef) of [Quizlet](https://quizlet.com/) has written a four-part series that covers what workflow managers do in general, how Quizlet picked Airflow, a tour of Airflow's key concepts, and how Quizlet is now using Airflow in practice:
  * [Beyond CRON: an introduction to Workflow Management Systems](https://medium.com/@dustinstansbury/beyond-cron-an-introduction-to-workflow-management-systems-19987afcdb5e)
  * [Why Quizlet chose Apache Airflow for executing data workflows](https://towardsdatascience.com/why-quizlet-chose-apache-airflow-for-executing-data-workflows-3f97d40e9571)
  * [Understanding Apache Airflow’s key concepts](https://medium.com/@dustinstansbury/understanding-apache-airflows-key-concepts-a96efed52b1a)
  * [How Quizlet uses Apache Airflow in practice](https://medium.com/@dustinstansbury/how-quizlet-uses-apache-airflow-in-practice-a903cbb5626d)
* [Apache Airflow for the confused](https://blog.capitalplanning.nyc/apache-airflow-for-the-confused-b588935669df) - This short tutorial by [Jonathan Pichot](https://twitter.com/_pichot) takes a different tack than most by using airplane and airport operations as an analogy for Airflow.
* [Integrating Apache Airflow with Databricks](https://databricks.com/blog/2017/07/19/integrating-apache-airflow-with-databricks.html) - While this tutorial is focused specifically on Databricks' Spark solutions, it does have a reasonable overview of Airflow basics and demonstrates how a third party solution can quickly integrate into Airflow.

## Best practices, lessons learned and cool use cases
* [Testing in Airflow Part 1](https://medium.com/@chandukavar/testing-in-airflow-part-1-dag-validation-tests-dag-definition-tests-and-unit-tests-2aa94970570c) - [Chandu Kavar](https://twitter.com/chandukavar) has explained different categories of tests in Airflow. It includes DAG Validation Tests, DAG Definition Tests, and Unit Tests
* [Improving Airflow UI Security](https://wecode.wepay.com/posts/improving-airflow-ui-security) - WePay's [Joy Gao](https://twitter.com/joygao) breaks down the need for Role Based Access Controls (RBAC) and how she introduced it to Airflow.
* [How to Create a Workflow in Apache Airflow to Track Disease Outbreaks in India](https://blog.socialcops.com/engineering/apache-airflow-disease-outbreaks-india/) - [Vinayak Mehta](https://twitter.com/vortex_ape) details how [SocialCops](https://socialcops.com/) uses Airflow to scrape India's Ministry of Health and Family Affairs to generate derived data on possible disease outbreaks.
* [Airflow, Meta Data Engineering, and a Data Platform for the World’s Largest Democracy](https://blog.socialcops.com/technology/engineering/airflow-meta-data-engineering-disha/) - [Vinayak Mehta](https://twitter.com/vortex_ape) talks about identifying data engineering patterns (meta data engineering) to automate DAG generation and how that helped [SocialCops](https://socialcops.com/) to power DISHA, a national data platform where Indian MPs and MLAs monitor the progress of 42 national level schemes.
* [Lessons learnt while Airflow-ing](https://medium.com/@nehiljain/lessons-learnt-while-airflow-ing-32d3b7fc3fbf) and [Airflow Part 2: Lessons learned](https://medium.com/snaptravel/airflow-part-2-lessons-learned-793fa3c0841e) - [Nehil Jain](https://twitter.com/nehiljain) of [Snaptravel](https://www.snaptravel.com/) has written a two-part series that covers the value of workflow schedulers, some best practices and pitfalls he found while working with Airflow.  The [second article](https://medium.com/snaptravel/airflow-part-2-lessons-learned-793fa3c0841e) in particular includes many production tips.
* [Why Robinhood uses Airflow](https://robinhood.engineering/why-robinhood-uses-airflow-aed13a9a90c8) - [Vineet Goel](https://twitter.com/vineetik) walks through why financial trading platform [Robinhood](https://robinhood.com/) picked Airflow over alternative work schedulers.
* [What we learned migrating off Cron to Airflow](https://medium.com/videoamp/what-we-learned-migrating-off-cron-to-airflow-b391841a0da4) - [Katie Macias](https://medium.com/@katiemacias) describes [VideoAmp](https://www.videoamp.com/)'s Data Engineering's journey from cron to Airflow.
* [Under the Hood: Building AIR at Qubole](https://www.qubole.com/blog/hood-building-air-qubole/) - [Sreenath Kamath](https://www.linkedin.com/in/sreenath-kamath-66a1b970/) and [Rajat Venkatesh](https://twitter.com/vrajat) write about building [Qubole](https://www.qubole.com/)'s [data discovery, insights and recommendations platform](https://www.qubole.com/blog/building-qdsair-infrastructure/) atop Airflow.
* [Airflow: Why is nothing working? - TL;DR Airflow’s SubDagOperator causes deadlocks](https://medium.com/bluecore-engineering/airflow-why-is-nothing-working-f705eb6b7b04) by [Jessica Laughlin](https://twitter.com/thepressofjess) - Deep dive into troubleshooting a troublesome Airflow DAG with good tips on how to diagnosis problems.
* [Apache Airflow as an External scheduler for distributed systems](https://medium.com/@rako/apache-airflow-as-an-external-scheduler-for-distributed-systems-53b7354d3e48) - [Arunkumar](https://medium.com/@rako) suggests using Airflow as a simple external scheduler for a distributed system.
* [How Sift Trains Thousands of Models using Apache Airflow](https://engineering.siftscience.com/sift-trains-thousands-models-using-apache-airflow/) - Summary of [Sift Science](https://siftscience.com/)'s deployment strategy for its machine learning model pipelines.
* [Apache Airflow at Pandora](https://engineering.pandora.com/apache-airflow-at-pandora-1d7a844d68ee) - [Ace Haidrey](https://www.linkedin.com/in/acehaidrey/) discusses why Pandora chose Airflow and provides a detailed breakdown of their deployment and the infrastructure behind it.
* [Airflow Lessons from the Data Engineering Front in Chicago](https://medium.com/stanton-ventures-insights/airflow-lessons-from-the-data-engineering-front-in-chicago-9489e6ad5c3d) - [Alison Stanton](https://twitter.com/alison985) provides a list of tips to avoid gotchas in Airflow jobs.
* [Data’s Inferno: 7 Circles of Data Testing Hell with Airflow](https://medium.com/wbaa/datas-inferno-7-circles-of-data-testing-hell-with-airflow-cef4adff58d8) - The Wholesale Banking Advanced Analytics team at ING details how they torture test their Airflow DAGs before deployment.
  * [Data Testing with Airflow repository](https://github.com/danielvdende/data-testing-with-airflow)
* [Data quality checkers](https://drivy.engineering/data-quality/) - [Antoine Augusti](https://twitter.com/AntoineAugusti) describes the framework [drivy](https://www.drivy.co.uk/) has built atop Airflow to test their datasets for completeness, consistency, timeliness, uniquess, validity and accuracy.
* [Building WePay's data warehouse using BigQuery and Airflow](https://wecode.wepay.com/posts/wepays-data-warehouse-bigquery-airflow) - The inestimable [Chris Riccomini](https://twitter.com/criccomini) describes how [WePay](https://go.wepay.com/), one of the first adopters of Airflow, integrated into their [Google Cloud Compute](https://cloud.google.com/compute/) environment.
* [Using Apache Airflow to Create Data Infrastructure in the Public Sector](https://www.astronomer.io/blog/using-apache-airflow-to-create-data-infrastructure/) - Despite an unfortunately very heavy sales pitch tone, this article blog post describes how [ARGO Labs](http://www.argolabs.org/), a non-profit data organization, utilizes Airflow for ETLing in public sector data.
* [ETL with airflow](https://gtoonstra.github.io/etl-with-airflow/) - ETL core principles and several end-to-end docker-based examples including Kimball, Data Vault on Hive and some simpler examples.
* [How to aggregate data for BigQuery using Apache Airflow](https://cloud.google.com/blog/big-data/2017/07/how-to-aggregate-data-for-bigquery-using-apache-airflow) - Example of how to use Airflow with Google BigQuery to power a Data Studio dashboard.
* [Productionizing ML with workflows at Twitter](https://blog.twitter.com/engineering/en_us/topics/insights/2018/ml-workflows.html) - In depth post on why and how Twitter use Airflow for ML workflows including including custom operators and a custom UI embedded in in the Airflow web interface.

## Blogs, etc.
* [The Airflow Podcast](https://soundcloud.com/the-airflow-podcast) - A semiregular podcast discussing all things Airflow.
* [Maxime Beauchemin](https://medium.com/@maximebeauchemin) - Maxime's blog on medium that gives insight into the philosophy behind Apache Airflow.
* [Robert Chang](https://medium.com/@rchang) - Blog posts about data engineering with Apache Airflow, explains why and has examples in code.

## Slide deck presentations and online videos
* [Advanced Data Engineering Patterns with Apache Airflow](https://www.youtube.com/watch?v=23_1WlxGGM4)  - Video of [Maxime Beauchemin](https://medium.com/@maximebeauchemin)'s talk that briefly introduces Airflow and then goes into more advanced use cases, including self-servive SQL queries, building A/B testing metrics frameworks and machine learning feature extraction all via Airflow.  The slides are available separately [here](https://prezi.com/p/adxlaplcwzho/advanced-data-engineering-patterns-with-apache-airflow/).
* [Modern Data Pipelines with Apache Airflow](https://blog.tedmiston.com/momentum-2018-airflow-talk/) - A talk given by [Taylor Edmiston](https://twitter.com/kicksopenminds) and [Andy Cooper](https://twitter.com/andscoop) from Astronomer.io at Momentum Dev Con 2018 on getting started with Airflow, custom components, example DAGs, and the Astronomer Airflow CLI.
* [Building Better Data Pipelines using Apache Airflow](https://www.slideshare.net/r39132/building-better-data-pipelines-using-apache-airflow-94060954) - Slides from [Sid Anand](https://twitter.com/r39132)'s talk at QCon 18 with a thorough overview of Airflow and its architecture.
* [Airflow and Spark Streaming at Astronomer](https://paper.dropbox.com/doc/Airflow-Spark-talk-v2.0-5own4Nlz8MhdwKQ8QhIqj?_tk=share_copylink) - How Astronomer uses dynamic DAGs to run Spark Streaming jobs with Airflow.
* [Apache Airflow in the Cloud: Programmatically orchestrating workloads with Python](https://www.slideshare.net/kaxil/apache-airflow-in-the-cloud-programmatically-orchestrating-workloads-with-python-pydata-london-2018-95391267) - Slides from [Kaxil Naik](https://twitter.com/kaxil)'s & [Satyasheel](https://twitter.com/ss6012) talk at PyData London 18 introducing the basics of Airflow and how to orchestrate workloads on Google Cloud Platform (GCP).
* [Developing elegant workflows in Python code with Apache Airflow](https://eventil.com/presentations/j2sK9R) - [Michał Karzyński](https://twitter.com/postrational) at [Europython](https://ep2018.europython.eu/) gives a brief introduction to Airflow concepts including the role of workflow managers, DAGs and operators.  Link includes both video and slides.
* [Data Pipeline Management](https://www.youtube.com/watch?v=mjn1LAZ_Y38) - [Ben Goldberg](https://www.linkedin.com/in/benjamin-goldberg-50247169/) walks the Chicago Kubernetes Meetup through how [SpotHero](https://spothero.com/) uses Airflow. Additionally, Ben has a very [complete slidedeck](https://docs.google.com/presentation/d/1hc12cFs5TmEajLwYNASLwz_C17Q5tyd__6oXzI16A9A/edit#slide=id.g320d39a12c_0_1017) of how Airflow plays within Kubernetes.
* [How I learned to time travel, or, data pipelining and scheduling with Airflow](https://www.slideshare.net/LauraLorenz4/how-i-learned-to-time-travel-or-data-pipelining-and-scheduling-with-airflow) - Comprehensive deck by [Laura Lorenz](https://twitter.com/lalorenz6) for why Airflow is necessary and how [Industry Dive](https://www.industrydive.com/) uses it.
* [Introduction to Apache Airflow - Data Day Seattle 2016](https://www.slideshare.net/r39132/introduction-to-apache-airflow-data-day-seattle-2016) - [Sid Anand](https://twitter.com/r39132) gives a thorough introduction to Airflow and how it was used at [Agari](https://www.agari.com/).
* [Operating Data Pipeline With Airflow - Airflow Meetup April-2018](https://speakerdeck.com/vananth22/operating-data-pipeline-with-airflow-at-slack) - [Ananth Packkildurai](https://twitter.com/ananthdurai) talks about scaling airflow Local Executor and best practices to operate data pipeline at [Slack](https://slack.com/).
* [Apache Airflow at WePay](https://wepayinc.app.box.com/s/hf1chwmthuet29ux2a83f5quc8o5q18k) - [Chris Riccomini](https://twitter.com/criccomini) discusses why WePay chose Airflow and provides a detailed breakdown of their deployment and the infrastructure behind it.
* [Elegant data pipelining with Apache Airflow](https://www.youtube.com/watch?v=neuh_2_zrt8) - Talks from [Bolke de Bruin](https://twitter.com/bolke2028) and [Fokko Driesprong](https://twitter.com/fokkodriesprong) at PyData Amsterdam 2018 about methodologies that provide clarity in ETL using Airflow.

## Libraries, Hooks, Utilities
* [Airflow plugins](https://github.com/airflow-plugins/) - Central collection of repositories of various plugins for Airflow, including mailchimp, trello, sftp, github, etc.
* [fileflow](https://github.com/industrydive/fileflow) - Collection of modules to support large data transfers between Airflow operators through either local file system or S3.  This addresses a gap where data is too large for XCOMs but too small or inconvenient for loading directly in the operator.  Built by [Industry Dive](https://www.industrydive.com/).
* [fairflow](https://github.com/michaelosthege/fairflow) - Library to abstract away Airflow's Operators with functional pieces that transform the data from one operator to another.
* [airflow-maintenance-dags](https://github.com/teamclairvoyant/airflow-maintenance-dags) - [Clairvoyant](http://clairvoyantsoft.com/) has a repo of Airflow DAGs that operator on Airflow itself, clearing out various bits of the backing metadata store.
* [test_dags](https://gist.github.com/criccomini/2862667822af7fae8b55682faef029a7) - a more complete solution for DAG integrity tests ([first Circle of Data’s Inferno are the first](https://medium.com/@ingwbaa/datas-inferno-7-circles-of-data-testing-hell-with-airflow-cef4adff58d8).

## Meetups
* [Bay Area Apache Airflow Meetup](https://www.meetup.com/Bay-Area-Apache-Airflow-Incubating-Meetup)
* [Seattle Apache Airflow Meetup](https://www.meetup.com/Seattle-Apache-Airflow-Users-Group/)

## Commercial Airflow-as-a-service providers
* [Google Cloud Composer](https://cloud.google.com/composer/) - Google Cloud Composer is a managed service built atop Google Cloud and Airflow.
* [Qubole](http://docs.qubole.com/en/latest/user-guide/airflow/) - Qubole is mainly known as a service-and-support company for Apache Hive, but also provides Airflow as a component of its platform.
* [Astronomer.io](https://www.astronomer.io/) - Astronomer provides complete ETL lifecycle solutions and appears to be entirely focused on providing Airflow-based products.

## Non-English resources
* [apache airflow 複数worker構成のalpine版docker imageを作った](https://sekailab.com/wp/2018/04/05/apache-airflow-multinode-alpine-docker-image/) [Japanese] - [Akio Ohta](https://github.com/Drunkar) walks through his [Docker image](https://hub.docker.com/r/drunkar/airflow-alpine/) for deploying an Alpine-based Airflow system.
* [Apache Airflow – Kaikki Mitä Meillä On, Lähtee Dageista](https://www.solita.fi/blogit/apache-airflow-kaikki-mita-meilla-on-lahtee-dageista/) [Finnish] by [Olli Iivonen](https://www.linkedin.com/in/oiivonen/) - Overview of Airflow, concepts and Airflow's usage at [Solita](https://www.solita.fi/)
* [Airflow - Automatizando seu fluxo de trabalho](https://speakerdeck.com/gilsondev/airflow-automatizando-seu-fluxo-de-trabalho) [Portuguese] - [Gilson Filho](https://github.com/gilsondev) - Overview of Airflow, concept and basic use.
