import requests, json
import django
from videos.models import Category, Video

PLAYLIST_ID = 'PLDMl8TIy1z3MubHMP0X5o1j77P4A1hDqm'
CATEGORY_URL = 'arthouse'

PER_PAGE = 25
API_KEY = 'AIzaSyDp3bpui1t8DutROwEBHUtSvjrOvySjbUc'

videos = list()

data = {'nextPageToken': 'none'}
while 'nextPageToken' in data:
    response = requests.get('https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=' + str(PER_PAGE) +
                            '&playlistId=' + PLAYLIST_ID +
                            '&key=' + API_KEY +
                            ('' if data['nextPageToken'] == 'none' else '&pageToken=' + data['nextPageToken']))

    data = json.loads(response.text)
    for item in data['items']:
        if 'thumbnails' not in item['snippet']:
            continue

        videos.append({
            'title': item['snippet']['title'],
            'description': item['snippet']['description'],
            'thumbnail_medium': item['snippet']['thumbnails']['medium']['url'],
            'video_id': item['contentDetails']['videoId'],
            'published_at': item['contentDetails']['videoPublishedAt']
        })

for video in videos:
    video['description'] = video['description'].replace('\n', '<br>')
    print(' # [' + video['title'] + '] ' + video['published_at'] + ' ' + video['video_id'] + ' ' + video['thumbnail_medium'])

print(' # TOTAL NUMBER: ' + str(len(videos)))

category = Category.objects.get(url=CATEGORY_URL)

count = 0
for v in videos:
    video = Video(category=category, video_id=v['video_id'], title=v['title'], thumbnail_medium=v['thumbnail_medium'], published_at=v['published_at'], description=v['description'])
    video.save()

    count += 1
    print(' # Video added: (' + str(video.pk) + ') ' + video.title)

print(' # FINISHED!')
print('Added ' + str(count) + ' videos.')
