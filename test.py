import json
from pathlib import Path

not_show = []
with Path("智库website_all-website_list.txt", mode="r", encoding="utf-8").open() as f:
    for line in f:
        not_show.append(line.strip())

off_line = []
with Path("下线excel.txt", mode="r", encoding="utf-8").open() as f:
    for line in f:
        off_line.append(line.strip())


print(len(set(not_show)), len(set(off_line)))

print(list(set(not_show) - set(off_line)))

print(len(set(not_show) & set(off_line)))

print(set(off_line) - set(not_show))