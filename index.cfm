<html>
    <head>
        <style>
        table, th, td {
          border: 1px solid black;
        }
        </style>
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
        <div id="pageBody">    
            <h1> Workout Types</h1> 
              <cfif listings.recordCount EQ 0 >
                <p>No exercises to display</p>
              <cfelse>
                <table>
                    <th>Exercise</th>
                    <th>Created On</th>
                    <cfoutput query="listings">
                        <tr>
                            <td>#workoutType#</td>
                            <td>#dateFormat(createdOn, "mmm dd yyyy")#</td>
                            <td><a href="update_form.cfm?workoutTypeId=#listings.workoutTypeId#">Edit</a></td>
                            <td><a href="isactive_form.cfm?workoutTypeId=#listings.workoutTypeId#">Deactivate</a></td>
                            <td><a href="delete_form.cfm?workoutTypeId=#listings.workoutTypeId#">Delete</a></td>
                        </tr>
                    </cfoutput>
                </table>
              </cfif>
        </div>
        <h2>Insert Data Form</h2>    
        <table>
            <form action="insert_action.cfm" method="post">
                <tr>
                    <td>Exercise:</td>
                    <td><input type="text" name="workoutType"></td>
                    <td><input type="Submit" value="Create">&nbsp;<input type="Reset" value="Clear Form"></td>
                </tr>
            </form>
        </table>
    </body>
</html>
