# data_pipeline

Learning dbt with Snowflake's sample TPC-H data.

## what's in here

- `models/staging/` - cleaning up the raw tables
- `models/marts/` - the actual useful stuff (joins, aggregations)
- `tests/` - checking if the data makes sense
- `macros/` - a pricing calculation thing I made

## running it

```bash
# setup (first time only)
python -m venv venv
source venv/bin/activate
pip install dbt-snowflake
dbt deps

# run models
dbt run

# run tests
dbt test
```

## stuff I learned


- staging = views, marts = tables (set in dbt_project.yml)
- dbt test finds bad data before it causes problems
- dbt-utils has a lot of useful macros so you dont have to write everything from scratch


Author || Chaithra Varambally