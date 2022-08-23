with
level1 as
(
	select
	records.arrayvalue.time as time,
	records.arrayvalue.properties.flows as flows
	from nsg n
	cross apply getarrayelements(n.records) as records
),
level2 as
(
	select
	time, getarrayelement(flows,0) as flows
	from level1
),
level3 as
(
	select
	time,getarrayelement(flows.flows,0) as flows
	from level2
),
level4 as
(
	select s.time,flowtuples.arrayvalue as flowtuple
)
