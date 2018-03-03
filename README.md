[<img src="https://github.com/jghoman/awesome-apache-airflow/raw/master/airflow-logo.png" align="right">](https://airflow.apache.org/)
# Awesome Apache Airflow
This is a curated list of resources about [Apache Airflow](https://airflow.apache.org/) ([incubating](https://incubator.apache.org/)).  Please feel free to contribute any items that should be included.  Items are generally added at the top of each section so that more fresh items are featured more prominently.

## Vital links
* Latest release: [1.9.0-incubating](https://cwiki.apache.org/confluence/display/AIRFLOW/Announcements#Announcements-Jan2,2018)
* Official Twitter account: [Apache Airflow](https://twitter.com/ApacheAirflow)

## Airflow deployment solutions
* [Puckel's Docker Image](https://github.com/puckel/docker-airflow) - [@Puckel_](https://twitter.com/Puckel_)'s well-crafted Docker image has become the base for many Airflow installations.  It is regularly updated and closely tracks the official Apache releases.
* [airflow-pipeline](https://github.com/datagovsg/airflow-pipeline) - Airflow Docker container that comes preconfigured for Spark and Hadoop.  It can be docker pulled at ``datagovsg/airflow-pipeline``.
* [kube-airflow](https://github.com/mumoshu/kube-airflow) - This repository contains both an Airflow Docker image (that appears to have been based on Puckel's work) and Kubernetes service definition.  [mumoshu](https://github.com/mumoshu)'s repository has not been recently updated, but there are numerous forks that may be based on more recent releases.
* [airflow-cookbook](https://github.com/bahchis/airflow-cookbook) Chef cookbook for deploying Airflow.
* [Running Airflow on top of Apache Mesos](http://agrajmangal.in/blog/big-data/running-airflow-on-top-of-apache-mesos/) - Blog describing how to configure [Mesos](http://mesos.apache.org/) to run all of the Airflow componenents.

## Introductions and tutorials
* [Dustin Stansbury](https://twitter.com/corrcoef) of [Quizlet](https://quizlet.com/) has written a four-part series that covers what workflow managers do in general, how Quizlet picked Airflow, a tour of Airflow's key concepts, and how Quizlet is now using Airflow in practice:
  * [Beyond CRON: an introduction to Workflow Management Systems](https://medium.com/@dustinstansbury/beyond-cron-an-introduction-to-workflow-management-systems-19987afcdb5e)
  * [Why Quizlet chose Apache Airflow for executing data workflows](https://towardsdatascience.com/why-quizlet-chose-apache-airflow-for-executing-data-workflows-3f97d40e9571) 
  * [Understanding Apache Airflow’s key concepts](https://medium.com/@dustinstansbury/understanding-apache-airflows-key-concepts-a96efed52b1a)
  * [How Quizlet uses Apache Airflow in practice](https://medium.com/@dustinstansbury/how-quizlet-uses-apache-airflow-in-practice-a903cbb5626d)
* [Apache Airflow for the confused](https://blog.capitalplanning.nyc/apache-airflow-for-the-confused-b588935669df) - This short tutorial by [Jonathan Pichot](https://twitter.com/_pichot) takes a different tack than most by using airplane and airport operations as an analogy for Airflow.
* [Integrating Apache Airflow with Databricks](https://databricks.com/blog/2017/07/19/integrating-apache-airflow-with-databricks.html) - While this tutorial is focused specifically on Databricks' Spark solutions, it does have a reasonable overview of Airflow basics and demonstrates how a third party solution can quickly integrate into Airflow.

## Best practices, lessons learned and cool use cases
* [Airflow Lessons from the Data Engineering Front in Chicago](https://medium.com/stanton-ventures-insights/airflow-lessons-from-the-data-engineering-front-in-chicago-9489e6ad5c3d) - [Alison Stanton](https://twitter.com/alison985) provides a list of tips to avoid gotchas in Airflow jobs. 
* [Data’s Inferno: 7 Circles of Data Testing Hell with Airflow](https://medium.com/@ingwbaa/datas-inferno-7-circles-of-data-testing-hell-with-airflow-cef4adff58d8) - The Wholesale Banking Advanced Analytics team at ING details how they torture test their Airflow DAGs before deployment.
* [Data quality checkers](https://drivy.engineering/data-quality/) - [Antoine Augusti](https://twitter.com/AntoineAugusti) describes the framework [drivy](https://www.drivy.co.uk/) has built atop Airflow to test their datasets for completeness, consistency, timeliness, uniquess, validity and accuracy.
* [Building WePay's data warehouse using BigQuery and Airflow](https://wecode.wepay.com/posts/wepays-data-warehouse-bigquery-airflow) - The inestimable [Chris Riccomini](https://twitter.com/criccomini) describes how [WePay](https://go.wepay.com/), one of the first adopters of Airflow, integrated into their [Google Cloud Compute](https://cloud.google.com/compute/) environment.
* [Using Apache Airflow to Create Data Infrastructure in the Public Sector](https://www.astronomer.io/blog/using-apache-airflow-to-create-data-infrastructure/) - Despite an unfortunately very heavy sales pitch tone, this article blog post describes how [ARGO Labs](http://www.argolabs.org/), a non-profit data organization, utilizes Airflow for ETLing in public sector data.

## Blogs, etc.
* [The Airflow Podcast](https://soundcloud.com/the-airflow-podcast) - A semiregular podcast discussing all things Airflow.

## Slide deck presentations and online videos
* [Data Pipeline Management](https://www.youtube.com/watch?v=mjn1LAZ_Y38) - [Ben Goldberg](https://www.linkedin.com/in/benjamin-goldberg-50247169/) walks the Chicago Kubernetes Meetup through how [SpotHero](https://spothero.com/) uses Airflow.
* [How I learned to time travel, or, data pipelining and scheduling with Airflow](https://www.slideshare.net/LauraLorenz4/how-i-learned-to-time-travel-or-data-pipelining-and-scheduling-with-airflow) - Comprehensive deck by [Laura Lorenz](https://twitter.com/lalorenz6) for why Airflow is necessary and how [Industry Dive](https://www.industrydive.com/) uses it.
* [Introduction to Apache Airflow - Data Day Seattle 2016](https://www.slideshare.net/r39132/introduction-to-apache-airflow-data-day-seattle-2016) - [Sid Anand](https://twitter.com/r39132) gives a thorough introduction to Airflow and how it was used at [Agari](https://www.agari.com/).

## Libraries, Hooks, Utilities
* [fileflow](https://github.com/industrydive/fileflow) - Collection of modules to support large data transfers between Airflow operators through either local file system or S3.  This addresses a gap where data is too large for XCOMs but too small or inconvenient for loading directly in the operator.  Built by [Industry Dive](https://www.industrydive.com/).
* [fairflow](https://github.com/michaelosthege/fairflow) - Library to abstract away Airflow's Operators with functional pieces that transform the data from one operator to another.
* [airflow-maintenance-dags](https://github.com/teamclairvoyant/airflow-maintenance-dags) - [Clairvoyant](http://clairvoyantsoft.com/) has a repo of Airflow DAGs that operator on Airflow itself, clearing out various bits of the backing metadata store.

## Meetups
* [Bay Area Apache Airflow Meetup](https://www.meetup.com/Bay-Area-Apache-Airflow-Incubating-Meetup)

## Commercial Airflow-as-a-service providers
* [Qubole](http://docs.qubole.com/en/latest/user-guide/airflow/) - Qubole is mainly known as a service-and-support company for Apache Hive, but also provides Airflow as a component of its platform.
* [Astronomer.io](https://www.astronomer.io/) - Astronomer provides complete ETL lifecycle solutions and appears to be entirely focused on providing Airflow-based products.

## Non-English resources
* [Apache Airflow – Kaikki Mitä Meillä On, Lähtee Dageista](https://www.solita.fi/blogit/apache-airflow-kaikki-mita-meilla-on-lahtee-dageista/) [Finnish] by [Olli Iivonen](https://www.linkedin.com/in/oiivonen/) - Overview of Airflow, concepts and Airflow's usage at [Solita](https://www.solita.fi/)
