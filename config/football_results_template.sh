curl -XPUT localhost:9200/_template/football_results -d '
{
    "template" : "football_results",
    "settings" : {
      "index.refresh_interval" : "10s",
      "number_of_shards" : 1
    },
    "mappings" : {
      "_default_" : {
        "dynamic_templates" : [ {
         "string_fields" : {
           "match" : "*",
           "match_mapping_type" : "string",
           "mapping" : {
             "type" : "multi_field",
               "fields" : {
                 "{name}" : {"type": "string", "index" : "not_analyzed", "ignore_above" : 256},
                 "{name}.analyzed" : {"type": "string", "index" : "analyzed", "omit_norms" : true, "index_options" : "docs"}
               }
           }
         }
       } ],
        "properties" : {
          "@version" : {
            "index" : "not_analyzed",
            "type" : "string"
          }
        },
        "_all" : {
          "enabled" : true
        }
      }
    },
    "aliases" : { }
}'
