select a.owner �����û�,
       a.table_name ����,
       a.column_name �ֶ���,
       a.data_type �ֶ�����,
       a.�ֶγ���,
       a.�ֶξ���,
       a.�Ƿ�Ϊ��,
       a.orderid ����,
       a.��������,
       a.����޸�����,
       case when a.owner = d.owner and a.table_name = d.table_name and a.column_name = d.column_name then '����' else '' end �Ƿ�����
  from (select a.owner,
               a.table_name,
               b.column_name,
               b.data_type,
               case when b.data_precision is null then b.data_length else data_precision end �ֶγ���,
               data_scale �ֶξ���,
               decode(nullable, 'Y', '��', 'N', '��') �Ƿ�Ϊ��,
               b.COLUMN_ID orderid,
               c.created ��������,
               c.last_ddl_time ����޸�����
          from all_tables a, all_tab_columns b, all_objects c
         where a.table_name = b.table_name
           and a.owner = b.owner
           and a.owner = c.owner
           and a.table_name = c.object_name
           and a.owner = upper('scott') --����ǲ�ĳ���û����㵽ʱ����û�����һ�¾ͺã�һ����д
           and c.object_type = 'TABLE') a
  left join (select a.owner, a.table_name, a.column_name, a.constraint_name
               from user_cons_columns a, user_constraints b
              where a.constraint_name = b.constraint_name
                and b.constraint_type = 'P') d
    on a.owner = d.owner
   and a.table_name = d.table_name
   and a.column_name = d.column_name
 order by a.owner, a.table_name,a.orderid;
