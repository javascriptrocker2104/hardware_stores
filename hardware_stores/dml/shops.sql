WITH sales AS(  
    SELECT * FROM shop_dns
    UNION ALL
	SELECT * FROM shop_mvideo
	UNION ALL
	SELECT * FROM shop_sitilink
	),
    sales_count AS( SELECT shop_id, product_id, 
						   DATE_PART('month', s.date)	AS m,
						   SUM(sales_cnt)				AS sales_fact
					FROM sales s
					GROUP BY shop_id, product_id, date_part('month', s.date)
				)
	SELECT	TO_CHAR(plan_date, 'Month') AS "Month", shop_name, product_name, sales_fact, plan_cnt AS sales_plan,sales_fact/plan_cnt AS sales_fp,
			income_fact, income_plan, income_fact/income_plan	AS income_fact_plan

    FROM(SELECT	 p.plan_date, sh.shop_name, pr.product_name, sf.sales_fact, p.plan_cnt, 
							sf.sales_fact/p.plan_cnt AS sales_f_plan, 
							sf.sales_fact*pr.price AS income_fact,
							p.plan_cnt*pr.price AS income_plan
				FROM		sales_count AS sf
				JOIN		products AS pr ON sf.product_id = pr.product_id
				JOIN		shops AS sh ON sf.shop_id = sh.shop_id
				JOIN		plan AS p ON sh.shop_id = p.shop_id AND p.product_id = pr.product_id AND date_part('month', p.plan_date) = sf.m
				GROUP BY sh.shop_id, pr.product_id, sf.sales_fact, p.plan_date, p.plan_cnt
			) as t

ORDER BY  plan_date, shop_name, product_name;


