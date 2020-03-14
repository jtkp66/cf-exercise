<html>
    <head>
    <title>Delete Form</title>
    </head>
    <body>
        <cfquery name='delete_workouttypes'>
            SELECT * FROM workoutTypes WHERE workoutTypeId = #URL.workoutTypeId#
        </cfquery>

        <cfoutput query="delete_workouttypes">
            <table>
                <form action="delete_action.cfm" method="Post">
                    <input type="Hidden" name="workoutTypeId" value="#workoutTypeId#"><br>
                    <tr>
                        <td>Exercise:</td>
                        <td><input type="text" name="workoutType" value="#workoutType#"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="Submit" value="Delete Exercise"></td>
                    </tr>
                </form>
            </table>
        </cfoutput>
        <a href="index.cfm">Back to Home</a>
    </body>
</html>