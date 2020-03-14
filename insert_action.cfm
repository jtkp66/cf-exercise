<html>
    <head> <title>Input form</title> </head>
    
    <body>
        <cfinsert datasource="YardMapper" tablename="WORKOUTTYPES">
    
        <h1>Exercise Added</h1>
        <cfoutput> You have added your #Form.workoutType# to the database.
            <a href="index.cfm">Back to Home</a>
        </cfoutput>
    </body>
</html>