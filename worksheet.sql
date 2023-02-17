use warehouse default;

-- Roles (Admin)
use role useradmin;
create or replace role sysadmin_dev;
create or replace role sysadmin_stg;
create or replace role sysadmin_prd;
create or replace role roleadmin_dev;
create or replace role roleadmin_stg;
create or replace role roleadmin_prd;

-- Roles (Regular)
use role securityadmin;
create or replace role loader_dev;
create or replace role loader_stg;
create or replace role loader_prd;
create or replace role transformer_all_dev;
create or replace role transformer_all_stg;
create or replace role transformer_all_prd;
create or replace role transformer_blockchains_dev;
create or replace role transformer_blockchains_stg;
create or replace role transformer_blockchains_prd;
create or replace role transformer_customers_dev;
create or replace role transformer_customers_stg;
create or replace role transformer_customers_prd;
create or replace role transformer_les_dev;
create or replace role transformer_les_stg;
create or replace role transformer_les_prd;
create or replace role transformer_products_dev;
create or replace role transformer_products_stg;
create or replace role transformer_products_prd;
create or replace role reporter_all_dev;
create or replace role reporter_all_stg;
create or replace role reporter_all_prd;
create or replace role reporter_blockchains_dev;
create or replace role reporter_blockchains_stg;
create or replace role reporter_blockchains_prd;
create or replace role reporter_customers_dev;
create or replace role reporter_customers_stg;
create or replace role reporter_customers_prd;
create or replace role reporter_les_dev;
create or replace role reporter_les_stg;
create or replace role reporter_les_prd;
create or replace role reporter_products_dev;
create or replace role reporter_products_stg;
create or replace role reporter_products_prd;
grant ownership on role loader_dev to role roleadmin_dev;
grant ownership on role loader_stg to role roleadmin_stg;
grant ownership on role loader_prd to role roleadmin_prd;
grant ownership on role transformer_all_dev to role roleadmin_dev;
grant ownership on role transformer_all_stg to role roleadmin_stg;
grant ownership on role transformer_all_prd to role roleadmin_prd;
grant ownership on role transformer_blockchains_dev to role roleadmin_dev;
grant ownership on role transformer_blockchains_stg to role roleadmin_stg;
grant ownership on role transformer_blockchains_prd to role roleadmin_prd;
grant ownership on role transformer_customers_dev to role roleadmin_dev;
grant ownership on role transformer_customers_stg to role roleadmin_stg;
grant ownership on role transformer_customers_prd to role roleadmin_prd;
grant ownership on role transformer_les_dev to role roleadmin_dev;
grant ownership on role transformer_les_stg to role roleadmin_stg;
grant ownership on role transformer_les_prd to role roleadmin_prd;
grant ownership on role transformer_products_dev to role roleadmin_dev;
grant ownership on role transformer_products_stg to role roleadmin_stg;
grant ownership on role transformer_products_prd to role roleadmin_prd;
grant ownership on role reporter_all_dev to role roleadmin_dev;
grant ownership on role reporter_all_stg to role roleadmin_stg;
grant ownership on role reporter_all_prd to role roleadmin_prd;
grant ownership on role reporter_blockchains_dev to role roleadmin_dev;
grant ownership on role reporter_blockchains_stg to role roleadmin_stg;
grant ownership on role reporter_blockchains_prd to role roleadmin_prd;
grant ownership on role reporter_customers_dev to role roleadmin_dev;
grant ownership on role reporter_customers_stg to role roleadmin_stg;
grant ownership on role reporter_customers_prd to role roleadmin_prd;
grant ownership on role reporter_les_dev to role roleadmin_dev;
grant ownership on role reporter_les_stg to role roleadmin_stg;
grant ownership on role reporter_les_prd to role roleadmin_prd;
grant ownership on role reporter_products_dev to role roleadmin_dev;
grant ownership on role reporter_products_stg to role roleadmin_stg;
grant ownership on role reporter_products_prd to role roleadmin_prd;

-- Databases
use role sysadmin;
create or replace database sources_dev;
create or replace database sources_stg;
create or replace database sources_prd;
create or replace database analytics_dev;
create or replace database analytics_stg;
create or replace database analytics_prd;
grant ownership on database sources_dev to role sysadmin_dev;
grant ownership on database sources_stg to role sysadmin_stg;
grant ownership on database sources_prd to role sysadmin_prd;
grant ownership on database analytics_dev to role sysadmin_dev;
grant ownership on database analytics_stg to role sysadmin_stg;
grant ownership on database analytics_prd to role sysadmin_prd;

-- Virtual Warehouses
use role sysadmin;
create or replace warehouse loading_dev
    warehouse_size = xsmall
    auto_suspend = 300
    auto_resume = true
    initially_suspended = true;
create or replace warehouse loading_stg
    warehouse_size = xsmall
    auto_suspend = 300
    auto_resume = true
    initially_suspended = true;
create or replace warehouse loading_prd
    warehouse_size = xsmall
    auto_suspend = 300
    auto_resume = true
    initially_suspended = true;
create or replace warehouse transforming_dev
    warehouse_size = xsmall
    auto_suspend = 300
    auto_resume = true
    initially_suspended = true;
create or replace warehouse transforming_stg
    warehouse_size = xsmall
    auto_suspend = 300
    auto_resume = true
    initially_suspended = true;
create or replace warehouse transforming_prd
    warehouse_size = xsmall
    auto_suspend = 300
    auto_resume = true
    initially_suspended = true;
create or replace warehouse reporting_dev
    warehouse_size = xsmall
    auto_suspend = 300
    auto_resume = true
    initially_suspended = true;
create or replace warehouse reporting_stg
    warehouse_size = xsmall
    auto_suspend = 300
    auto_resume = true
    initially_suspended = true;
create or replace warehouse reporting_prd
    warehouse_size = xsmall
    auto_suspend = 300
    auto_resume = true
    initially_suspended = true;

-- Users (Persons)
use role useradmin;
create or replace user abelghazi
    password = '1234'
    login_name = "amine.belghazi@ledger.fr"
    display_name = "Amine BELGHAZI"
    first_name = "Amine"
    last_name = "Belghazi"
    email = "amine.belghazi@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user abrunswick
    password = '1234'
    login_name = "adrien.brunswick@ledger.fr"
    display_name = "Adrien BRUNSWICK"
    first_name = "Adrien"
    last_name = "Brunswick"
    email = "adrien.brunswick@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user amodai
    password = '1234'
    login_name = "ariel.modai@ledger.fr"
    display_name = "Ariel MODAÏ"
    first_name = "Ariel"
    last_name = "Modaï"
    email = "ariel.modai@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user crichard
    password = '1234'
    login_name = "chloe.richard-ext@ledger.fr"
    display_name = "Chloé RICHARD"
    first_name = "Chloé"
    last_name = "Richard"
    email = "chloe.richard-ext@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user dstarkus
    password = '1234'
    login_name = "donatas.starkus-ext@ledger.fr"
    display_name = "Donatas STARKUS"
    first_name = "Donatas"
    last_name = "Starkus"
    email = "donatas.starkus-ext@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user fpoirier
    password = '1234'
    login_name = "felix.poirier@ledger.fr"
    display_name = "Félix POIRIER"
    first_name = "Félix"
    last_name = "Poirier"
    email = "felix.poirier@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user gguaquiere
    password = '1234'
    login_name = "gabriel.guaquiere@ledger.fr"
    display_name = "Gabriel GUAQUIERE"
    first_name = "Gabriel"
    last_name = "Guaquiere"
    email = "gabriel.guaquiere@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user gherry
    password = '1234'
    login_name = "guillaume.herry@ledger.fr"
    display_name = "Guillaume HERRY"
    first_name = "Guillaume"
    last_name = "Herry"
    email = "guillaume.herry@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user klin
    password = '1234'
    login_name = "kaishin.lin@ledger.fr"
    display_name = "Kaishin LIN"
    first_name = "Kaishin"
    last_name = "Lin"
    email = "kaishin.lin@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user ltavernier
    password = '1234'
    login_name = "ludovic.tavernier@ledger.fr"
    display_name = "Ludovic TAVERNIER"
    first_name = "Ludovic"
    last_name = "Tavernier"
    email = "ludovic.tavernier@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user mbenisti
    password = '1234'
    login_name = "michael.benisti@ledger.fr"
    display_name = "Michael BENISTI"
    first_name = "Michael"
    last_name = "Benisti"
    email = "michael.benisti@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user ncaporal
    password = '1234'
    login_name = "noe.caporal@ledger.fr"
    display_name = "Noé CAPORAL"
    first_name = "Noé"
    last_name = "Caporal"
    email = "noe.caporal@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user nprats
    password = '1234'
    login_name = "nathan.prats@ledger.fr"
    display_name = "Nathan PRATS"
    first_name = "Nathan"
    last_name = "Prats"
    email = "nathan.prats@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user qgaborit
    password = '1234'
    login_name = "quentin.gaborit@ledger.fr"
    display_name = "Quentin GABORIT"
    first_name = "Quentin"
    last_name = "Gaborit"
    email = "quentin.gaborit@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user qhaminh
    password = '1234'
    login_name = "quang.ha-minh@ledger.fr"
    display_name = "Quang HA MINH"
    first_name = "Quang"
    last_name = "Ha Minh"
    email = "quang.ha-minh@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";
create or replace user ssalmani
    password = '1234'
    login_name = "soheil.salmani@ledger.fr"
    display_name = "Soheil SALMANI"
    first_name = "Soheil"
    last_name = "Salmani"
    email = "soheil.salmani@ledger.fr"
    default_warehouse = "reporting_prd"
    default_namespace = "analytics_prd"
    default_role = "reporting_all_prd";

-- Users (Services)
create or replace user airflow_stg
    password = '1234'
    display_name = "Airflow (Staging)"
    default_warehouse = "transforming_stg"
    default_namespace = "analytics_stg"
    default_role = "transformer_all_stg";
create or replace user airflow_prd
    password = '1234'
    display_name = "Airflow (Production)"
    default_warehouse = "transforming_prd"
    default_namespace = "analytics_prd"
    default_role = "transformer_all_prd";
create or replace user ecs_stg
    password = '1234'
    display_name = "Amazon ECS (Staging)"
    default_warehouse = "loading_stg"
    default_namespace = "sources_stg"
    default_role = "loader_stg";
create or replace user ecs_prd
    password = '1234'
    display_name = "Amazon ECS (Production)"
    default_warehouse = "loading_prd"
    default_namespace = "sources_prd"
    default_role = "loader_prd";
create or replace user permifrost
    password = '1234'
    display_name = "Permifrost"
    default_warehouse = "default"
    default_namespace = "snowflake"
    default_role = "securityadmin";
create or replace user tableau
    password = '1234'
    display_name = "Tableau"
    default_warehouse = "reporting_all_prd"
    default_namespace = "analytics_prd"
    default_role = "reporter_prd";

use role securityadmin;
grant role securityadmin to user permifrost;
