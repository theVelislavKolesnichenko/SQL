-- Database: SimpleTaskManagementSystem

-- DROP DATABASE "SimpleTaskManagementSystem";
-- DROP TABLE public."Users";
-- DROP TABLE public."Tasks";
-- DROP TABLE public."Comments";

CREATE DATABASE "SimpleTaskManagementSystem"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Bulgarian_Bulgaria.1251'
    LC_CTYPE = 'Bulgarian_Bulgaria.1251'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
-- Table: public."Users"

CREATE TABLE public."Users"
(
    "Id" integer NOT NULL,
    "Username" character varying(25)[] COLLATE pg_catalog."default" NOT NULL,
    "Password" character varying(10)[] COLLATE pg_catalog."default" NOT NULL,
    "DisplayName" character varying(50)[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Users_pkey" PRIMARY KEY ("Id"),
    CONSTRAINT "Users_Username_key" UNIQUE ("Username")

)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Users"
    OWNER to postgres;
	
-- Table: public."Tasks"

CREATE TYPE TaskStatus AS ENUM ('Open', 'InProgress', 'Closed');
CREATE TYPE TaskType AS ENUM ('Task', 'Bug', 'Improvement');

CREATE TABLE public."Tasks"
(
    "Id" integer NOT NULL,
    "CreatedDate" date NOT NULL,
    "RequiredByDate" date NOT NULL,
    "Description" text COLLATE pg_catalog."default" NOT NULL,
    "Status" TaskStatus NOT NULL,
    "Type" TaskType NOT NULL,
    CONSTRAINT "Tasks_pkey" PRIMARY KEY ("Id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Tasks"
    OWNER to postgres;
	
-- Table: public."Comments"

CREATE TYPE CommentsType AS ENUM ('Comment', 'WorkLog', 'ChangeHistory');

CREATE TABLE public."Comments"
(
    "OwnerId" integer NOT NULL,
    "TaskId" integer NOT NULL,
    "DateAdded" date NOT NULL,
    "Comment" text COLLATE pg_catalog."default" NOT NULL,
    "Type" CommentsType NOT NULL,
    "ReminderDate" date,
    CONSTRAINT "Comments_pkey" PRIMARY KEY ("OwnerId", "TaskId"),
    CONSTRAINT "Comments_OwnerId_fkey" FOREIGN KEY ("OwnerId")
        REFERENCES public."Users" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Comments_TaskId_fkey" FOREIGN KEY ("TaskId")
        REFERENCES public."Tasks" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Comments"
    OWNER to postgres;

-- Index: FK_Tasks_Comments

-- DROP INDEX public."FK_Tasks_Comments";

CREATE INDEX "FK_Tasks_Comments"
    ON public."Comments" USING btree
    ("TaskId")
    TABLESPACE pg_default;

-- Index: FK_Users_Comments

-- DROP INDEX public."FK_Users_Comments";

CREATE INDEX "FK_Users_Comments"
    ON public."Comments" USING btree
    ("OwnerId")
    TABLESPACE pg_default;
	
	-- Table: public."AssignedTo "

-- DROP TABLE public."AssignedTo ";

CREATE TABLE public."AssignedTo"
(
	"Id" integer NOT NULL,
    "UserId" integer,
    "TaskId" integer,
    "StartDate" date,
    "EndDate" date,
    CONSTRAINT "AssignedTo _pkey" PRIMARY KEY ("Id"),
    CONSTRAINT "AssignedTo _TaskId_fkey" FOREIGN KEY ("TaskId")
        REFERENCES public."Tasks" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "AssignedTo _UserId_fkey" FOREIGN KEY ("UserId")
        REFERENCES public."Users" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."AssignedTo "
    OWNER to postgres;

-- Index: FK_Tasks_AssigmendTo

-- DROP INDEX public."FK_Tasks_AssigmendTo";

CREATE INDEX "FK_Tasks_AssigmendTo"
    ON public."AssignedTo " USING btree
    ("TaskId")
    TABLESPACE pg_default;

-- Index: FK_Users_AssigmendTo

-- DROP INDEX public."FK_Users_AssigmendTo";

CREATE INDEX "FK_Users_AssigmendTo"
    ON public."AssignedTo " USING btree
    ("UserId")
    TABLESPACE pg_default;
	