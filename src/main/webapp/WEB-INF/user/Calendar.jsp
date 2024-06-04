<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <link rel="stylesheet" href="./assets/css/main.css">
    <title>Dynamic Calendar 2024</title>
    <style>
        .calendar-container, .graph-container {
            max-width: 1000px;
            margin: 20px auto;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 30px; /* 셀의 패딩을 늘림 */
            text-align: center;
            font-size: 10px; /* 글자 크기를 늘림 */
        }
        th {
            background-color: #CD0C22;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
<div>
    <p>출석 날짜:${attendance_day}</p>
    <p>체크인 시간: ${checkin}</p>
    <p>체크아웃 시간: ${checkout}</p>
    <p>휴가 시작:${holidaystart}</p>
    <p>휴가 끝:${holidayend}</p>
    <select id="monthSelect">
        <option value="1">January</option>
        <option value="2">February</option>
        <option value="3">March</option>
        <option value="4">April</option>
        <option value="5">May</option>
        <option value="6" selected>June</option>
        <option value="7">July</option>
        <option value="8">August</option>
        <option value="9">September</option>
        <option value="10">October</option>
        <option value="11">November</option>
        <option value="12">December</option>
    </select>
    <br><br>
    <input type="checkbox" id="viewMode" checked> <label for="viewMode">Calendar View</label>
    <input type="checkbox" id="graphMode"> <label for="graphMode">Graph View</label>
    <br><br>
</div>
<div class="calendar-container">
    <table id="calendar">
        <thead>
        <tr>
            <th>Sun</th>
            <th>Mon</th>
            <th>Tue</th>
            <th>Wed</th>
            <th>Thu</th>
            <th>Fri</th>
            <th>Sat</th>
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
</div>
<div class="graph-container hidden">
    <p>Graph View is not implemented yet.</p>
</div>

<script>
    const attendanceDay = "${attendance_day}";
    const checkinTime = "${checkin}";
    const checkoutTime = "${checkout}";
    const holidayStart = "${holidaystart}";
    const holidayEnd = "${holidayend}";

    function generateCalendar(year, month) {
        const firstDay = new Date(year, month, 1);
        const lastDay = new Date(year, month + 1, 0);
        const calendarBody = document.getElementById('calendar').getElementsByTagName('tbody')[0];
        calendarBody.innerHTML = "";
        let date = 1;
        for (let row = 0; row < 6; row++) {
            const newRow = calendarBody.insertRow(-1);
            for (let col = 0; col < 7; col++) {
                const cell = newRow.insertCell(-1);
                if ((row === 0 && col < firstDay.getDay()) || date > lastDay.getDate()) {
                    cell.innerHTML = "";
                } else {
                    cell.innerHTML = date;
                    let currentDate = new Date(year, month, date+1);
                    let formattedDate = currentDate.toISOString().split('T')[0];
                    if (formattedDate === attendanceDay) {
                        cell.innerHTML += `<br>체크인: ${checkin}<br>체크아웃: ${checkout}`;
                    } else if (formattedDate === holidayStart) {
                        cell.innerHTML += `<br>휴가 시작`;
                    } else if (formattedDate === holidayEnd) {
                        cell.innerHTML += `<br>휴가 끝`;
                    }
                    date++;
                }
            }
            if (date > lastDay.getDate()) break;
        }
    }

    document.getElementById('monthSelect').addEventListener('change', function() {
        generateCalendar(2024, parseInt(this.value) - 1);
    });

    document.getElementById('viewMode').addEventListener('change', function() {
        if (this.checked) {
            document.querySelector('.calendar-container').classList.remove('hidden');
            document.getElementById('graphMode').checked = false;
        } else {
            document.querySelector('.calendar-container').classList.add('hidden');
        }
    });

    document.getElementById('graphMode').addEventListener('change', function() {
        if (this.checked) {
            document.querySelector('.graph-container').classList.remove('hidden');
            document.getElementById('viewMode').checked = false;
        } else {
            document.querySelector('.graph-container').classList.add('hidden');
        }
    });

    generateCalendar(2024, 5); // Default to June 2024
</script>
</body>
</html>
