[<img src="https://github.com/jghoman/awesome-apache-airflow/raw/master/airflow-logo.png" align="right">](https://airflow.apache.org/)
# Awesome Apache Airflow
This is a curated list of resources about [Apache Airflow](https://airflow.apache.org/) ([incubating](https://incubator.apache.org/)).  Please feel free to contribute any items that should be included.  Items are generally added at the top of each section so that more fresh items are featured more prominently.  Maintained by [Jakob Homan](https://www.linkedin.com/in/jghoman/) and anyone who wants to help - pull requests are welcome or ping me on [Twitter](https://twitter.com/BlueBoxTraveler).

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
* Latest release: [1.9.0-incubating](https://cwiki.apache.org/confluence/display/AIRFLOW/Announcements#Announcements-Jan2,2018)
* Official Twitter account: [Apache Airflow](https://twitter.com/ApacheAirflow)

## Airflow deployment solutions
* [Puckel's Docker Image](https://github.com/puckel/docker-airflow) - [@Puckel_](https://twitter.com/Puckel_)'s well-crafted Docker image has become the base for many Airflow installations.  It is regularly updated and closely tracks the official Apache releases.
* [airflow-pipeline](https://github.com/datagovsg/airflow-pipeline) - Airflow Docker container that comes preconfigured for Spark and Hadoop.  It can be docker pulled at ``datagovsg/airflow-pipeline``.
* [kube-airflow](https://github.com/mumoshu/kube-airflow) - This repository contains both an Airflow Docker image (that appears to have been based on Puckel's work) and Kubernetes service definition.  [mumoshu](https://github.com/mumoshu)'s repository has not been recently updated, but there are numerous forks that may be based on more recent releases.
* [airflow-cookbook](https://github.com/bahchis/airflow-cookbook) Chef cookbook for deploying Airflow.
* [Running Airflow on top of Apache Mesos](http://agrajmangal.in/blog/big-data/running-airflow-on-top-of-apache-mesos/) - Blog describing how to configure [Mesos](http://mesos.apache.org/) to run all of the Airflow componenents.

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
* [Apache Airflow as an External scheduler for distributed systems](https://medium.com/@rako/apache-airflow-as-an-external-scheduler-for-distributed-systems-53b7354d3e48) - [Arunkumar](https://medium.com/@rako) suggests using Airflow as a simple external scheduler for a distributed system.
* [How Sift Trains Thousands of Models using Apache Airflow](https://engineering.siftscience.com/sift-trains-thousands-models-using-apache-airflow/) - Summary of [Sift Science](https://siftscience.com/)'s deployment strategy for its machine learning model pipelines.
* [Apache Airflow at Pandora](https://engineering.pandora.com/apache-airflow-at-pandora-1d7a844d68ee) - [Ace Haidrey](https://www.linkedin.com/in/acehaidrey/) discusses why Pandora chose Airflow and provides a detailed breakdown of their deployment and the infrastructure behind it.
* [Airflow Lessons from the Data Engineering Front in Chicago](https://medium.com/stanton-ventures-insights/airflow-lessons-from-the-data-engineering-front-in-chicago-9489e6ad5c3d) - [Alison Stanton](https://twitter.com/alison985) provides a list of tips to avoid gotchas in Airflow jobs. 
* [Data’s Inferno: 7 Circles of Data Testing Hell with Airflow](https://medium.com/@ingwbaa/datas-inferno-7-circles-of-data-testing-hell-with-airflow-cef4adff58d8) - The Wholesale Banking Advanced Analytics team at ING details how they torture test their Airflow DAGs before deployment.
* [Data quality checkers](https://drivy.engineering/data-quality/) - [Antoine Augusti](https://twitter.com/AntoineAugusti) describes the framework [drivy](https://www.drivy.co.uk/) has built atop Airflow to test their datasets for completeness, consistency, timeliness, uniquess, validity and accuracy.
* [Building WePay's data warehouse using BigQuery and Airflow](https://wecode.wepay.com/posts/wepays-data-warehouse-bigquery-airflow) - The inestimable [Chris Riccomini](https://twitter.com/criccomini) describes how [WePay](https://go.wepay.com/), one of the first adopters of Airflow, integrated into their [Google Cloud Compute](https://cloud.google.com/compute/) environment.
* [Using Apache Airflow to Create Data Infrastructure in the Public Sector](https://www.astronomer.io/blog/using-apache-airflow-to-create-data-infrastructure/) - Despite an unfortunately very heavy sales pitch tone, this article blog post describes how [ARGO Labs](http://www.argolabs.org/), a non-profit data organization, utilizes Airflow for ETLing in public sector data.
* [ETL with airflow](https://gtoonstra.github.io/etl-with-airflow/) - ETL core principles and several end-to-end docker-based examples including Kimball, Data Vault on Hive and some simpler examples.

## Blogs, etc.
* [The Airflow Podcast](https://soundcloud.com/the-airflow-podcast) - A semiregular podcast discussing all things Airflow.
* [Maxime Beauchemin](https://medium.com/@maximebeauchemin) - Maxime's blog on medium that gives insight into the philosophy behind Apache Airflow.
* [Robert Chang](https://medium.com/@rchang) - Blog posts about data engineering with Apache Airflow, explains why and has examples in code.

## Slide deck presentations and online videos
* [Data Pipeline Management](https://www.youtube.com/watch?v=mjn1LAZ_Y38) - [Ben Goldberg](https://www.linkedin.com/in/benjamin-goldberg-50247169/) walks the Chicago Kubernetes Meetup through how [SpotHero](https://spothero.com/) uses Airflow. Additionally, Ben has a very [complete slidedeck](https://docs.google.com/presentation/d/1hc12cFs5TmEajLwYNASLwz_C17Q5tyd__6oXzI16A9A/edit#slide=id.g320d39a12c_0_1017) of how Airflow plays within Kubernetes.
* [How I learned to time travel, or, data pipelining and scheduling with Airflow](https://www.slideshare.net/LauraLorenz4/how-i-learned-to-time-travel-or-data-pipelining-and-scheduling-with-airflow) - Comprehensive deck by [Laura Lorenz](https://twitter.com/lalorenz6) for why Airflow is necessary and how [Industry Dive](https://www.industrydive.com/) uses it.
* [Introduction to Apache Airflow - Data Day Seattle 2016](https://www.slideshare.net/r39132/introduction-to-apache-airflow-data-day-seattle-2016) - [Sid Anand](https://twitter.com/r39132) gives a thorough introduction to Airflow and how it was used at [Agari](https://www.agari.com/).
* [Operating Data Pipeline With Airflow - Airflow Meetup April-2018](https://speakerdeck.com/vananth22/operating-data-pipeline-with-airflow-at-slack) - [Ananth Packkildurai](https://twitter.com/ananthdurai) talks about scaling airflow Local Executor and best practices to operate data pipeline at [Slack](https://slack.com/).
* [Apache Airflow at WePay](https://wepayinc.app.box.com/s/hf1chwmthuet29ux2a83f5quc8o5q18k) - Discusses why WePay chose Airflow and provides a detailed breakdown of their deployment and the infrastructure behind it.

## Libraries, Hooks, Utilities
* [Airflow plugins](https://github.com/airflow-plugins/) - Central collection of repositories of various plugins for Airflow, including mailchimp, trello, sftp, github, etc.
* [fileflow](https://github.com/industrydive/fileflow) - Collection of modules to support large data transfers between Airflow operators through either local file system or S3.  This addresses a gap where data is too large for XCOMs but too small or inconvenient for loading directly in the operator.  Built by [Industry Dive](https://www.industrydive.com/).
* [fairflow](https://github.com/michaelosthege/fairflow) - Library to abstract away Airflow's Operators with functional pieces that transform the data from one operator to another.
* [airflow-maintenance-dags](https://github.com/teamclairvoyant/airflow-maintenance-dags) - [Clairvoyant](http://clairvoyantsoft.com/) has a repo of Airflow DAGs that operator on Airflow itself, clearing out various bits of the backing metadata store.
* [test_dags](https://gist.github.com/criccomini/2862667822af7fae8b55682faef029a7) - a more complete solution for DAG integrity tests ([first Circle of Data’s Inferno are the first](https://medium.com/@ingwbaa/datas-inferno-7-circles-of-data-testing-hell-with-airflow-cef4adff58d8). 

## Meetups
* [Bay Area Apache Airflow Meetup](https://www.meetup.com/Bay-Area-Apache-Airflow-Incubating-Meetup)

## Commercial Airflow-as-a-service providers
* [Qubole](http://docs.qubole.com/en/latest/user-guide/airflow/) - Qubole is mainly known as a service-and-support company for Apache Hive, but also provides Airflow as a component of its platform.
* [Astronomer.io](https://www.astronomer.io/) - Astronomer provides complete ETL lifecycle solutions and appears to be entirely focused on providing Airflow-based products.

## Non-English resources
* [Apache Airflow – Kaikki Mitä Meillä On, Lähtee Dageista](https://www.solita.fi/blogit/apache-airflow-kaikki-mita-meilla-on-lahtee-dageista/) [Finnish] by [Olli Iivonen](https://www.linkedin.com/in/oiivonen/) - Overview of Airflow, concepts and Airflow's usage at [Solita](https://www.solita.fi/)
