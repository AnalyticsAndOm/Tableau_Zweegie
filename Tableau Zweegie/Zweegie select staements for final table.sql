use swiggy; 
create table final as
select 
	m.man_name,
	o.cus_id,
    c.c_type,
    c.c_city,
    c.c_state,
    date(o.ord_date) as ord_date,
    count(*) as tot_orders,
    -- o.rest_id,
    -- sum(o.dist),
    sum(o.qty) as tot_qty,
    sum(o.amount) as tot_amt,
	sum(o.comm) as commissions,
    
/*
	code block to calculate the delivery fee:
    	there is no delivery fee if customer type is ONE;
		delivery fee for normal(NOR) customer type is 3 rupee per 200 metres
*/
	case
		when c.c_type = "NOR" 
        then sum(o.dist*3/.2) -- del fee of 3 rupee per 200 meters (dist is in kms)
		else
			0
	end as del_fee,

/*
	Calculating rider_fee per order:
		If order distance less than 1.5 km then rider fee = 15 rupees
        else additional 1 rupee per 200 meters for distance above 1.5km
*/
    sum(if(o.dist < 1.5, 20, 20 + (o.dist*1/.2))) as rider_fee

from orders o
join customers c
on o.cus_id = c.c_id
join managers m
on c.c_city = m.man_city
group by cus_id,ord_date,man_name
-- having del_fee > 1
order by cus_id, tot_amt, tot_orders desc;

-- select * from final_table
-- limit 10;