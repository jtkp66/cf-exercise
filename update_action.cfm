<html>
    <head>
    <title>Update Employee</title>
    </head>
    <body>
        <cfquery name="UpdateExercise" datasource="YardMapper">
            UPDATE workoutTypes
            SET workoutType = '#Form.workoutType#'
            WHERE workoutTypeId = #Form.workoutTypeId#
        </cfquery>
        
        <h1>Employee Updated</h1>
        <cfoutput>
            You have updated the information for #Form.workoutType# in the database.
            <a href="index.cfm">Back to Home</a>
        </cfoutput>
    </body>
</html>