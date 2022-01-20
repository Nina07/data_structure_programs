def maxEvents(arrival, duration)
    no_of_events = arrival.length-1
    time_interval = []
    non_hosted_events = []
    time_interval = (0..no_of_events).map do |i|
        [arrival[i], arrival[i] + duration[i]]
    end.sort {|e1, e2| e1 <=> e2}
    
    last_interval = time_interval[0][1]
    (1..time_interval.length-1).each do |ind|
        if time_interval[ind][0] < last_interval
            non_hosted_events << 1
        else
            last_interval[ind][1]
        end
    end

    (no_of_events - (non_hosted_events.length-1))
end

SQL
select invoice.invoice_number, customer.customer_name, count(contact.customer_id) as number_of_contacts
from invoice 
left outer join customer on invoice.customer_id = customer.id
inner join contact on invoice.customer_id = contact.customer_id
where contact.contact_start_time < invoice.time_issued
order by invoice.invoice_number ASC;


select i.invoice_number, cus.customer_name, count(c.customer_id)
from invoice i, contact c, customer cus where i.customer_id=c.customer_id and i.customer_id=cus.id and c.contact_end_time < i.time_issued group by i.invoice_number, cus.customer_name order by i.invoice_number;


-- select i.invoice_number, cus.customer_name, count(c.customer_id)
-- from invoice i inner join contact c on i.customer_id=c.customer_id
-- inner join customer cus on i.customer_id=cus.id 
-- where c.contact_end_time < i.time_issued group by i.invoice_number, cus.customer_name order by i.invoice_number;

select RName, count(distinct Location) from RetailOutlet
where Location != "New York"
and ROID in (select ROID from SalesMan group by ROID having count(SMID)=1)
group by RName;

n = gets.chomp.to_i # value of N
input_array = gets.chomp

order_hash = {}
output = []
order_hash.default = 0
input_array = input_array.split(//).reject {|i| i == " "}.map(&:to_i)

input_array.each do |i|
    order_hash[i] += 1
end
puts order_hash.sort_by {|k,v| -v}.map{|row| row[0]}.join(' ')

# Implementing inside a class
# class ArrangeElements
#     def return_ordered_list(input_array)
#         order_hash = {}
#         order_hash.default = 0
#         input_array = input_array.split(//).reject {|i| i == " "}.map(&:to_i)

#         input_array.each do |i|
#             order_hash[i] += 1
#         end
#         return order_hash.sort {|k,v| v[1] <=> k[1]}.map{|row| row[0]}.join(' ')
#     end
# end
# test = ArrangeElements.new
# puts test.return_ordered_list(input_array)