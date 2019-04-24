-- Drop table

-- DROP TABLE public.accountdetails;

CREATE TABLE public.accountdetails (
	accountsysid serial NOT NULL,
	assignedaccountid bpchar(100) NOT NULL,
	firstname bpchar(100) NULL,
	lastname bpchar(100) NULL,
	CONSTRAINT accountdetails_assignedaccountid_key UNIQUE (assignedaccountid),
	CONSTRAINT accountdetails_pkey PRIMARY KEY (accountsysid)
);

-- Drop table

-- DROP TABLE public.accountdevice;

CREATE TABLE public.accountdevice (
	deviceid serial NOT NULL,
	accountsysid int4 NULL,
	cardtype int4 NULL,
	devicename text NULL,
	activestatus int4 NULL,
	uuid bpchar(100) NULL,
	communicationchannel bpchar(100) NULL,
	identityid bpchar(100) NULL,
	privateauthcertificate bytea NOT NULL,
	CONSTRAINT accountdevice_pkey PRIMARY KEY (deviceid)
);

-- Drop table

-- DROP TABLE public.gatewaydevice;

CREATE TABLE public.gatewaydevice (
	deviceid serial NOT NULL,
	devicename text NULL,
	installedlongitude numeric NULL,
	installedlatitude numeric NULL,
	uuid bpchar(100) NULL,
	activestatus int4 NULL,
	communicationchannel bpchar(100) NULL,
	identityid bpchar(100) NULL,
	privateauthcertificate bytea NOT NULL,
	sourceip text NULL,
	CONSTRAINT gatewaydevice_pkey PRIMARY KEY (deviceid)
);

-- Drop table

-- DROP TABLE public.messagelog;

CREATE TABLE public.messagelog (
	messageid serial NOT NULL,
	submittedtime timestamp NULL DEFAULT now(),
	message text NULL,
	CONSTRAINT messagelog_messageid_key UNIQUE (messageid)
);

-- Drop table

-- DROP TABLE public.sessiondetails;

CREATE TABLE public.sessiondetails (
	sessionid bpchar(100) NOT NULL,
	hashcode text NULL DEFAULT ''::text,
	usbhashcode text NULL DEFAULT ''::text,
	currentstatus int4 NULL DEFAULT 1,
	submittedtime timestamp NULL DEFAULT now(),
	CONSTRAINT sessiondetails_pkey PRIMARY KEY (sessionid)
);
