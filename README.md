[<img src="https://github.com/jghoman/awesome-apache-airflow/raw/master/airflow-logo.png" align="right">](https://airflow.apache.org/)
# Awesome Apache Airflow
![contrib badge](https://img.shields.io/github/contributors/jghoman/awesome-apache-airflow.svg) ![GitHub commit activity](https://img.shields.io/github/commit-activity/m/jghoman/awesome-apache-airflow?style=plastic)

This is a curated list of resources about [Apache Airflow](https://airflow.apache.org/).  Please feel free to contribute any items that should be included. Items are generally added at the top of each section so that more fresh items are featured more prominently.

## Contents
- [Vital links](#vital-links)
- [Airflow deployment solutions](#airflow-deployment-solutions)
- [Introductions and tutorials](#introductions-and-tutorials)
- [Airflow Summit 2020 Videos](#airflow-summit-2020-videos)
- [Best practices, lessons learned and cool use cases](#best-practices-lessons-learned-and-cool-use-cases)
- [Books, blogs, podcasts, and such](#books-blogs-podcasts-and-such)
- [Slide deck presentations and online videos](#slide-deck-presentations-and-online-videos)
- [Libraries, Hooks, Utilities](#libraries-hooks-utilities)
- [Meetups](#meetups)
- [Commercial Airflow-as-a-service providers](#commercial-airflow-as-a-service-providers)
- [Cloud Composer resources](#cloud-composer-resources)
- [Non-English resources](#non-english-resources)

## Vital links
- [Source code](https://github.com/apache/airflow/) (latest stable release [1.10.12](https://github.com/apache/airflow/tree/1.10.12))
- [Documentation](https://airflow.apache.org/) (also the official website)
- [Confluence page](https://cwiki.apache.org/confluence/display/AIRFLOW/Airflow+Home)
- [![Twitter Follow](https://img.shields.io/twitter/follow/apacheairflow?style=social)](https://twitter.com/ApacheAirflow)
- [Slack workspace](https://apache-airflow-slack.herokuapp.com/)

## Airflow deployment solutions
- [Installing Airflow on IBM Cloud](https://github.com/KissConsult/Apache-Airflow) - Quick and easy deployment on IBM Cloud with IBM [Bitnami Charts](https://github.com/bitnami/charts)
- [Three ways to run Airflow on Kubernetes](https://fullstaq.com/blog/three-ways-to-run-airflow-on-kubernetes/) - [Tim van de Keer](https://www.linkedin.com/in/tim-van-de-keer-bb5a1966) walks through several methods for deploying Airflow on Kubernetes.
- [Apache Airflow Multi-Tier Free Deployment on Azure](https://azure.microsoft.com/en-us/blog/bitnami-apache-airflow-multi-tier-now-available-in-azure-marketplace/) - A free Azure Resource Manager (ARM) template by Bitnami providing a one-click solution for Airflow deployment on Azure for production use-cases.
- [KubernetesExecutor Helm Chart](https://github.com/tekn0ir/airflow-chart) - A lean Helm Chart using the KubernetesExecutor for a more k8s native experience and complementary [KubernetesExecutor Docker Image](https://github.com/tekn0ir/airflow-docker).
- [Stable Celery Helm Chart](https://github.com/helm/charts/tree/master/stable/airflow) - Curated Helm Chart in the official stable chart repository.
- [Puckel's Docker Image](https://github.com/puckel/docker-airflow) - [@Puckel_](https://twitter.com/Puckel_)'s well-crafted Docker image has become the base for many Airflow installations.  It is regularly updated and closely tracks the official Apache releases.
- [Kubernetes Custom Operator for Deploying Airflow](https://github.com/GoogleCloudPlatform/airflow-operator) - Kubernetes Custom controller (also called operator pattern) for deploying Airflow on Kubernetes.
- [airflow-pipeline](https://github.com/datagovsg/airflow-pipeline) - Airflow Docker container that comes preconfigured for Spark and Hadoop.  It can be docker pulled at ``datagovsg/airflow-pipeline``.
- [aws-airflow-stack](https://github.com/villasv/aws-airflow-stack) - An AWS based Airflow cluster deployment with CeleryExecutor. Deploys after a few clicks with CloudFormation.
- [kube-airflow](https://github.com/mumoshu/kube-airflow) - This repository contains both an Airflow Docker image (that appears to have been based on Puckel's work) and Kubernetes service definition.  [mumoshu](https://github.com/mumoshu)'s repository has not been recently updated, but there are numerous forks that may be based on more recent releases.
- [airflow-on-kubernetes](https://github.com/rolanddb/airflow-on-kubernetes) - A guide on all relevant resources, scripts and projects that relate to running Airflow on Kubernetes.
- [airflow-k8s-executor-on-GKE](https://github.com/EamonKeane/airflow-GKE-k8sExecutor-helm) - A detailed tutorial to get a scalable, low maintenance airflow kubernetes executor environment deployed on [Google Kubernetes Engine](https://cloud.google.com/kubernetes-engine/) with [helm](https://helm.sh/).
- [airflow-cookbook](https://github.com/bahchis/airflow-cookbook) - Chef cookbook for deploying Airflow.
- [Running Airflow on top of Apache Mesos](http://agrajmangal.in/blog/big-data/running-airflow-on-top-of-apache-mesos/) - Blog describing how to configure [Mesos](http://mesos.apache.org/) to run all of the Airflow componenents.
- [Integrating Apache Airflow with Apache Ambari](https://medium.com/@mykolamykhalov/integrating-apache-airflow-with-apache-ambari-ccab2c90173) - [Mykola Mykhalov](https://www.linkedin.com/in/mykola-mykhalov-9079a8107/) walks through using [Apache Ambari](https://ambari.apache.org/) to configure and deploy an Airflow instance.
- [Astronomer Platform](https://github.com/astronomerio/astronomer) - Apache Airflow as a Service on Kubernetes. For more information visit https://www.astronomer.io.
- [Bitnami Airflow Docker image](https://github.com/bitnami/bitnami-docker-airflow) - A secure and up-to-date docker image for Airflow maintained by Bitnami.
- [Bitnami Airflow Scheduler Docker image](https://github.com/bitnami/bitnami-docker-airflow-scheduler) - A secure and up-to-date docker image for Airflow Scheduler maintained by Bitnami.
- [Bitnami Airflow Worker Docker image](https://github.com/bitnami/bitnami-docker-airflow-worker) - A secure and up-to-date docker image for Airflow Worker maintained by Bitnami. A CeleryExecutor docker-compose deployment is available [here](https://github.com/bitnami/bitnami-docker-airflow-worker/blob/master/docker-compose.yml).
- [Distribute & deploy Apache Airflow via Python PEX files](https://github.com/msumit/airflow-pex) - Example repo with steps to bundle, distribute, & deploy Apache Airflow as PEX files.
- [Introducing KEDA for Airflow](https://www.astronomer.io/blog/the-keda-autoscaler/) - How to use KEDA scaler system to enable autoscaling of celery workers based on data stored in the Airflow metadata database.
- [Airflow-Component](https://github.com/noelmcloughlin/airflow-component#lightweight-federated-apache-airflow-installer) - Lightweight installer of federated Airflow-Airflow (RabbitMQ) reference architectrure on Compute node(s).

## Introductions and tutorials
- [Apache Airflow Monitoring Metrics](https://youtu.be/xyeR_uFhnD4) - A two-part series by [maxcotec](https://maxcotec.com) on how you can utilize existing Airflow statsd metrics to monitor your airflow deployment on Grafana dashboard via Prometheus. Also learn how to create custom metrics.
- [Introduction to Airflow](https://www.youtube.com/playlist?list=PLzKRcZrsJN_xcKKyKn18K7sWu5TTtdywh) - A web tutorial series by [maxcotec](https://maxcotec.com) for beginners and intermediate users of Apache Airflow.
- [ETL with Apache Airflow for Data Analysis on Transaction Data](https://github.com/KimaruThagna/ml-pipelines-airflow). [Kimaru Thagana](https://www.linkedin.com/in/kimaru-thagana-4920b5181/) covers a practical case of doing an ETL process using Apache Airflow using a dummy ecommerce store's transactional, user and product data. The data is served via a flask API.
- [Start Building Better Data Pipelines With apache Airflow](https://blog.delaplex.com/start-building-better-data-pipelines-with-apache-airflow) 2020-Oct - Naman Gupta covers the basics of Airflow and its concepts.
- [Airflow Repository Template](https://github.com/soggycactus/airflow-repo-template) - A boilerplate repository for developing locally with Airflow, with linting & tests for valid DAGs and plugins. Just clone and run `make start-airflow` to get started! Add some CI jobs to deploy your code and you're done.
- [How Apache Airflow Distributes Jobs on Celery workers](https://blog.sicara.com/using-airflow-with-celery-workers-54cb5212d405) - A short description of the steps taken by a task instance, from scheduling to success, in a distributed architecture.
- [Remote spark-submit to YARN running on EMR](https://medium.com/@tamizhgeek/remote-spark-submit-toyarn-running-on-emr-9804b89d82d2) - [Azhaguselvan](https://github.com/tamizhgeek) walks through submitting Spark jobs to existing EMR clusters with Airflow.
- [Running Airflow on top of Apache Mesos](http://agrajmangal.in/blog/big-data/running-airflow-on-top-of-apache-mesos/) and its follow-up, [Mesos, Airflow & Docker](http://agrajmangal.in/blog/big-data/mesos-airflow-docker/) by [Agraj Mangal](https://twitter.com/agrajm) is a quick overview of running Airflow atop Apache Mesos.
- [Dustin Stansbury](https://twitter.com/corrcoef) of [Quizlet](https://quizlet.com/) has written a four-part series that covers what workflow managers do in general, how Quizlet picked Airflow, a tour of Airflow's key concepts, and how Quizlet is now using Airflow in practice:
  - [Beyond CRON: an introduction to Workflow Management Systems](https://medium.com/@dustinstansbury/beyond-cron-an-introduction-to-workflow-management-systems-19987afcdb5e)
  - [Why Quizlet chose Apache Airflow for executing data workflows](https://towardsdatascience.com/why-quizlet-chose-apache-airflow-for-executing-data-workflows-3f97d40e9571)
  - [Understanding Apache Airflow’s key concepts](https://medium.com/@dustinstansbury/understanding-apache-airflows-key-concepts-a96efed52b1a)
  - [How Quizlet uses Apache Airflow in practice](https://medium.com/@dustinstansbury/how-quizlet-uses-apache-airflow-in-practice-a903cbb5626d)
- [Integrating Apache Airflow with Databricks](https://databricks.com/blog/2017/07/19/integrating-apache-airflow-with-databricks.html) - While this tutorial is focused specifically on Databricks' Spark solutions, it does have a reasonable overview of Airflow basics and demonstrates how a third party solution can quickly integrate into Airflow.
- [Apache Airflow 2.0 Tutorial](https://turbaszek.medium.com/apache-airflow-2-0-tutorial-41329bbf7211) - This article discusses the basic concepts that stand behind Airflow and discusses the problems it solves.
- [Testing and debugging Apache Airflow](https://blog.godatadriven.com/testing-and-debugging-apache-airflow) - Article explaining how to apply unit testing, mocking and debugging to Airflow code.
- [Get started developing workflows with Apache Airflow](http://michal.karzynski.pl/blog/2017/03/19/developing-workflows-with-apache-airflow/) - This brief introductory tutorial covers how to create data pipeline and processing workflow using DAG, operators, Sensor, using Xcoms to communicate between operators.
- [Get started with Airflow + Google Cloud Platform + Docker](https://medium.com/@junjiejiang94/get-started-with-airflow-google-cloud-platform-docker-a21c46e0f797) - Step-by-step introduction by [Jayce Jiang](https://medium.com/@junjiejiang94).
- [How to develop data pipeline in Airflow through TDD (test-driven development)](https://blog.magrathealabs.com/how-to-develop-data-pipeline-in-airflow-through-tdd-test-driven-development-c3333439f358) - Learn how to build a sales data pipeline using TDD step-by-step and in the end how to configure a simple CI workflow using Github Actions.


## Airflow Summit 2020 videos

*The first [Airflow Summit 2020](https://airflowsummit.org/) was held in July 2020. It was a truly global,
fully online event that was co-hosted by 9 Airflow Meetups from all over the world ([Melbourne](https://www.meetup.com/Melbourne-Apache-Airflow-Meetup/),
[Tokyo](https://www.meetup.com/Tokyo-Apache-Airflow-incubating-Meetup),
[Bangalore](https://www.meetup.com/Bangalore-Apache-Airflow-Meetup/),
[Warsaw](https://www.meetup.com/Warsaw-Airflow-Meetup/),
[Amsterdam](https://www.meetup.com/Amsterdam-Airflow-meetup/),
[London](https://www.meetup.com/London-Apache-Airflow-Meetup/),
[NYC](https://www.meetup.com/NYC-Apache-Airflow-Meetup/),
[BayArea](https://www.meetup.com/Bay-Area-Apache-Airflow-Incubating-Meetup/)).*

*It featured 40+ talks and three workshops. You can check out the talk recordings as a YouTube
[Airflow Summit 2020 Playlist](https://www.youtube.com/playlist?list=PLGudixcDaxY3RGLSlWoN_cEEXhIT1OPmj)
or see the individual talks here:*

- [Keynote: Airflow then and now](https://youtu.be/GB2f7ZhRCho) ![Activity badge](https://img.shields.io/youtube/views/GB2f7ZhRCho)
- [Scheduler as a service - Apache Airflow at EA Digital Platform](https://youtu.be/u00wmcHe8ow) ![Activity badge](https://img.shields.io/youtube/views/u00wmcHe8ow)
- [Keynote: How large companies use Airflow for ML and ETL pipelines](https://youtu.be/428AiCBMZoQ) ![Activity badge](https://img.shields.io/youtube/views/428AiCBMZoQ)
- [Data DAGs with lineage for fun and for profit](https://youtu.be/l_vVxOdvujg) ![Activity badge](https://img.shields.io/youtube/views/l_vVxOdvujg)
- [Airflow on Kubernetes: Containerizing your workflows](https://youtu.be/3VDeKmxHWYA) ![Activity badge](https://img.shields.io/youtube/views/3VDeKmxHWYA)
- [Data flow with Airflow @ PayPal](https://youtu.be/kAtaj_s4f-w) ![Activity badge](https://img.shields.io/youtube/views/kAtaj_s4f-w)
- [Democratised data workflows at scale](https://youtu.be/Cd4-YtHYT9M) ![Activity badge](https://img.shields.io/youtube/views/Cd4-YtHYT9M)
- [Migrating Airflow-based Spark jobs to Kubernetes - the native way](https://youtu.be/i79OsoLUx0k) ![Activity badge](https://img.shields.io/youtube/views/i79OsoLUx0k)
- [Keynote: Future of Airflow](https://youtu.be/YLsGVFB8Pws) ![Activity badge](https://img.shields.io/youtube/views/YLsGVFB8Pws)
- [Run Airflow DAGs in a secure way](https://youtu.be/QhnItssm4yU) ![Activity badge](https://img.shields.io/youtube/views/QhnItssm4yU)
- [Keynote: Making Airflow a sustainable project through D&I](https://youtu.be/wxn9ta13Gbo) ![Activity badge](https://img.shields.io/youtube/views/wxn9ta13Gbo)
- [Airflow CI/CD: Github to Cloud Composer (safely)](https://youtu.be/ZgTf523XM0g) ![Activity badge](https://img.shields.io/youtube/views/ZgTf523XM0g)
- [Advanced Apache Superset for Data Engineers](https://youtu.be/Mhai7sVU244) ![Activity badge](https://img.shields.io/youtube/views/Mhai7sVU244)
- [Demo: Reducing the lines, a visual DAG editor](https://youtu.be/I4nFCqEnOJc) ![Activity badge](https://img.shields.io/youtube/views/I4nFCqEnOJc)
- [AIP-31: Airflow functional DAG definition](https://youtu.be/II4Ip81T3qc) ![Activity badge](https://img.shields.io/youtube/views/II4Ip81T3qc)
- [Autonomous driving with Airflow](https://youtu.be/wEq1FGe6oBY) ![Activity badge](https://img.shields.io/youtube/views/wEq1FGe6oBY)
- [From cron to Airflow on Kubernetes: A startup story](https://youtu.be/giQReCd7jp8) ![Activity badge](https://img.shields.io/youtube/views/giQReCd7jp8)
- [Achieving Airflow Observability](https://youtu.be/Hc4pYAUL6Qs) ![Activity badge](https://img.shields.io/youtube/views/Hc4pYAUL6Qs)
- [Machine Learning with Apache Airflow](https://youtu.be/N_3RQeqySE0) ![Activity badge](https://img.shields.io/youtube/views/N_3RQeqySE0)
- [Airflow: A beast character in the gaming world](https://youtu.be/BH0ut33zp9A) ![Activity badge](https://img.shields.io/youtube/views/BH0ut33zp9A)
- [Effective Cross-DAG dependency](https://youtu.be/p66GcO0LbFQ) ![Activity badge](https://img.shields.io/youtube/views/p66GcO0LbFQ)
- [What open source taught us about business](https://youtu.be/KIEMEYM2PEs) ![Activity badge](https://img.shields.io/youtube/views/KIEMEYM2PEs)
- [Data engineering hierarchy of needs](https://youtu.be/SvnTyDiZOzQ) ![Activity badge](https://img.shields.io/youtube/views/SvnTyDiZOzQ)
- [Building reuseable and trustworthy ELT pipelines (A templated approach)](https://youtu.be/R4bp3_VyJ70) ![Activity badge](https://img.shields.io/youtube/views/R4bp3_VyJ70)
- [Testing Airflow workflows - ensuring your DAGs work before going into production](https://youtu.be/ANJnYbLwLjE) ![Activity badge](https://img.shields.io/youtube/views/ANJnYbLwLjE)
- [Adding an executor to Airflow: A contributor overflow exception](https://youtu.be/RKEmAshcreE) ![Activity badge](https://img.shields.io/youtube/views/RKEmAshcreE)
- [Migration to Airflow backport providers](https://youtu.be/1SSlxAcOEso) ![Activity badge](https://img.shields.io/youtube/views/1SSlxAcOEso)
- [From Zero to Airflow: bootstrapping a ML platform](https://youtu.be/kxyCC1sieok) ![Activity badge](https://img.shields.io/youtube/views/kxyCC1sieok)
- [Airflow the perfect match in our analytics pipeline](https://youtu.be/vsn5kurjHwQ) ![Activity badge](https://img.shields.io/youtube/views/vsn5kurjHwQ)
- [Airflow at Société Générale : An open source orchestration solution in a banking environment](https://youtu.be/VApoz5KCguM) ![Activity badge](https://img.shields.io/youtube/views/VApoz5KCguM)
- [Airflow as the next gen of workflow system at Pinterest](https://youtu.be/KpCPfooD5hM) ![Activity badge](https://img.shields.io/youtube/views/KpCPfooD5hM)
- [Improving Airflow's user experience](https://youtu.be/fe59rUezJ5Q) ![Activity badge](https://img.shields.io/youtube/views/fe59rUezJ5Q)
- [Teaching an old DAG new tricks](https://youtu.be/DHDlD-bMM3c) ![Activity badge](https://img.shields.io/youtube/views/DHDlD-bMM3c)
- [Ask me anything with Airflow members](https://youtu.be/tO6IBDPNAcY) ![Activity badge](https://img.shields.io/youtube/views/tO6IBDPNAcY)
- [Using Airflow to speed up development of data intensive tools](https://youtu.be/GTQU8ff_O_4) ![Activity badge](https://img.shields.io/youtube/views/GTQU8ff_O_4)
- [Pipelines on pipelines: Agile CI/CD workflows for Airflow DAGs](https://youtu.be/tY4F9X5l6dg) ![Activity badge](https://img.shields.io/youtube/views/tY4F9X5l6dg)
- [Production Docker image for Apache Airflow](https://youtu.be/wDr3Y7q2XoI) ![Activity badge](https://img.shields.io/youtube/views/wDr3Y7q2XoI)
- [Airflow as an elastic ETL tool](https://youtu.be/_50-JFCsp3I) ![Activity badge](https://img.shields.io/youtube/views/_50-JFCsp3I)
- [How do we reason about the reliability of our data pipeline in Wrike](https://youtu.be/q9pdAlcMo48) ![Activity badge](https://img.shields.io/youtube/views/q9pdAlcMo48)
- [Achieving Airflow observability with Databand](https://youtu.be/aQIZ_Wdy0lA) ![Activity badge](https://img.shields.io/youtube/views/aQIZ_Wdy0lA)
- [From S3 to BigQuery - How a first-time Airflow user successfully implemented a data pipeline](https://youtu.be/yuqXWClbEM8) ![Activity badge](https://img.shields.io/youtube/views/yuqXWClbEM8)


## Best practices, lessons learned and cool use cases
- [How to Best Use DuckDB with Apache Airflow](https://medium.com/apache-airflow/how-to-best-use-duckdb-with-apache-airflow-63a079160d5d) - Tips on integrating [DuckDB](https://duckdb.org/) into Airflow jobs.
- [Airflow Dag Python Package Management](https://www.youtube.com/watch?v=9pykChPp-X4&t=121s) - Managing python package dependencies across 100+ dags can become painful. It's hard to keep track of which packages are used by which dag, and hard to clean up during DAG removal/upgrade. Learn how KubernetesPodOperator and DockerOperator can fix this. 
- [Airflow Dag Management & Versioning](https://youtu.be/a-4yRne3ba4) - Efficently manage DAGs release process by using Git Submodules
- [Testing in Airflow Part 2](https://medium.com/@chandukavar/testing-in-airflow-part-2-integration-tests-and-end-to-end-pipeline-tests-af0555cd1a82) - [Chandu Kavar](https://twitter.com/chandukavar) and [Sarang Shinde](https://www.linkedin.com/in/sarang-shinde-219a4873/) have explained Integration Tests and End-to-End Pipeline Tests.
- [Upgrading & Scaling Airflow at Robinhood](https://robinhood.engineering/upgrading-scaling-airflow-at-robinhood-5b625dfaa2ee) - [Abishek Ray](https://www.linkedin.com/in/abhishek-ray-29210145/) describes how Robinhood tackled upgrading its production Airflow while minimizing downtime.
- [We're all using Airflow wrong and how to fix it](https://medium.com/bluecore-engineering/were-all-using-airflow-wrong-and-how-to-fix-it-a56f14cb0753) - [Jessica Laughlin](https://www.jldlaughlin.com/) of [Bluecore](https://www.bluecore.com/) shares three engineering problems associated with the Airflow design and how to solve them by using the [KubernetesPodOperator](https://github.com/apache/airflow/blob/v1-10-stable/airflow/contrib/operators/kubernetes_pod_operator.py) in two design patterns.
- [Getting started with Data Lineage](https://medium.com/dailymotion/getting-started-with-data-lineage-6307b2b429b3) - [Germain Tanguy](https://www.linkedin.com/in/germain-tanguy/) of [Dailymotion](https://www.dailymotion.com/) shares a data lineage prototype integrated to Apache Airflow.
- [Collaboration between data engineers, data analysts and data scientists](https://medium.com/dailymotion/collaboration-between-data-engineers-data-analysts-and-data-scientists-97c00ab1211f) - [Germain Tanguy](https://www.linkedin.com/in/germain-tanguy/) of [Dailymotion](https://www.dailymotion.com/) shares how to efficiently release in production by collaboration with Apache Airflow.
- [Using Apache Airflow’s Docker Operator with Amazon’s Container Repository](https://www.lucidchart.com/techblog/2019/03/22/using-apache-airflows-docker-operator-with-amazons-container-repository/) - [Brian Campbell](https://www.linkedin.com/in/bvcampbell3) of [Lucid](https://www.lucidchart.com/) has tips for integrating AWS's [ECR](https://aws.amazon.com/ecr/) service with Airflow's DockerOperator.
- [Airflow: Lesser Known Tips, Tricks, and Best Practises](https://medium.com/datareply/airflow-lesser-known-tips-tricks-and-best-practises-cf4d4a90f8f) - [Kaxil Naik](https://www.linkedin.com/in/kaxil/) has explained the lesser-known yet very useful tips and best practises on using Airflow.
- [boundary-layer:Declarative Airflow Workflows](https://codeascraft.com/2018/11/14/boundary-layer%E2%80%89-declarative-airflow-workflows/) - [Kevin McHale](https://www.linkedin.com/in/mchalek) has explained open source project boundary-layer which generates airflow dag with declarative workflows.
- [Testing in Airflow Part 1](https://medium.com/@chandukavar/testing-in-airflow-part-1-dag-validation-tests-dag-definition-tests-and-unit-tests-2aa94970570c) - [Chandu Kavar](https://twitter.com/chandukavar) has explained different categories of tests in Airflow. It includes DAG Validation Tests, DAG Definition Tests, and unit tests.
- [Improving Airflow UI Security](https://wecode.wepay.com/posts/improving-airflow-ui-security) - WePay's [Joy Gao](https://twitter.com/joygao) breaks down the need for Role Based Access Controls (RBAC) and how she introduced it to Airflow.
- [How to Create a Workflow in Apache Airflow to Track Disease Outbreaks in India](https://blog.socialcops.com/engineering/apache-airflow-disease-outbreaks-india/) - [Vinayak Mehta](https://twitter.com/vortex_ape) details how [SocialCops](https://socialcops.com/) uses Airflow to scrape India's Ministry of Health and Family Affairs to generate derived data on possible disease outbreaks.
- [Airflow, Meta Data Engineering, and a Data Platform for the World’s Largest Democracy](https://blog.socialcops.com/technology/engineering/airflow-meta-data-engineering-disha/) - [Vinayak Mehta](https://twitter.com/vortex_ape) talks about identifying data engineering patterns (meta data engineering) to automate DAG generation and how that helped [SocialCops](https://socialcops.com/) to power DISHA, a national data platform where Indian MPs and MLAs monitor the progress of 42 national level schemes.
- [Lessons learnt while Airflow-ing](https://medium.com/@nehiljain/lessons-learnt-while-airflow-ing-32d3b7fc3fbf) and [Airflow Part 2: Lessons learned](https://medium.com/snaptravel/airflow-part-2-lessons-learned-793fa3c0841e) - [Nehil Jain](https://twitter.com/nehiljain) has written a two-part series that covers the value of workflow schedulers, some best practices and pitfalls he found while working with Airflow.  The [second article](https://medium.com/snaptravel/airflow-part-2-lessons-learned-793fa3c0841e) in particular includes many production tips.
- [Why Robinhood uses Airflow](https://robinhood.engineering/why-robinhood-uses-airflow-aed13a9a90c8) - [Vineet Goel](https://twitter.com/vineetik) walks through why financial trading platform [Robinhood](https://robinhood.com/) picked Airflow over alternative work schedulers.
- [What we learned migrating off Cron to Airflow](https://medium.com/videoamp/what-we-learned-migrating-off-cron-to-airflow-b391841a0da4) - [Katie Macias](https://medium.com/@katiemacias) describes [VideoAmp](https://www.videoamp.com/)'s Data Engineering's journey from cron to Airflow.
- [Under the Hood: Building AIR at Qubole](https://www.qubole.com/blog/hood-building-air-qubole/) - [Sreenath Kamath](https://www.linkedin.com/in/sreenath-kamath-66a1b970/) and [Rajat Venkatesh](https://twitter.com/vrajat) write about building [Qubole](https://www.qubole.com/)'s [data discovery, insights and recommendations platform](https://www.qubole.com/blog/building-qdsair-infrastructure/) atop Airflow.
- [Airflow: Why is nothing working? - TL;DR Airflow’s SubDagOperator causes deadlocks](https://medium.com/bluecore-engineering/airflow-why-is-nothing-working-f705eb6b7b04) by [Jessica Laughlin](https://twitter.com/thepressofjess) - Deep dive into troubleshooting a troublesome Airflow DAG with good tips on how to diagnosis problems.
- [Apache Airflow as an External scheduler for distributed systems](https://medium.com/@rako/apache-airflow-as-an-external-scheduler-for-distributed-systems-53b7354d3e48) - [Arunkumar](https://medium.com/@rako) suggests using Airflow as a simple external scheduler for a distributed system.
- [How Sift Trains Thousands of Models using Apache Airflow](https://engineering.siftscience.com/sift-trains-thousands-models-using-apache-airflow/) - Summary of [Sift Science](https://siftscience.com/)'s deployment strategy for its machine learning model pipelines.
- [Apache Airflow at Pandora](https://engineering.pandora.com/apache-airflow-at-pandora-1d7a844d68ee) - [Ace Haidrey](https://www.linkedin.com/in/acehaidrey/) discusses why Pandora chose Airflow and provides a detailed breakdown of their deployment and the infrastructure behind it.
- [Airflow Lessons from the Data Engineering Front in Chicago](https://medium.com/stanton-ventures-insights/airflow-lessons-from-the-data-engineering-front-in-chicago-9489e6ad5c3d) - [Alison Stanton](https://twitter.com/alison985) provides a list of tips to avoid gotchas in Airflow jobs.
- [Data’s Inferno: 7 Circles of Data Testing Hell with Airflow](https://medium.com/wbaa/datas-inferno-7-circles-of-data-testing-hell-with-airflow-cef4adff58d8) - The Wholesale Banking Advanced Analytics team at ING details how they torture test their Airflow DAGs before deployment.
  - [Data Testing with Airflow repository](https://github.com/danielvdende/data-testing-with-airflow)
- [Data quality checkers](https://drivy.engineering/data-quality/) - [Antoine Augusti](https://twitter.com/AntoineAugusti) describes the framework [drivy](https://www.drivy.co.uk/) has built atop Airflow to test their datasets for completeness, consistency, timeliness, uniquess, validity and accuracy.
- [Building WePay's data warehouse using BigQuery and Airflow](https://wecode.wepay.com/posts/wepays-data-warehouse-bigquery-airflow) - The inestimable [Chris Riccomini](https://twitter.com/criccomini) describes how [WePay](https://go.wepay.com/), one of the first adopters of Airflow, integrated into their [Google Cloud Compute](https://cloud.google.com/compute/) environment.
- [Using Apache Airflow to Create Data Infrastructure in the Public Sector](https://www.astronomer.io/blog/using-apache-airflow-to-create-data-infrastructure/) - Despite an unfortunately very heavy sales pitch tone, this article blog post describes how [ARGO Labs](http://www.argolabs.org/), a non-profit data organization, utilizes Airflow for ETLing in public sector data.
- [ETL with airflow](https://gtoonstra.github.io/etl-with-airflow/) - ETL core principles and several end-to-end docker-based examples including Kimball, Data Vault on Hive and some simpler examples.
- [How to aggregate data for BigQuery using Apache Airflow](https://cloud.google.com/blog/big-data/2017/07/how-to-aggregate-data-for-bigquery-using-apache-airflow) - Example of how to use Airflow with Google BigQuery to power a Data Studio dashboard.
- [Productionizing ML with workflows at Twitter](https://blog.twitter.com/engineering/en_us/topics/insights/2018/ml-workflows.html) - In depth post on why and how Twitter use Airflow for ML workflows including including custom operators and a custom UI embedded in in the Airflow web interface.
- [Running Apache Airflow At Lyft](https://eng.lyft.com/running-apache-airflow-at-lyft-6e53bb8fccff) - This provides an overview on how Lyft operates Apache Airflow in production(monitoring, customization, etc).
- [Deploying Apache Airflow in Azure to build and run data pipelines](https://azure.microsoft.com/sv-se/blog/deploying-apache-airflow-in-azure-to-build-and-run-data-pipelines/) - It talks about running Airflow on Azure.
- [The Zen of Python and Apache Airflow](https://blog.godatadriven.com/zen-of-python-and-apache-airflow) - Blog post about how the Zen of Python can be applied to Airflow code.
- [Securing Apache Airflow UI WITH DAG Level Access](https://eng.lyft.com/securing-apache-airflow-ui-with-dag-level-access-a7bc649a2821) - Blog post about Airflow DAG level access and how Lyft uses it.
- [Upgrading Airflow with Zero Downtime](https://medium.com/flatiron-engineering/upgrading-airflow-with-zero-downtime-8df303760c96) - A detailed article on how to deploy Airflow with zero downtime.
- [Building a Production-Level ETL Pipeline Platform Using Apache Airflow](https://towardsdatascience.com/building-a-production-level-etl-pipeline-platform-using-apache-airflow-a4cf34203fbd) - This post describes how the system management team at Cerner uses Airflow.
- [Bare minimal Airflow on Kubernetes (Local, EKS, AKS)](https://github.com/stwind/airflow-on-kubernetes) - An article on deploying Airflow on local Kubernetes, AWS EKS and Azure AKS with bare minimal setup.
- [Breaking up the Airflow DAG monorepo](https://tech.scribd.com/blog/2020/breaking-up-the-dag-repo.html) - This post describes how to support managing Airflow DAGs from multiple git repos through S3.
- [Improving Performance of Apache Airflow Scheduler](https://medium.com/databand-ai/improving-performance-of-apache-airflow-scheduler-507f4cb6462a) - A story of an adventure that allowed [Databand](https://databand.ai/) to speed up DAG parsing time 10 times
- [How SSENSE is using Apache Airflow to do Data Lineage on AWS](https://medium.com/ssense-tech/principled-data-engineering-part-ii-data-governance-30297abb2446) - Exploring the fundamental themes of architecting and governing a data lake on AWS using Apache Arflow.
- [Monitoring Airflow with Prometheus, StatsD and Grafana](https://databand.ai/blog/everyday-data-engineering-monitoring-airflow-with-prometheus-statsd-and-grafana/) - A guide on how to setup operational dashboards to production cluster by [Databand](http://databand.ai) and get high level visibility on Airflow.
- [Complex tasks orchestration at Hurb with Apache Airflow](https://medium.com/hurb-engineering/complex-tasks-orchestration-at-hurb-with-apache-airflow-dcb423c4dee6) - This post shows how [Hurb](https://hurb.com) uses Apache Airflow to orchestrate complex tasks and how it leverages DAG dynamic creation to improve development speed.
- [Automating data export from CrateDB to S3 with Apache Airflow](https://community.crate.io/t/cratedb-and-apache-airflow-part-one/901) A tutorial on how to automate recurrent queries in [CrateDB](https://crate.io/) with Apache Airflow, such as periodic data export to Amazon S3.
- [Implementation of Data Retention Policy with CrateDB and Apache Airflow](https://community.crate.io/t/cratedb-and-apache-airflow-implementation-of-data-retention-policy/913) A step by step tutorial on how to implement effective data retention policy with [CrateDB](https://crate.io/) and Apache Airflow.
- [Ingesting NYC Taxi Data From S3 Into CrateDB](https://community.crate.io/t/cratedb-and-apache-airflow-building-a-data-ingestion-pipeline/926) - Describes how to build a database ingestion pipeline in Airflow by loading CSV files from S3 into [CrateDB](https://crate.io/).

## Books, blogs, podcasts, and such
- [Data Pipelines with Apache Airflow](https://www.manning.com/books/data-pipelines-with-apache-airflow) - A Manning book (Early Access September 2019) on Airflow.
- [The Airflow Podcast](https://soundcloud.com/the-airflow-podcast) - A semiregular podcast discussing all things Airflow.
- [Maxime Beauchemin](https://medium.com/@maximebeauchemin) - Maxime's blog on medium that gives insight into the philosophy behind Apache Airflow.
- [Robert Chang](https://medium.com/@rchang) - Blog posts about data engineering with Apache Airflow, explains why and has examples in code.
- [Handling Airflow logs with Kubernetes Executor](https://szeevs.medium.com/handling-airflow-logs-with-kubernetes-executor-25c11ea831e4) - A blogpost that outlines how you can set up remote S3 logging when using KubernetesExecutor, without creating complex infrastructure.
- [Airflow 2.0: DAG Authoring Redesigned](https://turbaszek.medium.com/airflow-2-0-dag-authoring-redesigned-651edc397178) - Blog post about new ways of writing DAGs in Airflow 2.0.
- [Airflow 2.0 Providers](https://higrys.medium.com/airflow-2-0-providers-1bd21ba3bd93) - Blog post about providers packages in Airflow 2.0.

## Slide deck presentations and online videos
- 2020-Feb: [Apache Airflow @ Umuzi.org](https://www.youtube.com/watch?IAmWKZDmvek) ![Activity badge](https://img.shields.io/youtube/views/IAmWKZDmvek) - [Sheena O'Connell](https://twitter.com/sheena_oconnell) discusses how South Africa-based tech bootcamp [Umuzi](https://www.umuzi.org/) uses Airflow.
- [Apache Airflow YouTube tutorials](https://www.youtube.com/playlist?list=PL79i7SgJCJ9hu5GqcA091h6zuewmsvSyy) - [Marc Lamberti](https://twitter.com/marclambertiml) has created a series of YouTube tutorials covering many aspects of Airflow concepts, configuration and deployment.
- [Advanced Data Engineering Patterns with Apache Airflow](https://www.youtube.com/watch?23_1WlxGGM4) ![Activity badge](https://img.shields.io/youtube/views/23_1WlxGGM4) - Video of [Maxime Beauchemin](https://medium.com/@maximebeauchemin)'s talk that briefly introduces Airflow and then goes into more advanced use cases, including self-servive SQL queries, building A/B testing metrics frameworks and machine learning feature extraction all via Airflow.  The slides are available separately [here](https://prezi.com/p/adxlaplcwzho/advanced-data-engineering-patterns-with-apache-airflow/).
- [Modern Data Pipelines with Apache Airflow](https://blog.tedmiston.com/momentum-2018-airflow-talk/) - A talk given by [Taylor Edmiston](https://twitter.com/kicksopenminds) and [Andy Cooper](https://twitter.com/andscoop) from Astronomer.io at Momentum Dev Con 2018 on getting started with Airflow, custom components, example DAGs, and the Astronomer Airflow CLI.
- [Building Better Data Pipelines using Apache Airflow](https://www.slideshare.net/r39132/building-better-data-pipelines-using-apache-airflow-94060954) - Slides from [Sid Anand](https://twitter.com/r39132)'s talk at QCon 18 with a thorough overview of Airflow and its architecture.
- [Airflow and Spark Streaming at Astronomer](https://paper.dropbox.com/doc/Airflow-Spark-talk-v2.0-5own4Nlz8MhdwKQ8QhIqj?_tk=share_copylink) - How Astronomer uses dynamic DAGs to run Spark Streaming jobs with Airflow.
- [Apache Airflow in the Cloud: Programmatically orchestrating workloads with Python](https://www.slideshare.net/kaxil/apache-airflow-in-the-cloud-programmatically-orchestrating-workloads-with-python-pydata-london-2018-95391267) - Slides from [Kaxil Naik](https://twitter.com/kaxil)'s & [Satyasheel](https://twitter.com/ss6012) talk at PyData London 18 introducing the basics of Airflow and how to orchestrate workloads on Google Cloud Platform (GCP).
- [Developing elegant workflows in Python code with Apache Airflow](https://eventil.com/presentations/j2sK9R) - [Michał Karzyński](https://twitter.com/postrational) at [Europython](https://ep2018.europython.eu/) gives a brief introduction to Airflow concepts including the role of workflow managers, DAGs and operators.  Link includes both video and slides.
- [Data Pipeline Management](https://www.youtube.com/watch?mjn1LAZ_Y38) ![Activity badge](https://img.shields.io/youtube/views/mjn1LAZ_Y38) - [Ben Goldberg](https://www.linkedin.com/in/benjamin-goldberg-50247169/) walks the Chicago Kubernetes Meetup through how [SpotHero](https://spothero.com/) uses Airflow. Additionally, Ben has a very [complete slidedeck](https://docs.google.com/presentation/d/1hc12cFs5TmEajLwYNASLwz_C17Q5tyd__6oXzI16A9A/edit#slide=id.g320d39a12c_0_1017) of how Airflow plays within Kubernetes.
- [How I learned to time travel, or, data pipelining and scheduling with Airflow](https://www.slideshare.net/LauraLorenz4/how-i-learned-to-time-travel-or-data-pipelining-and-scheduling-with-airflow) - Comprehensive deck by [Laura Lorenz](https://twitter.com/lalorenz6) for why Airflow is necessary and how [Industry Dive](https://www.industrydive.com/) uses it.
- [Introduction to Apache Airflow - Data Day Seattle 2016](https://www.slideshare.net/r39132/introduction-to-apache-airflow-data-day-seattle-2016) - [Sid Anand](https://twitter.com/r39132) gives a thorough introduction to Airflow and how it was used at [Agari](https://www.agari.com/).
- [Operating Data Pipeline With Airflow - Airflow Meetup April-2018](https://speakerdeck.com/vananth22/operating-data-pipeline-with-airflow-at-slack) - [Ananth Packkildurai](https://twitter.com/ananthdurai) talks about scaling airflow Local Executor and best practices to operate data pipeline at [Slack](https://slack.com/).
- [Apache Airflow at WePay](https://wepayinc.app.box.com/s/hf1chwmthuet29ux2a83f5quc8o5q18k) - [Chris Riccomini](https://twitter.com/criccomini) discusses why WePay chose Airflow and provides a detailed breakdown of their deployment and the infrastructure behind it.
- [Elegant data pipelining with Apache Airflow](https://www.youtube.com/watch?v=neuh_2_zrt8) - Talks from [Bolke de Bruin](https://twitter.com/bolke2028) and [Fokko Driesprong](https://twitter.com/fokkodriesprong) at PyData Amsterdam 2018 about methodologies that provide clarity in ETL using Airflow.
- [Airflow @ Lyft](https://www.slideshare.net/taofung/airflow-at-lyft) - Talks from [Tao Feng](https://github.com/feng-tao) at SF big data analytics meetup about how Lyft monitors running Airflow in production.
- [Manageable data pipelines with Airflow and Kubernetes](https://youtu.be/bcF24AdG1o4) ![Activity badge](https://img.shields.io/youtube/views/bcF24AdG1o4)- Talk by [Jarek Potiuk](https://github.com/potiuk) and [Szymon Przedwojski](https://github.com/sprzedwojski). A introductory talk on Airflow from GDG Warsaw DevFest 2018.
- [Migrating Apache Oozie Workflows to Apache Airflow](https://www.youtube.com/watch?8L1F-6t_6Ao) ![Activity badge](https://img.shields.io/youtube/views/8L1F-6t_6Ao) - Talk from [Szymon Przedwojski](https://github.com/sprzedwojski) from Airflow Bay Area Meetup June 2018 about Oozie-to-Airflow migration tool.
- [Building data lakes with Apache Airflow](https://www.youtube.com/watch?MM8tfTrcnfk) ![Activity badge](https://img.shields.io/youtube/views/MM8tfTrcnfk) - Talk by [Bas Harenslak](https://github.com/BasPH) and [Julian de Ruiter](https://github.com/jrderuiter) at the Amsterdam Apache Airflow September 2018 meetup about building data lakes with Apache Airflow as the spider in the web managing all data flows.
- [First Warsaw Apache Airflow Meetup](https://youtu.be/Nr4Pp1SNXeU) ![Activity badge](https://img.shields.io/youtube/views/Nr4Pp1SNXeU) - Live streamed recording from the first Apache Airflow Meetup in Warsaw in October 2019.
- [What's coming in Apache Airflow 2.0](https://youtu.be/znowFIBK1lk) ![Activity badge](https://img.shields.io/youtube/views/znowFIBK1lk) - joint talk by [Ash Berlin-Taylor](https://github.com/ashb), [Kaxil Naik](https://github.com/kaxil), [Jarek Potiuk](https://github.com/potiuk), [Kamil Breguła](https://github.com/mik-laj), [Daniel Imbermann](https://github.com/dimberman), and [Tomek Urbaszek](https://github.com/turbaszek) at the [Online NYC Meetup, 13th of May 2020](https://www.meetup.com/NYC-Apache-Airflow-Meetup/events/270483933/)
- [Airflow Breeze - Development and Test Environment for Apache Airflow](https://youtu.be/4MCTXq-oF68) ![Activity badge](https://img.shields.io/youtube/views/4MCTXq-oF68) - Screencast showing how to use Breeze environment by [Jarek Potiuk](https://github.com/potiuk).

## Libraries, Hooks, Utilities
- [Domino](https://github.com/Tauffer-Consulting/domino) - Domino is an open source Graphical User Interface platform for creating data and Machine Learning workflows (DAGs) with no-code, visually intuitive drag-and-drop actions. It is also a standard for publishing and sharing your Python code so it can be automatically used by anyone, directly in the GUI.
- [Airflow-Helper](https://github.com/xnuinside/airflow-helper) - setting up Airflow Variables, Connections, and Pools from a YAML configuration file.
- [AirFly](https://github.com/ryanchao2012/airfly) - Auto generate Airflow's dag.py on the fly.
- [DEAfrica Airflow](https://github.com/digitalearthafrica/deafrica-airflow) - Airflow libraries used by [Digital Earth Africa](https://digitalearthafrica.org/), an humanitarian effort to utilize satellite imagery of Africa.
- [Airflow plugins](https://github.com/airflow-plugins/) - Central collection of repositories of various plugins for Airflow, including mailchimp, trello, sftp, GitHub, etc.
- [fileflow](https://github.com/industrydive/fileflow) - Collection of modules to support large data transfers between Airflow operators through either local file system or S3.  This addresses a gap where data is too large for XCOMs but too small or inconvenient for loading directly in the operator.  Built by [Industry Dive](https://www.industrydive.com/).
- [fairflow](https://github.com/michaelosthege/fairflow) - Library to abstract away Airflow's Operators with functional pieces that transform the data from one operator to another.
- [airflow-maintenance-dags](https://github.com/teamclairvoyant/airflow-maintenance-dags) - [Clairvoyant](http://clairvoyantsoft.com/) has a repo of Airflow DAGs that operator on Airflow itself, clearing out various bits of the backing metadata store.
- [test_dags](https://gist.github.com/criccomini/2862667822af7fae8b55682faef029a7) - a more complete solution for DAG integrity tests ([first Circle of Data’s Inferno are the first](https://medium.com/@ingwbaa/datas-inferno-7-circles-of-data-testing-hell-with-airflow-cef4adff58d8).
- [dag-factory](https://github.com/ajbosco/dag-factory) - A library for dynamically generating Apache Airflow DAGs from YAML configuration files.
- [whirl](https://github.com/godatadriven/whirl) - Fast iterative local development and testing of Apache Airflow workflows.
- [airflow-code-editor](https://github.com/andreax79/airflow-code-editor) - A plugin for Apache Airflow that allows you to edit DAGs in browser.
- [Pylint-Airflow](https://github.com/BasPH/pylint-airflow) - A Pylint plugin for static code analysis on Airflow code.
- [afctl](https://github.com/qubole/afctl) - A CLI tool that includes everything required to create, manage and deploy airflow projects faster and smoother.
- [Dag Dependencies viewer](https://github.com/ms32035/airflow-dag-dependencies) - A plugin which creates a view to visualize dependencies between the Airflow DAGs
- [Airflow ECR Plugin](https://github.com/asandeep/airflow-ecr-plugin) - Plugin to refresh AWS ECR login token at regular intervals. This is helpful where DockerOperator needs to pull images hosted on ECR.
- [AirflowK8sDebugger](https://github.com/Javier162380/AirflowKuberentesDebugger) - A library for generate k8s pod yaml templates from an Airflow dag using the KubernetesPodOperator.
- [Oozie to Airflow](https://github.com/GoogleCloudPlatform/oozie-to-airflow) - A tool to easily convert between [Apache Oozie](http://oozie.apache.org/) workflows and Apache Airflow workflows.
- [Airflow Ditto](https://github.com/angadsingh/airflow-ditto) - An extensible framework to do transformations to an Airflow DAG and convert it into another DAG which is flow-isomorphic with the original DAG, to be able to run it on different environments (e.g. on different clouds, or even different container frameworks - Apache Spark on YARN vs Kubernetes). Comes with out-of-the-box support for EMR-to-HDInsight-DAG transforms.
- [gusty](https://github.com/chriscardillo/gusty) - Create a DAG using any number of YAML, Python, Jupyter Notebook, or R Markdown files that represent individual tasks in the DAG. gusty also configures dependencies, DAGs, and TaskGroups, features support for your local operators, and more. A fully containerized demo is available [here](https://github.com/chriscardillo/gusty-demo).
- [Meltano](https://www.meltano.com) - Open source, self-hosted, CLI-first, debuggable, and extensible ELT tool that embraces [Singer](https://www.singer.io) for extraction and loading, leverages [dbt](https://www.getdbt.com) for transformation, and [integrates with Airflow for orchestration](https://meltano.com/#orchestration).
- [DAG checks](https://github.com/politools/dag-checks) - The dag-checks consist of checks that can help you in maintaining your Apache Airflow instance.
- [Airflow DVC plugin](https://github.com/covid-genomics/airflow-dvc) - Plugin for open-source version-control system for data science and Machine Learning pipelines - [DVC](https://dvc.org/).
- [Airflow Vars](https://github.com/omerzamir/airflow-vars) - A CLI for variables management, created for CD-Pipelines in order to allow robust and safe variables management.
- [airflow-priority](https://github.com/airflow-laminar/airflow-priority) - Priority Tags (P1, P2, etc) for Airflow DAGs with automated alerting to Datadog, New Relic, Slack, Discord, and more
- [airflow-config](https://github.com/airflow-laminar/airflow-config) - [Pydantic](https://pydantic.dev) / [Hydra](https://hydra.cc) based configuration system for DAG and Task arguments
- [airflow-supervisor](https://github.com/airflow-laminar/airflow-supervisor) - Easy-to-use [supervisor](http://supervisord.org) integration for long running or "always on" DAGs

## Meetups
- [Amsterdam Apache Airflow Meetup](https://www.meetup.com/Amsterdam-Airflow-meetup)
- [Bangalore Apache Airflow Meetup](https://www.meetup.com/Bangalore-Apache-Airflow-Meetup/)
- [Bay Area Apache Airflow Meetup](https://www.meetup.com/Bay-Area-Apache-Airflow-Incubating-Meetup)
- [London Apache Airflow Meetup](https://www.meetup.com/London-Apache-Airflow-Meetup/)
- [Melbourne Apache Airflow Meetup](https://www.meetup.com/Melbourne-Apache-Airflow-Meetup/)
- [New York City Apache Airflow Meetup](https://www.meetup.com/NYC-Apache-Airflow-Meetup/)
- [Paris Apache Airflow Meetup](https://www.meetup.com/Paris-Apache-Airflow-Meetup/)
- [Portland Apache Airflow Meetup](https://www.meetup.com/Portland-Apache-Airflow-Meetup/)
- [Tokyo Apache Airflow Meetup](https://www.meetup.com/Tokyo-Apache-Airflow-incubating-Meetup/)
- [Warsaw Apache Airflow Meetup](https://www.meetup.com/Warsaw-Airflow-Meetup)

## Commercial Airflow-as-a-service providers
- [Google Cloud Composer](https://cloud.google.com/composer/) - Google Cloud Composer is a managed service built atop Google Cloud and Airflow.
- [Qubole](http://docs.qubole.com/en/latest/user-guide/airflow/) - Qubole is mainly known as a service-and-support company for Apache Hive, but also provides Airflow as a component of its platform.
- [Astronomer.io](https://www.astronomer.io/) - Astronomer provides complete ETL lifecycle solutions and appears to be entirely focused on providing Airflow-based products.
- [AWS MWAA](https://aws.amazon.com/managed-workflows-for-apache-airflow/) - Amazon Managed Workflows for Apache Airflow (MWAA) is a managed orchestration service for Apache Airflow that makes it easier to set up and operate end-to-end data pipelines in the cloud at scale.

## Cloud Composer resources

*This section contains articles that apply to [Cloud Composer](https://cloud.google.com/composer) — a service built by Google Cloud based on Apache Airflow. Tricks and solutions are described here that are intended for Cloud Composer, but may be applicable to vanilla Airflow.*

- [Enabling Autoscaling in Google Cloud Composer](https://medium.com/traveloka-engineering/enabling-autoscaling-in-google-cloud-composer-ac84d3ddd60) - Supercharge your Cloud Composer deployment while saving up some cost during idle periods.
- [Scale your Composer environment together with your business](https://cloud.google.com/blog/products/data-analytics/scale-your-composer-environment-together-your-business) - The Celery Executor architecture and ways to ensure high scheduler performance.
- [pianka.sh](https://github.com/politools/airflow-pianka-sh) - Missing command in the gcloud tool. This tool facilitates some administrative tasks.
- [The Smarter Way of Scaling With Composer’s Airflow Scheduler on GKE](https://medium.com/swlh/the-smarter-way-of-scaling-with-composers-airflow-scheduler-on-gke-88619238c77b) - [Roy Berkowitz](https://www.linkedin.com/in/roy-berkowitz-19922aa9/) discusses more effective use of nodes in the Cloud Composer service.
- [Better together: orchestrating your Data Fusion pipelines with Cloud Composer](https://cloud.google.com/blog/products/data-analytics/easier-management-for-cloud-etl-elt-pipelines) - [Rachael Deacon-Smith](https://www.linkedin.com/in/rachael-deacon-smith-82660172) provides an overview of the operator for Datafusion use case on Cloud Composer.

## Non-English resources
- [Airflow Documentation-Chinese](https://airflow.apachecn.org) - (🇨🇳Chinese) [Apachecn](https://github.com/apachecn) has translated the Airflow official documentation.
- [Gestion de Tâches avec Apache Airflow](http://ncrocfer.github.io/posts/gestion-de-taches-avec-apache-airflow/) - (🇫🇷French) [Nicolas Crocfer](https://github.com/ncrocfer) - Overview of Airflow, basic concepts and how to write and trigger a DAG.
- [Airflowはすごいぞ！100行未満で本格的なデータパイプライン](https://qiita.com/hankehly/items/1f02a34740276d1b8f0f) - (🇯🇵Japanese) [Hank Ehly](https://github.com/hankehly) gives a comprehensive introduction to Airflow's main concepts, and demonstrates how to create a data pipeline in less than 100 lines of code.
- [apache airflow 複数worker構成のalpine版docker imageを作った](https://sekailab.com/wp/2018/04/05/apache-airflow-multinode-alpine-docker-image/) - (🇯🇵Japanese) [Akio Ohta](https://github.com/Drunkar) walks through his [Docker image](https://hub.docker.com/r/drunkar/airflow-alpine/) for deploying an Alpine-based Airflow system.
- [AirflowのタスクログをS3に保存する方法](https://qiita.com/hankehly/items/5e2493cdf2c95ae42449) - (🇯🇵Japanese) [Hank Ehly](https://github.com/hankehly) shows step-by-step how to configure sending task logs to AWS S3.
- [【徹底解説】Airflow Fluentd Elasticsearch Docker の連携方法](https://qiita.com/hankehly/items/f525465bba8b47da0b76) - (🇯🇵Japanese) [Hank Ehly](https://github.com/hankehly) describes how to handle worker task logs with Fluentd, Elasticsearch and Docker.
- [Apache Airflow – Kaikki Mitä Meillä On, Lähtee Dageista](https://www.solita.fi/blogit/apache-airflow-kaikki-mita-meilla-on-lahtee-dageista/) - (🇫🇮Finnish) [Olli Iivonen](https://www.linkedin.com/in/oiivonen/)'s overview of Airflow, concepts and Airflow's usage at [Solita](https://www.solita.fi/).
- [Airflow - Automatizando seu fluxo de trabalho](https://speakerdeck.com/gilsondev/airflow-automatizando-seu-fluxo-de-trabalho) - (🇧🇷Portuguese) [Gilson Filho](https://github.com/gilsondev)'s overview of Airflow, concept and basic use.
- [Panduan Dasar Apache Airflow](https://imamdigmi.github.io/post/tutorial-airflow-part-1/) - (🇮🇩Indonesian) [Imam Digmi](https://github.com/imamdigmi) - Overview of Airflow, concept, basic use with use case.
- [Airflow](https://blog.duyet.net/tag/airflow) - (🇻🇳Vietnamese) [Duyet Le](https://github.com/duyet) - Overview of Airflow, concept, basic use with use case.
- [Michael Yang's Airflow Chinese Blog Posts](https://blog.csdn.net/Young2018/article/details/109105370?spm=1001.2014.3001.5501) - Michael Yang's Chinese blog posts about data engineering with Apache Airflow, conclude basic tutorials and devops skills.

## Sample projects

- [Google Cloud Platform Public Datasets Pipelines](https://github.com/GoogleCloudPlatform/public-datasets-pipelines) - Cloud-native, data pipeline architecture for onboarding datasets to the Google Cloud Public Datasets Program.
- [GitLab Data Team DAGs](https://gitlab.com/gitlab-data/analytics/-/tree/master/dags) - Several DAGs used to build analytics for the GitLab platform.
- [deploy-airflow-on-ecs-fargate](https://github.com/hankehly/deploy-airflow-on-ecs-fargate) - Deploy to Amazon ECS Fargate. Demonstrates various features and configurations, such as autoscaling workers to zero, S3 remote logging and secret management.

## License

[![CC0](http://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

To the extent possible under law, [Jakob Homan](https://github.com/jghoman) has waived all copyright and related or neighboring rights to this work.
