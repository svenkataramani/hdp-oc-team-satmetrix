use hdp_oc_team;

CREATE TABLE hdp_oc_team.shopnpsurl
(
shopper_id     	string,
shopper_url    	string,
loaddt 		date
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE
;