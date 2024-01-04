#install flask (pip install flask)
#Aftercompleting the whole code launch an ec2 server & create create_jira.py file paste code in it save it
from flask import Flask
import requests
from requests.auth import HTTPBasicAuth
import json

app = Flask(__name__)

@app.route('/create_Jira', methods=['POST'])
def create_Jira():
    url = "https://devopsmails1.atlassian.net/rest/api/3/issue"
    API_TOKEN = "ATATT3xFfGF0rnSVttS6358hqP_k5cUkdXq40qX4pDw--oesqmerQOcemiSB01JwNwP1q6J3pnTc6z5BuwAb04yR2NH3DiBRShr49iTRxy6zUcYRs_xVolPt8tJ5dPAWPdh2X82GbPal89dGTrOQI_uSHOGntc2sTsZdyfUz2wesiLMn1tQntLk=C1B836B9"
    auth = HTTPBasicAuth("devopsmails1@gmail.com", API_TOKEN)

    headers = {
    "Accept": "application/json",
    "Content-Type": "application/json"
    }

    payload = json.dumps( {
    "fields": {
        "description": {
        "content": [
            {
            "content": [
                {
                "text": "This is my successful jira automation ticket creation.",
                "type": "text"
                }
            ],
            "type": "paragraph"
            }
        ],
        "type": "doc",
        "version": 1
        },
        "issuetype": {
        "id": "10007"
        },
        "project": {
        "key": "DEV"
        },
        "summary": "This ticket is from dev-gabby-01, error: update the packages needed, fix issue",
    }
    })
    response = requests.request(
    "POST",
    url,
    data=payload,
    headers=headers,
    auth=auth
    )

    return json.dumps(json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": "))

if __name__=='__main__':
    app.run('0.0.0.0', port=5000)# can any port