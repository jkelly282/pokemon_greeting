import requests

from constants import WEATHER_CODES


def main():
    res = requests.get('wttr.in', params={'format':'j1'})
    weather_code = res.json()['current_condition'][0]['weatherCode'] 
    if weather_code in WEATHER_CODES['good']:
        print('good')
    else:
        print('bad')


if __name__ == '__main__':
    main()