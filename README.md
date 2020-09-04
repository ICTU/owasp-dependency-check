# Deprecated

The original use-case for this image was to provide an embedded up-to-date NVD database to prevent from being blocked by NVD because of too many downloads each time the image starts. This is not the case anymore, so it is better to use the original image:

https://www.owasp.org/index.php/OWASP_Dependency_Check
[Docker image] https://hub.docker.com/r/owasp/dependency-check

# OWASP Dependency Check with pre-seeded database

 [![license](https://img.shields.io/badge/license-MIT-blue.svg?style=plastic)](https://github.com/ICTU/owasp-dependency-check/blob/master/LICENSE)

## About

A container based on [OWASP Dependency Check](https://www.owasp.org/index.php/OWASP_Dependency_Check) CLI, along with a pre-seeded database to speed up scans and prevent hitting rate limits from the database servers.

## Install

`$ docker pull ictu/owasp-dependency-check`

## Usage

###### run with default settings

`$ docker run --rm -v <project_source>:/tmp/src -v <report_destination_directory>:/tmp/reports -w /tmp/reports ictu/owasp-dependency-check`

###### run with additional arguments

`$ docker run --rm -v <project_source>:/tmp/src -v <report_destination_directory>:/tmp/reports -w /tmp/reports ictu/owasp-dependency-check --enableExperimental --disableBundleAudit "true"`

### Optional Environment Variables

`PROJECT_NAME` Default "generic". Set the project name for the generated report.
