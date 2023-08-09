with sales as (
               select * from shop_dns
               union all
               select * from shop_mvideo
               union all
               select * from shop_sitilink
               ),

      sales_count as (select shop_id, product_id, 
                         toMonth(s.date) as m, 
                         sum(sales_cnt)   as sales_fact
                    from sales s
                    group by shop_id, product_id, toMonth(s.date))

select       p.plan_date                                          as plan_date,
             sh.shop_name                                         as shop_name,
             pr.product_name                                      as product_name,
             sf.sales_fact                                        as sales_fact,
             p.plan_cnt                                           as plan_cnt,
             sf.sales_fact / p.plan_cnt                           as sales_f_plan,
             sf.sales_fact * pr.price                             as income_fact,
             p.plan_cnt * pr.price                                as income_plan,
             sf.sales_fact * pr.price / p.plan_cnt * pr.price     as income_fact_plan

      from sales_count as sf
      join products as pr on sf.product_id = pr.product_id
      join shops as sh on sf.shop_id = sh.shop_id
      join plan as p on sh.shop_id = p.shop_id
          and p.product_id = pr.product_id
          and toMonth(p.plan_date) = sf.m
      group by sh.shop_id,
               pr.product_id,
               sf.sales_fact,
               p.plan_date,
               p.plan_cnt

order by p.plan_date,
         sh.shop_name,
         pr.product_name;