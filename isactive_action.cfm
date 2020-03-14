<head>
    <title>Deactivate Exercise</title>
</head>
<body>
    <cfquery name="DeleteExercise" datasource="YardMapper">
        UPDATE workoutTypes SET isActive = 0
        WHERE workoutTypeId = #Form.workoutTypeId#
    </cfquery>
    <h1>The exercise record has been deactivated.</h1>
    <cfoutput>
        You have deactivated #Form.workoutType# in the database.
        <a href="index.cfm">Back to Home</a>
    </cfoutput>
</body>
