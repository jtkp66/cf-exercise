<html>
    <head>
    <title>Update Form</title>
    </head>
    <body>
        <cfquery name='get_workouttypes'>
            SELECT * FROM workoutTypes WHERE workoutTypeId = #URL.workoutTypeId#
        </cfquery>
    
        <cfoutput query="get_workouttypes">
        <table>
            <form action="update_action.cfm" method="Post">
                <input type="Hidden" name="workoutTypeId" value="#workoutTypeId#"><br>
                <tr>
                    <td>Exercise:</td>
                    <td><input type="text" name="workoutType" value="#workoutType#"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="Submit" value="Update Information"></td>
                </tr>
            </form>
        </table>
        </cfoutput>
        <a href="index.cfm">Back to Home</a>
    </body>
</html>
