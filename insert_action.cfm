<html>
    <head> <title>Input form</title> </head>
    
    <body>
        <cfinsert datasource="YardMapper" tablename="workouts">
    
        <h1>Exercise Added</h1>
        <cfoutput> You have added your #Form.workouts# to the database.
            <a href="index.cfm">Back to Home</a>
        </cfoutput>
    </body>
</html>