# DEMO - Football Results from 8 European Leagues

## Overview

The following demo is based on football results from 8 European leagues, covering 5 complete seasons from 2009/10 up to 2013/14. The data was downloaded from the [football-data.co.uk](http://football-data.co.uk/index.php) website.

The data set contains a CSV file per country and season. Each line contains statistics about a single game. Results from the major European leagues (England, Spain, Italy, France and Germany) contain a wider range of match statistics that results from smaller leagues (Netherlands, Belgium and Portugal).

In order to allow comparisons between teams as well as leagues, the match results have been indexed per game and team, meaning that there are 2 documents for each match, one for the home team and one for the away team. This has been implemented through 2 separate logstash configuration files.

Before using these configuration files, the path to the directory holding the actual data files need to be updated.

There is also a mapping template available for the index.

## Installation

In order to load this demo data, perform the following steps:

* Update the input directory path in **matchdata_home.conf** and **matchdata_away.conf**.
* Run **football_results_template.sh** in order to upload mapping template.
* Run logstash vith the **matchdata_home.conf** configuration file.
* Remove the generated .sincedb file.
* Run logstash vith the **matchdata_away.conf** configuration file.



