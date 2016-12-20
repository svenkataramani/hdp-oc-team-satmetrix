#!/bin/sh

kinit -R -k -t /home/hdp_oc_team/kerberos/hdp_oc_team.keytab hdp_oc_team@DC1.CORP.GD
#!hive -f /home/hdp_oc_team/hivescripts/satmetrix.hql;
#!hadoop jar ${HOME}/tdch-1.1.1.jar com.teradata.hadoop.tool.TeradataExportTool -classname com.teradata.jdbc.TeraDriver -url jdbc:teradata://godaddy3.prod.phx3.gdg/DATABASE=P_HadoopImp_S -username P_BTCH_HadoopImp -password P_BTCH_HadoopImp -jobtype hdfs -fileformat textfile -method multiple.fastload -batchsize 20000 -separator "|" -sourcepaths /user/hdp_oc_team/hdp_oc_team.db/shopnpsurl -targettable  ShopNPSURL_STG  -nullnonstring "\N" -targetfieldnames "ShopAcctID, ShopNPSURL, LoadDt";
#!bteq -c ASCII < /home/hdp_oc_team/bteqscripts/satmetrix.btq;

