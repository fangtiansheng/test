import pymysql

connection = pymysql.connect(
    host="pc-2zeks8tn80328xo40.rwlb.rds.aliyuncs.com",
    user="fangtiansheng",
    password="dkFEWaoA2ak493f",
    db="spider_data_5",
    charset="utf8mb4",
    cursorclass=pymysql.cursors.DictCursor
)
websites = []
with open('表和文档都有.txt', mode="r", encoding="utf-8") as f:
    for each in f:
        websites.append(each.strip())

def check_batch():
    for i, website in enumerate(websites, start=1):
        print(website)
        sql = f'SELECT DISTINCT `batch_date`, count(*) as total from think_tank_detail2 WHERE website = "{website}" GROUP BY `batch_date` ORDER BY `batch_date` desc;'
        print(sql)

        with connection.cursor(pymysql.cursors.DictCursor) as cursor:
            cursor.execute(sql)
            results = cursor.fetchall()
            for each in results:
                print(each["batch_date"])
                with open(f'batch/{i}.{website.replace("/", "")}.txt', mode="a", encoding="utf-8") as f:
                    f.write(f"{each['batch_date']}, {each['total']}\n")


if __name__ == '__main__':
    check_batch()
