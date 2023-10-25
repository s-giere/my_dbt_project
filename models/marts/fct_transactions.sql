select
  *
from {{ ref("stg_transactions") }} as t
