# Second: Write a query that directly answers a predetermined question from a business stakeholder
## Which brand has the most spend among users who were created within the past 6 months?
### sql query
select "name", "category", "topBrand", 
avg("totalSpent") avg_totalSpent, 
avg("purchasedItemCount") avg_purchaseItemCount,
sum("purchasedItemCount") sum_purchaseItemCount,
sum("totalSpent") sum_totalSpent, 
rank()over(order by sum("totalSpent") desc) as rank
from users u
right join receipts r on u.id=r."userId"
right join receipts_item ri on r.id=ri.receipt_id
inner join brands b on ri."brandCode"=b."brandCode"
where "name" is not null
and "createdDate" between '2020-09-01' and '2021-02-28'
group by "name", "category", "topBrand"
