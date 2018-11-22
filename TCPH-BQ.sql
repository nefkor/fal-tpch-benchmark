create table aol_tpch100.part (

	p_partkey		int64,
	p_name			string,
	p_mfgr			string,
	p_brand			string,
	p_type			string,
	p_size			int64,
	p_container		string,
	p_retailprice	float64,
	p_comment		string
,
    end_line                  STRING
);

create table aol_tpch100.supplier (
	s_suppkey		int64,
	s_name			string,
	s_address		string,
	s_nationkey		int64 not null, -- references n_nationkey
	s_phone			string,
	s_acctbal		float64,
	s_comment		string
,
    end_line                  STRING
);

create table aol_tpch100.partsupp (
	ps_partkey		int64 not null, -- references p_partkey
	ps_suppkey		int64 not null, -- references s_suppkey
	ps_availqty		int64,
	ps_supplycost	float64,
	ps_comment		string
,
    end_line                  STRING
);

create table aol_tpch100.customer (
	c_custkey		int64,
	c_name			string,
	c_address		string,
	c_nationkey		int64 not null, -- references n_nationkey
	c_phone			string,
	c_acctbal		float64,
	c_mktsegment	string,
	c_comment		string
,
    end_line                  STRING
);

create table aol_tpch100.orders (
	o_orderkey		int64,
	o_custkey		int64 not null, -- references c_custkey
	o_orderstatus	string,
	o_totalprice	float64,
	o_orderdate		date,
	o_orderpriority	string,
	o_clerk			string,
	o_shippriority	int64,
	o_comment		string
,
    end_line                  STRING
);

create table aol_tpch100.lineitem (
	l_orderkey		int64 not null, -- references o_orderkey
	l_partkey		int64 not null, -- references p_partkey (compound fk to partsupp)
	l_suppkey		int64 not null, -- references s_suppkey (compound fk to partsupp)
	l_linenumber	int64,
	l_quantity		float64,
	l_extendedprice	float64,
	l_discount		float64,
	l_tax			float64,
	l_returnflag	STRING,
	l_linestatus	STRING,
	l_shipdate		date,
	l_commitdate	date,
	l_receiptdate	date,
	l_shipinstruct	STRING,
	l_shipmode		STRING,
	l_comment		STRING
,
    end_line                  STRING
);

create table aol_tpch100.nation (
	n_nationkey		int64,
	n_name			string,
	n_regionkey		int64 not null,  -- references r_regionkey
	n_comment		string
,
    end_line                  STRING
);

create table aol_tpch100.region (
	r_regionkey	int64,
	r_name		string,
	r_comment	string
,
    end_line                  STRING
);