# fluentd-es-aws

This is a fluentd daemon for collecting kubernetes logs and sending them to AWS ElasticSearch. This is adapted from the [original image](https://github.com/cheungpat/fluentd-es-aws/), which was based on the  kubernetes [fluentd-es-image](https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/fluentd-elasticsearch/fluentd-es-image).

You must configure the following environment variables:

* `AWS_ELASTICSEARCH_URL` (with `https://` appended by the ElasticSearch endpoint)
* `AWS_REGION`
* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`
* `LOGSTASH_PREFIX`
