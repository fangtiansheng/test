import datetime
import re
import json

import pymysql
import requests
from parsel import Selector
from rich import print

from datetime import datetime, timedelta


connection = pymysql.connect(
    host="pc-2zeks8tn80328xo40.rwlb.rds.aliyuncs.com",
    user="fangtiansheng",
    password="dkFEWaoA2ak493f",
    db="spider_data_5",
    charset="utf8mb4",
    cursorclass=pymysql.cursors.DictCursor
)


def get_frequency(website=""):
    sql = f'select DISTINCT ctime from think_tank_detail2 where website = "{website}" and ctime IS NOT NULL ORDER BY ctime;'
    print(sql)

    with connection.cursor() as cursor:
        # Read a single record
        cursor.execute(sql)
        results = cursor.fetchall()
        internals = []
        for i in range(len(results)-1):
            internal = results[i+1]["ctime"] - results[i]["ctime"]
            print(internal.total_seconds())
            internals.append(internal.total_seconds())
        print(internals)
        print(timedelta(seconds=min(internals)), timedelta(seconds=max(internals)), timedelta(seconds=sum(internals)/len(internals)), sep="\t")
        return results

if __name__ == '__main__':
    get_frequency("LSE IDEAS")
