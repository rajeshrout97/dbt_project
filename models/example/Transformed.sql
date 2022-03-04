
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table', transient = False) }}

with source_data as (

   
select * from "GLOBAL_LOAD_DB"."GLOBAL_LOAD_DYNAMO_SCMA"."USERS_RESERVATION" LIMIT 10


)

select *
from source_data
