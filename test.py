def process(data):
    res = {k: v for k, v in data.items() if v}
    print(res)
    return res