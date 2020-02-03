BigKahuna (Slack - _Slash Commands_) _Usage Manual_
----

## Table of Contents

- [Cluster Certification](#cluster-certification)
    - [Certify a cluster for a version](#certify-a-cluster-for-a-version)
    - [Certify a group for a version](#certify-a-group-for-a-version)
    - [Certify all clusters with version for another](#certify-all-clusters-with-version-for-another)
    - [Get certification history for a cluster](#get-certification-history-for-a-cluster)
    - [Get all certified clusters for a version](#get-all-certified-clusters-for-a-version)
    - [Validate fdb configs on a cluster](#validate-fdb-configs-on-a-cluster)
    - [Help message](#cluster-help-message)
- [Cluster Upgrade](#cluster-upgrade)
    - [Block a cluster from autoupgrade](#block-cluster)
    - [Unblock a cluster to autoupgrade](#unblock-cluster)
- [Cluster OPS (JIRA)](#cluster-ops-jira)
    - [Create JIRA tickets](#create-jira-tickets)

- [Pager Duty Integration](#pager-duty-integration)
    - [Show who is on all oncall schedules](#show-who-is-on-all-oncall-schedules)
    - [Show who is on OPS-Primary oncall](#show-who-is-on-ops-oncall-primary-wavefront-ops-production-primary)
    - [Show who is on OPS-Secondary oncall](#show-who-is-on-ops-oncall-secondary-wavefront-ops-production-secondary)
    - [Show who is on DEV oncall](#show-who-is-on-dev-oncall-dev-prod-secondary-support)
    - [Show who is on CS oncall](#show-who-is-on-cs-oncall-customer-success-on-call)
    - [Show who is on FE oncall](#show-who-is-on-fe-oncall-front-end-on-call)
    - [Page someone or multiple people](#page-someone-or-multiple-people)
    - [Page an Escalation Policy](#page-an-escalation-policy)
    - [Page to the High Level Tech Leads](#page-to-the-high-level-tech-leads)
    - [Override oncall schedule](#override-oncall-schedule)
    - [Help message](#pager-help-message)
- [Incident Management](#incident-management)
    - [Start an incident](#start-an-incident)
    - [Announce the incident manually](#announce-the-incident-manually-for-some-reason-use-it-carefully-to-not-spam-channels)
    - [Resolve an incident](#resolve-an-incident)
    - [Close an incident](#close-an-incident-consider-it-resolved)
    - [Show incident status](#show-incident-status-visible-to-the-request-owner-only)
    - [Rename an incident](#rename-the-incident-slack-channel)
    - [Update incident title](#update-incident-title)
    - [Update incident summary](#update-incident-summary)
    - [Update incident status](#update-incident-status)
    - [Update incident leaders](#update-incident-leaders)
    - [Update Customer impact (start and end) date-time](#update-customer-impact-start-and-end-date-time)
    - [Update incident severities](#update-incident-severities)
    - [Help message](#incident-help-message)


## Cluster Certification

### Certify a cluster for a version
```
/cluster certify CLUSTER for VERSION
```
e.g.
```
/cluster certify box for 28.38
```

### Certify a group for a version
  * internal / production are defined in the [devopscp](https://devopscp.corp.wavefront.com/)

```
/cluster certify group GROUP for VERSION
```
e.g.
```
/cluster certify group internal for 28.38
```

### Certify all clusters with version for another
```
/cluster certify all VERSION_1 clusters for VERSION_2
```
e.g.
```
/cluster certify all 28.38 clusters for 28.41
```

### Get certification history for a cluster
```
/cluster get certification details for CLUSTER
/cluster get certification history for CLUSTER

/cluster get CLUSTER versions
/cluster get CLUSTER history
/cluster get CLUSTER info
```
e.g.
```
/cluster get mon info
```


### Get all certified clusters for a version
```
/cluster get all certified for VERSION
/cluster get all certified at VERSION
```
e.g.
```
/cluster get all certified at 28.41
```


### Validate fdb configs on a cluster
```
/cluster validate fdb configs on CLUSTER-MIRROR
```
e.g.
```
/cluster validate fdb configs on workday-primary
```

### Cluster Help message
```
/cluster help
```
----

## Cluster Upgrade

### block-cluster
```
/cluster upgrade block CLUSTER
```
All small_production and large_production clusters are blocked by default on certification.

### unblock-cluster
```
/cluster upgrade unblock CLUSTER
```

----
## Cluster OPS (JIRA)

### Create JIRA tickets
```
/cluster ticket nodereplace for Instance as comments
/cluster ticket fleetreplace for CLUSTER as comments
/cluster ticket upsize for CLUSTER as comments
/cluster ticket upsize_pri for CLUSTER as comments
/cluster ticket upsize_sec for CLUSTER as comments
/cluster ticket downsize for CLUSTER as comments
/cluster ticket downsize_pri for CLUSTER as comments
/cluster ticket downsize_sec for CLUSTER as comments
```
e.g
```
/cluster ticket nodereplace for elgon-2d-db1,elgon-2d-db3 as the instances - 1&2 scheduled for retirement
/cluster ticket nodereplace for elgon-2d-db1 as the instance scheduled for retirement
```
```
/cluster ticket fleetreplace for intuit as the kernel has some issues
/cluster ticket upsize for hd as the SSD is less than 1 GB
/cluster ticket upsize_pri for hd as comments the SSD is less than 1 GB
/cluster ticket upsize_sec for hd as comments the SSD is less than 1 GB
/cluster ticket downsize for varca as comments the SSD is greater than 1 GB
/cluster ticket downsize_pri for varca as comments the SSD is greater than 1 GB
/cluster ticket downsize_sec for varca as comments the SSD is greater than 1 GB
```
----

## Pager Duty Integration

### Show who is on all oncall schedules
```
/pager who is oncall
/pager who is on call
```

### Show who is on OPS oncall Primary (Wavefront Ops Production Primary)
```
/pager who is on ops
/pager who is on pri
/pager who is on primary
```

### Show who is on OPS oncall Secondary (Wavefront Ops Production Secondary)
```
/pager who is on sec
/pager who is on secondary
```

### Show who is on DEV oncall (Dev Prod Secondary Support)
```
/pager who is on dev
```

### Show who is on CS oncall (Customer Success On-Call)
```
/pager who is on cs
```

### Show who is on FE oncall (Front-End On-Call)
```
/pager who is on fe
```

### Page someone or multiple people
```
/pager get @mrz TEXT
/pager get @mrz, @mayan TEXT

/page @mrz TEXT
/page @mrz, @mayan TEXT
```

### Page an Escalation Policy
``` 
/page ops-oncall TEXT
/page dev-oncall TEXT
/page cs-oncall TEXT
/page fe-oncall TEXT
```
Supported Escalation policies are:
- ops, opsoncall, ops-oncall
- sec, seconcall, sec-oncall
- dev, devoncall, dev-oncall
- cs, csoncall, cs-oncall
- fe, feoncall, fe-oncall


### Page to the High Level Tech Leads
``` 
/page lead TEXT
```
Management / High Level tech leads are 
- Clement Pang
- Matthew Zeier
- Mayan Weiss
- Mike McMahon
- Rupesh Shimkhada


### Override oncall schedule
```
/pager put me on SCHEDULE for DURATION
/pager put me on SCHEDULE at DATE_TIME for DURATION
/pager put @vagharsh on SCHEDULE from DATE_TIME until DATE_TIME_
/pager put @vagharsh on SCHEDULE from DATE_TIME until DATE_TIME_
```
- **DATE_TIME** : Is combination for Date and Time with the below mentioned format, more info on the parsing lib ([parser](https://dateutil.readthedocs.io/en/stable/parser.html#dateutil.parser.isoparse))
  - **DATE** :
    - YYYY
    - YYYY-MM or YYYYMM
    - YYYY-MM-DD or YYYYMMDD
  - **TIME** : 
    - hh
    - hh:mm or hhmm
    - hh:mm:ss or hhmmss
    - hh:mm:ss.sss or hh:mm:ss.ssssss
    
- **DURATION** : 1h | 1hr | 1 hour | 2 hours | 1m | 1 minute | 2 minutes
- **SCHEDULE** : 
    - **cs**    :  _Customer Success On-Call_
    - **dev**   :  _Dev Prod Secondary Support_
    - **call**  :  _Wavefront Ops Production Primary_
    - **sec**   :  _Wavefront Ops Production Secondary_

### Pager Help message
```
/pager help
```

----

## Incident Management
- Starting an incident will announce the incident in the below mentioned channels 
    - ops 
    - customersuccess
    - dev-oncall
- A YIKES JIRA ticket will be automatically created for you and assign the current oncall personal as leaders.
- After starting an incident you must start a Zoom meeting.
- Make sure when you record the zoom meeting to **Record the meeting to the cloud**.
- Starting an incident will invite oncall and management personal but send PagerDuty pages to only oncall people.
- If the incident have the highest severity (s0) it will page out to the management personal as well.
- Background jobs will be monitoring open incident channels for non-chat messages 
(uploaded files, zoom recordings, images, etc.) and attach them to the previously created JIRA ticket.
- When an incident is resolved, channel's chat history will back'd up to the JIRA ticket 
as an attachment with the current date and time.
- If there were multiple chat histories back'd up to the JIRA ticket, it means 
there was an update in the incident status.
- _**Starting an incident can be done from any channel, but updating incident details is only available 
from within an incident channel**_.
- Any incident detail update will update it's description across the announcement channels.
- If incident severity was changed to -> **s0**, management personal will get paged automatically.
- Current Management personal are:
    - Clement Pang
    - Matthew Zeier
    - Mayan Weiss
    - Mike McMahon
    - Rupesh Shimkhada
- adding :important: emoji to the message will make the message / chat nark as important, and all the marked messages 
will be collected and uploaded to the JIRA ticket with the naming: **\__KEY_chat_history_\_**.
    - The list of emojis that are acceptable to be marked as important are configured in the `settings.py`.
    
---
- **Supported Severities to start / update incident** : 
    - s0
    - s1 
    - s2
    - none


### Start an incident
```
/incident start SEVERITY TEXT
```
e.g.
```
/incident start s0 things are on fire
```

**_Below commands ONLY work from inside an incident channel_**
### Announce the incident manually for some reason (use it carefully to not spam channels)
```
/incident announce
```

### Resolve an incident
```
/incident resolve
```

### Close an incident (consider it resolved)
```
/incident close
```

### Show incident status (visible to the request owner only)
```
/incident status
```

### Rename the incident slack channel
```
/incident rename NEW-CHANNEL
```

### Update incident title
```
/incident set title TEXT
```

### Update incident summary
```
/incident set summary TEXT
```

### Update incident status
```
/incident set status TEXT
```
e.g.
```
/incident set status resolved
/incident set status ongoing
/incident set status investigating
/incident set status fixing
```

### Update incident leaders
```
/incident set cs @vagharsh
/incident set dev @vagharsh
/incident set ops @vagharsh
```

### Update Customer impact (start and end) date-time
```
/incident set cis 2019-05-09 11:12:08 PDT
/incident set cie 2019-05-09 11:12:08 PDT
```
- **cis** : customer impact started
- **cie** : customer impact ended
- The **value (date and time)** format is plain text make sure you enter the timezone so other may know what is the TZ

### Update incident severities
```
/incident set severity SEVERITY
```
e.g.
```
/incident set severity s0
```

### Incident Help message
```
/incident help
```
