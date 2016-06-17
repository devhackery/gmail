
Build a Rails app that integrates with Gmail API and creates/updates a lead whenever a new mail
lands in the inbox.

    POST to a URL as soon as an email lands in the Gmail inbox

    Parse that email and create it as a lead - it should be cleaned up, safe enough to persist in DB
    along with attachments.

    Email subject should be the unique identifier. If there is a new message in an existing thread,
    update the respective lead in the app with the message. If it’s a new conversation altogether,
    create a new lead even if it’s from the same contact.

    Create a dashboard to tally the number of mails landed in the inbox and the number of leads that
    were created/updated.
    They should match.

    If the numbers don’t match (for instance, the app might have been down 
    when a new POST request landed on a route),
    we should be able to zero in on the exact mail that wasn’t converted to a lead.




In case of emails that were missed, build a feature that creates/updates a lead on a button click.



*************************************************
 
* Ruby version :ruby 2.2

* Configuration

google_oauth2pen a tunnel to your development machine using ngrok


make application in google console with callback url

put client id and client secret id 

    ENV['CLIENT_ID']
    ENV['CLIENT_SECRET']

eg http://2485aebe.ngrok.io/auth/google_oauth2

go to this url will generate and save access token and refresh key in db 

then  run "rake check_emails"  this will feach data from gmail api and console 


whenever --update-crontab



* Deployment instructions


Authorize your Rails app with the Google API
Refresh the Google API access
Get Emails from the GMail API   'rake check_messages' 

Created a crone job

TODO#

Need to store data to DB
create view to display 
make ui for authenticate 

implement  https://developers.google.com/gmail/api/guides/push


