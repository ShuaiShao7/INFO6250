<%@ page import="edu.neu.project.dao.MemberDao" %><%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/21
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>jQuery UI Datepicker - Default functionality</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();

        } );
    </script>

    <script type="text/javascript" src="../script/jquery-1.7.2.js"></script>
    <script type="text/javascript">

        $(function (){
            $("#section").click(function ()
            {
                // alert("jquery");
                $("#choose").css("background", "#bbffaa");
            });
        }) ;

        $(function (){
            $("#time").click(function ()
            {
                // alert("jquery");
                $("#choose").css("background", "#fff");
            });
        }) ;


        $(function (){
            $("#section1").click(function ()
            {
                // alert("jquery");
                $("#span1").show();
                $("#span1").css("background", "#fff");
            });
        }) ;
        $(function (){
            $("#section2").click(function ()
            {
                // alert("jquery");
                $("#span2").show();
                $("#span2").css("background", "#fff");
            });
        }) ;$(function (){
            $("#section3").click(function ()
            {
                // alert("jquery");
                $("#span3").show();
                $("#span3").css("background", "#fff");
            });
        }) ;$(function (){
            $("#section4").click(function ()
            {
                // alert("jquery");
                $("#span4").show();
                $("#span4").css("background", "#fff");
            });
        }) ;$(function (){
            $("#section5").click(function ()
            {
                // alert("jquery");
                $("#span5").show();
                $("#span5").css("background", "#fff");
            });
        }) ;
    </script>
</head>

<style>
    table{
        margin-left: auto;
        margin-right: auto;
    }
    form {
        display: inline-block;
    }

    body{
        text-align: center;
        background-image: url("https://image.freepik.com/free-photo/office-lifestyle-sport-room-gym-nature_1339-3189.jpg");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
    }
    #content-box{
        background-color:#FAFAFA;
        border:2px solid #888;
        height:300px;
        overflow:scroll;
        padding:4px;
        width:500px;
    }
    #content-box p{
        border:1px solid #EEE;
        background-color:#F0F0F0;
        padding:3px;
    }
    #content-box p span{
        color:#00F;
        display:block;
        font:bold 21px Arial;
        float:left;
        margin-right:10px;
    }
    textarea{
        resize: none;
        background-color: lightgray;
    }
    span{
        display: none;
    }
</style>
<body>
<h1>Reserving Member with id : ${existingmember.id} </h1>

<form:form method="post" modelAttribute="existingmember" action="updateMemberDate.htm">
    <form:hidden path="id" />
    <form:hidden path="fName" />
    <form:hidden path="lName"/>
    <form:hidden path="street"/>
    <form:hidden path="city"/>
    <form:hidden path="state"/>
    <form:hidden path="zip"/>
    <form:hidden path="uName"/>
    <form:hidden path="password"/><br/>
    Reserve(GMT): <form:input value="2020/11/24" path="date" id="datepicker" readonly="true" name="date"/><br/>

    <h3>Wellness Check</h3>
    <div>
       Are you experiencing any of the following symptoms:?
        <select name="check1">
            <option value="check1Yes">Yes</option>
            <option value="check1No">No</option>
        </select>
        <br/>
        <label>
<textarea rows="7" cols="90" style="font-size: large"  readonly >
    • New loss of smell or taste
    • New or worsened muscle aches
    • Fever, feeling feverish or shaking chills
    • New or worsened cough
    • New or worsened shortness of breath
    • New or worsened sore throat
    • Diarrhea/vomiting</textarea>
        </label>
    </div>
<br/>
    <div>
       In the past fourteen (14) days, have you had close contact with someone who is confirmed as having COVID-19?<br/>
        Are you experiencing any of the following symptoms:?
        <select name="check2">
            <option value="check2Yes">Yes</option>
            <option value="check2No">No</option>
        </select><br/>
        <label>
<textarea rows="8" cols="95" style="font-size: large"  readonly >
    A close contact is defined as a person who:
    • provided care for the individual, including healthcare workers, family members or other caregivers, or who had similar close physical contact without consistent and appropriate use of personal protective equipments OR
    • who lived with or otherwise had close prolonged contact (within 6 feet/2 meters) with the person while they were infectious OR
    • had direct contact with infectious bodily fluids of the person (e.g., was coughed or sneezed on) while not wearing recommended personal protective equipment</textarea>
        </label>
    </div>
<br/>

    <h3 id="choose">Choose Your Section: (max 2 people in 30 min)</h3>
    <table align="center">
        <tr>
            <th>Cardiovascular Area</th>
            <th>Functional Fitness Area</th>
            <th>Free Weights Area</th>
            <th>Selectorized Equipment Area</th>
            <th>Stretching/Core Area</th>

        </tr>
        <tr>
            <td><img src="https://www.energwellness.com/wp-content/uploads/2015/10/Screen-Shot-2015-10-27-at-10.18.29-AM-300x209.png" width="300" height="200" alt="Not found...Please Wait for Support"  id="section1"/></td>
            <td><img src="http://www.energwellness.com/wp-content/uploads/2015/10/FunctionalArea.jpg" width="300" height="200" alt="Not found...Please Wait for Support" id="section2"/></td>
            <td><img src="https://www.energwellness.com/wp-content/uploads/2015/10/Screen-Shot-2015-10-27-at-10.29.37-AM-300x187.png" width="300" height="200" alt="Not found...Please Wait for Support" id="section3"/></td>
            <td><img src="https://www.energwellness.com/wp-content/uploads/2015/05/vocus3-f-300x144.jpg" width="300" height="200" alt="Not found...Please Wait for Support" id="section4"/></td>
            <td><img src="http://www.energwellness.com/wp-content/uploads/2015/05/imageninefinal.jpg" width="300" height="200" alt="Not found...Please Wait for Support" id="section5"/></td>
        </tr>

        <tr>
            <td><span id="span1">Treadmill, Elliptical, AMT, Interactive Fitness</span></td>
            <td><span id="span2">Battle ropes, Resistance bands, Medicine balls, Kettlebells</span></td>
            <td><span id="span3">Dumbbells, Power racks and half racks, Olympic bench press stations</span></td>
            <td><span id="span4">Leg press machine, Seated row, Precor multi-press, Pull down machine</span></td>
            <td><span id="span5">Mats, Stability balls, Foam rollers</span></td>

        </tr>
    </table>
    <br/>
    <div>
        Section:
        <form:select path="section" name="section" id="section">
            <form:option value="Cardiovascular Area"/>
            <form:option value="Functional Fitness Area"/>
            <form:option value="Free Weights Area"/>
            <form:option value="Selectorized Equipment Area"/>
            <form:option value="Stretching/Core Area"/>
        </form:select>
    </div>
<br/>
    <div>
        Time:
        <form:select path="time" name="time" id="time">
            <form:option value="8:00"/>
            <form:option value="8:30"/>
            <form:option value="9:00"/>
            <form:option value="9:30"/>
            <form:option value="10:00"/>
            <form:option value="10:30"/>
            <form:option value="11:00"/>
            <form:option value="11:30"/>
            <form:option value="12:00"/>
            <form:option value="12:30"/>
            <form:option value="13:00"/>
            <form:option value="13:30"/>
            <form:option value="14:00"/>
            <form:option value="14:30"/>
            <form:option value="15:00"/>
            <form:option value="15:30"/>
            <form:option value="16:00"/>
            <form:option value="16:30"/>
            <form:option value="17:00"/>
            <form:option value="17:30"/>
            <form:option value="18:00"/>
            <form:option value="18:30"/>
            <form:option value="19:00"/>
            <form:option value="19:30"/>
            <form:option value="20:00"/>
            <form:option value="20:30"/>
        </form:select>
    </div>
    <br/>
    <input type="submit" value="Reserve" />
</form:form>


<br/><br/>
<form:form method="post" modelAttribute="existingmember" action="returnMem.htm?id=${existingmember.id}">
    <input type="submit" value="Back to Member Page">
</form:form>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
