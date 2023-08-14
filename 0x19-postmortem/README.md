# Incident Report: Web server Outage

This is a postmoterm report on the recent downtime of the website detailing the causes, resolutions and methods of mitigating future occurences of the same issue.

## Issue Summary

The service interruption occured at around 1830 hours UTC on Friday 11th July and lasted for about 2 hours before the on-call engineers responded and mitigated the situation returning services back to normalcy. 
The users of the website had slow loading speeds exceeding 500ms. And occassinoally a crush on the webpage as no information was displayed at the time when there was request for heavy graphical information or large sized pages. Approximately 40% of users were affected.  The cause of the issue was attributed mainly to the depletion of the server-side resource due to memory problems. 

## Timeline

- **August 11, 2023, 1830 (UTC)** : the monitoring system sends an alert notifying of frequent error codes returned and delay in HTTP requests. 
- **August 11, 2023, 1900 (UTC)** : The on-call team responds in attempt to return the situation to normalcy. 
- **August 11, 2023, 1915 (UTC)** : Investigation of the possible cause of the issue by checking serverside connectivity and response rate. 
- **August 11, 2023, 1930 (UTC)** : Thorough investigation continued delving into the database response rate. 
- **August 11, 2023, 1945 (UTC)** : Checking if there is any misconfiguration on the load balancer and Content Delivery Network(CDN).
- **August 11, 2023, 2000 (UTC)** : Looking at logfiles shows unusual traffic data flowing through the system. 
- **August 11, 2023, 030 (UTC)** : Finally the technical team identifies the issue with the microservices that did not handle proper memory allocation. 

## 3 Root Cause and Resolution 

A system is most likely to malfunction or behave anomaly if there isn't enough memory to handle incoming process. The microservices attached to the system did not free memory as required for optimum performance. So unused memory was occupied causing lag on the system. Careful analysis of the logfiles showed there was aproblem in memory management. 

## Corrective and Preventative Measures

Enhancing automated monitoring to detect any memory leaks early on for realtime detection and  mitigation of the process. 
Periodically evaluate the log files to determine normal state and functioning of the system to provide an automated detection of the optimal functioning of the system. 
Integrating monitoring for memory management to ensure all services free up unused memory. 
Implement rigorous code review for any changes made to the codebase to avoid any changes that may introduce some unforseen bugs.
