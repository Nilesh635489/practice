mysql> select name from client_master;
+----------------+
| name           |
+----------------+
| van bayross    |
| mamta muzumdar |
| chhaya bankar  |
| ashwini joshi  |
| hansel colaco  |
| deepak sharma  |
+----------------+
6 rows in set (0.00 sec)

mysql> select * from client_master;
+-----------+----------------+-----------+---------+-------------+--------+
| client_no | name           | city      | pincode | state       | baldue |
+-----------+----------------+-----------+---------+-------------+--------+
|         1 | van bayross    | mumbai    |   40054 | maharashtra |    150 |
|         2 | mamta muzumdar | madras    |  780001 | tamilnadu   |      0 |
|         3 | chhaya bankar  | mumbai    |  400057 | maharashtra |   5000 |
|         4 | ashwini joshi  | bangalore |  560001 | karnataka   |      0 |
|         5 | hansel colaco  | mumbai    |  400060 | maharashtra |   2000 |
|         6 | deepak sharma  | mangalore |  560050 | karnataka   |      0 |
+-----------+----------------+-----------+---------+-------------+--------+
6 rows in set (0.00 sec)

mysql> select name,city,state from client_master;
+----------------+-----------+-------------+
| name           | city      | state       |
+----------------+-----------+-------------+
| van bayross    | mumbai    | maharashtra |
| mamta muzumdar | madras    | tamilnadu   |
| chhaya bankar  | mumbai    | maharashtra |
| ashwini joshi  | bangalore | karnataka   |
| hansel colaco  | mumbai    | maharashtra |
| deepak sharma  | mangalore | karnataka   |
+----------------+-----------+-------------+
6 rows in set (0.00 sec)

mysql> select description from product_master;
ERROR 1054 (42S22): Unknown column 'description' in 'field list'
mysql> select * from product_master;
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
| product_no | desc_ription | profit_percent | unit_measure | qtyon_hand | reorder_lv1 | sell_price | cost_price |
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
|          1 | t-shirt      |              5 | piece        |        200 |          50 |        350 |        250 |
|        345 | shirts       |              6 | piece        |        150 |          50 |        500 |        350 |
|       6734 | cotton jeans |              5 | piece        |        100 |          20 |        600 |        450 |
|       7865 | jeans        |              5 | piece        |        100 |          20 |        750 |        500 |
|       7868 | trousers     |              2 | piece        |        150 |          50 |        800 |        550 |
|       7885 | pull overs   |              3 | piece        |         80 |          30 |        700 |        450 |
|       7965 | denim shirts |              4 | piece        |        100 |          40 |        350 |        250 |
|       7975 | lycra tops   |              5 | piece        |         70 |          30 |        300 |        175 |
|       8865 | skirts       |              5 | piece        |        200 |          30 |        450 |        300 |
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
9 rows in set (0.00 sec)

mysql> select description from product_master;
ERROR 1054 (42S22): Unknown column 'description' in 'field list'
mysql> select desc_ription from product_master;
+--------------+
| desc_ription |
+--------------+
| t-shirt      |
| shirts       |
| cotton jeans |
| jeans        |
| trousers     |
| pull overs   |
| denim shirts |
| lycra tops   |
| skirts       |
+--------------+
9 rows in set (0.00 sec)

mysql> select * from client_master where city='mumbai';
+-----------+---------------+--------+---------+-------------+--------+
| client_no | name          | city   | pincode | state       | baldue |
+-----------+---------------+--------+---------+-------------+--------+
|         1 | van bayross   | mumbai |   40054 | maharashtra |    150 |
|         3 | chhaya bankar | mumbai |  400057 | maharashtra |   5000 |
|         5 | hansel colaco | mumbai |  400060 | maharashtra |   2000 |
+-----------+---------------+--------+---------+-------------+--------+
3 rows in set (0.00 sec)

mysql> select name from client_master where baldue>3000;
+---------------+
| name          |
+---------------+
| chhaya bankar |
+---------------+
1 row in set (0.00 sec)

mysql> select * from client_master set city='banglaore' where client_no='00005';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'set city='banglaore' where client_no='00005'' at line 1
mysql> select * from client_master set city='banglaore' where client_no='5';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'set city='banglaore' where client_no='5'' at line 1
mysql> select * from client_master set city='banglaore' where client_no=5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'set city='banglaore' where client_no=5' at line 1
mysql> update client_master set city='banglaore' where client_no=00005;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from client_master;
+-----------+----------------+-----------+---------+-------------+--------+
| client_no | name           | city      | pincode | state       | baldue |
+-----------+----------------+-----------+---------+-------------+--------+
|         1 | van bayross    | mumbai    |   40054 | maharashtra |    150 |
|         2 | mamta muzumdar | madras    |  780001 | tamilnadu   |      0 |
|         3 | chhaya bankar  | mumbai    |  400057 | maharashtra |   5000 |
|         4 | ashwini joshi  | bangalore |  560001 | karnataka   |      0 |
|         5 | hansel colaco  | banglaore |  400060 | maharashtra |   2000 |
|         6 | deepak sharma  | mangalore |  560050 | karnataka   |      0 |
+-----------+----------------+-----------+---------+-------------+--------+
6 rows in set (0.00 sec)

mysql> update client_master set baldue=1000 where client_no=1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from client_master;
+-----------+----------------+-----------+---------+-------------+--------+
| client_no | name           | city      | pincode | state       | baldue |
+-----------+----------------+-----------+---------+-------------+--------+
|         1 | van bayross    | mumbai    |   40054 | maharashtra |   1000 |
|         2 | mamta muzumdar | madras    |  780001 | tamilnadu   |      0 |
|         3 | chhaya bankar  | mumbai    |  400057 | maharashtra |   5000 |
|         4 | ashwini joshi  | bangalore |  560001 | karnataka   |      0 |
|         5 | hansel colaco  | banglaore |  400060 | maharashtra |   2000 |
|         6 | deepak sharma  | mangalore |  560050 | karnataka   |      0 |
+-----------+----------------+-----------+---------+-------------+--------+
6 rows in set (0.01 sec)

mysql> select * from product_master;
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
| product_no | desc_ription | profit_percent | unit_measure | qtyon_hand | reorder_lv1 | sell_price | cost_price |
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
|          1 | t-shirt      |              5 | piece        |        200 |          50 |        350 |        250 |
|        345 | shirts       |              6 | piece        |        150 |          50 |        500 |        350 |
|       6734 | cotton jeans |              5 | piece        |        100 |          20 |        600 |        450 |
|       7865 | jeans        |              5 | piece        |        100 |          20 |        750 |        500 |
|       7868 | trousers     |              2 | piece        |        150 |          50 |        800 |        550 |
|       7885 | pull overs   |              3 | piece        |         80 |          30 |        700 |        450 |
|       7965 | denim shirts |              4 | piece        |        100 |          40 |        350 |        250 |
|       7975 | lycra tops   |              5 | piece        |         70 |          30 |        300 |        175 |
|       8865 | skirts       |              5 | piece        |        200 |          30 |        450 |        300 |
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
9 rows in set (0.00 sec)

mysql> update product_master set cost_price=950 where desc_ription='trousers';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from product_master;
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
| product_no | desc_ription | profit_percent | unit_measure | qtyon_hand | reorder_lv1 | sell_price | cost_price |
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
|          1 | t-shirt      |              5 | piece        |        200 |          50 |        350 |        250 |
|        345 | shirts       |              6 | piece        |        150 |          50 |        500 |        350 |
|       6734 | cotton jeans |              5 | piece        |        100 |          20 |        600 |        450 |
|       7865 | jeans        |              5 | piece        |        100 |          20 |        750 |        500 |
|       7868 | trousers     |              2 | piece        |        150 |          50 |        800 |        950 |
|       7885 | pull overs   |              3 | piece        |         80 |          30 |        700 |        450 |
|       7965 | denim shirts |              4 | piece        |        100 |          40 |        350 |        250 |
|       7975 | lycra tops   |              5 | piece        |         70 |          30 |        300 |        175 |
|       8865 | skirts       |              5 | piece        |        200 |          30 |        450 |        300 |
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
9 rows in set (0.00 sec)

mysql> update salesman_master set city='pune';
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> update salesman_master set city='pune';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 4  Changed: 0  Warnings: 0

mysql> select * from salesman_master;
+-------------+--------+-------------+----------+------+---------+-------------+
| salesman_no | name   | address1    | address2 | city | pincode | state       |
+-------------+--------+-------------+----------+------+---------+-------------+
|           1 | aman   | parle point | worli    | pune |  400002 | maharashtra |
|           2 | omkar  | marin lines | nariman  | pune |  400001 | maharashtra |
|           3 | raj    | taj hotel   | bandra   | pune |  400032 | maharashtra |
|           4 | ashish | nath vila   | juhu     | pune |  400044 | maharashtra |
+-------------+--------+-------------+----------+------+---------+-------------+
4 rows in set (0.00 sec)

mysql> delete from product_master where qtyon_hand=100;
Query OK, 3 rows affected (0.01 sec)

mysql> select * from product_master;
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
| product_no | desc_ription | profit_percent | unit_measure | qtyon_hand | reorder_lv1 | sell_price | cost_price |
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
|          1 | t-shirt      |              5 | piece        |        200 |          50 |        350 |        250 |
|        345 | shirts       |              6 | piece        |        150 |          50 |        500 |        350 |
|       7868 | trousers     |              2 | piece        |        150 |          50 |        800 |        950 |
|       7885 | pull overs   |              3 | piece        |         80 |          30 |        700 |        450 |
|       7975 | lycra tops   |              5 | piece        |         70 |          30 |        300 |        175 |
|       8865 | skirts       |              5 | piece        |        200 |          30 |        450 |        300 |
+------------+--------------+----------------+--------------+------------+-------------+------------+------------+
6 rows in set (0.00 sec)

mysql> delete from client_master where state='tamilnadu';
Query OK, 1 row affected (0.01 sec)

mysql> select * from client_master;
+-----------+---------------+-----------+---------+-------------+--------+
| client_no | name          | city      | pincode | state       | baldue |
+-----------+---------------+-----------+---------+-------------+--------+
|         1 | van bayross   | mumbai    |   40054 | maharashtra |   1000 |
|         3 | chhaya bankar | mumbai    |  400057 | maharashtra |   5000 |
|         4 | ashwini joshi | bangalore |  560001 | karnataka   |      0 |
|         5 | hansel colaco | banglaore |  400060 | maharashtra |   2000 |
|         6 | deepak sharma | mangalore |  560050 | karnataka   |      0 |
+-----------+---------------+-----------+---------+-------------+--------+