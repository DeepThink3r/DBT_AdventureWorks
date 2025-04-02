
  create view "adventureworks"."staging"."stg_aw__customers__dbt_tmp"
    
    
  as (
    with fonte AS( 
    select * from "adventureworks"."airbyte"."Customer"
),
renomeado AS (
    select
        "StoreID" as COD_LOJA,
        "PersonID" as ID,
        "CustomerID" as COD_CLIENTE,
        "TerritoryID" as COD_REGIAO
    from fonte
    where "PersonID" > 0
)
select * from renomeado
  );