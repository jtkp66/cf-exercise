<html>
    <head>
    <title>Deactivate Exercise Form</title>
    </head>
    <body>
        <cfquery name='deactivate_workouttypes'>
            SELECT * FROM workoutTypes WHERE workoutTypeId = #URL.workoutTypeId#
        </cfquery>

        <cfoutput query="deactivate_workouttypes">
            <table>
                <form action="isactive_action.cfm" method="Post">
                    <input type="Hidden" name="workoutTypeId" value="#workoutTypeId#"><br>
                    <tr>
                        <td>Exercise:</td>
                        <td><input type="text" name="workoutType" value="#workoutType#"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><input type="Submit" value="Deactivate Exercise"></td>
                    </tr>
                </form>
            </table>
        </cfoutput>
        <a href="index.cfm">Back to Home</a>
    </body>
</html>
