with em_rank as (
    select id,email,row_number() over (partition by email order by id) as em_r
    from  person
)


delete from Person where id in (select id from em_rank where em_r !=1)
