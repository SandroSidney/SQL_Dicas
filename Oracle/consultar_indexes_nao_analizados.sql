
select t.owner  
         ,'analyze table '||i.owner || '.' ||i.table_name||
                ' estimate statistics sample 25 percent;'          
from    dba_tables t
inner join dba_indexes i
    on i.table_name = t.table_name 
where   I.owner = 'NOME_SCHEMA_BANCO'   
   AND  t.num_rows      is not null
   and    i.distinct_keys is     null
order by 1;
