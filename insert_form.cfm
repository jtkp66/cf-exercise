<html>
    <head>
    <title>Insert Data Form</title>
    </head>
    <body>
        <cfquery name='get_users'>
            SELECT * FROM users
        </cfquery>
        <cfdump var='#get_users#'>
        <cfquery name='get_workouts'>
            SELECT * FROM workouts
        </cfquery>
        <cfdump var='#get_workouts#'>
        <cfquery name='get_workouttypes'>
            SELECT * FROM workoutTypes
        </cfquery>
        <cfdump var='#get_workouttypes#'>
        <cfquery datasource="YardMapper" name="listings">
            SELECT * FROM workoutTypes WHERE isActive=1
        </cfquery>
        
        <h2>Insert Data Form</h2>
        
        <table>
            <form action="insert_action.cfm" method="post">
                <label>Select Exercise Type</label>
                <td>&nbsp;</td>
                <select name="workoutType">
                    <cfoutput query="get_workouttypes">
                        <option value="#workoutTypeId#">#workoutType#</option>
                    </cfoutput>
                </select>
                <tr>
                    <td># of Reps:</td>
                    <td><input type="text" name="workoutType"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" value="Clear Form"></td>
                </tr>
            </form>
        </table>
    </body>
</html>