TYPE=VIEW
query=select `inf03_2023_01_01_malarz`.`malowanie`.`id_sciany` AS `id_sciany`,`inf03_2023_01_01_malarz`.`malowanie`.`id_farby` AS `id_farby`,`inf03_2023_01_01_malarz`.`malowanie`.`liczba_puszek` AS `liczba_puszek` from `inf03_2023_01_01_malarz`.`malowanie` where `inf03_2023_01_01_malarz`.`malowanie`.`id_pomieszczenia` = 1
md5=33fbee18baae485aa3572670f8ad81e2
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001771547822812058
create-version=2
source=select id_sciany, id_farby, liczba_puszek\nfrom malowanie\nwhere id_pomieszczenia = 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `inf03_2023_01_01_malarz`.`malowanie`.`id_sciany` AS `id_sciany`,`inf03_2023_01_01_malarz`.`malowanie`.`id_farby` AS `id_farby`,`inf03_2023_01_01_malarz`.`malowanie`.`liczba_puszek` AS `liczba_puszek` from `inf03_2023_01_01_malarz`.`malowanie` where `inf03_2023_01_01_malarz`.`malowanie`.`id_pomieszczenia` = 1
mariadb-version=100432
