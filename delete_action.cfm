<head>
    <title>Delete Exercise</title>
</head>
<body>
    <cfquery name="DeleteExercise" datasource="YardMapper">
        DELETE FROM workoutTypes
        WHERE workoutTypeId = #Form.workoutTypeId#
    </cfquery>
    <h1>The exercise record has been deleted.</h1>
    <cfoutput>
        You have deleted #Form.workoutType# from the database.
        <a href="index.cfm">Back to Home</a>
    </cfoutput>
</body>