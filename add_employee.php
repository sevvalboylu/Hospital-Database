<?php

require('connector.php');

$E_name = $_POST['employeename'];
$E_Tcno = $_POST['employeetcno'];
$E_edtype = $_POST['edtype'];
$E_etype = $_POST['etype'];

$sql = "INSERT INTO employees (Employee_Name, Employee_TcNo, Employee_Did, Employee_Type) VALUES ('$E_name', '$E_Tcno', 
'$E_edtype', '$E_etype')";

$result = mysqli_query($db, $sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Add Employees </title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Hospital Database</a>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i>Employees <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="employees.php">All Employees</a>
                            </li>
                            <li>
                                <a href="doctors.php">Doctors</a>
                            </li>
                            <li>
                                <a href="nurses.php">Nurses</a>
                            </li>
                            <li>
                                <a href="janitors.php">Janitors</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="patients.php"><i class="fa fa-fw fa-table"></i> Patients</a>
                    </li>
                    <li class="active">
                        <a href="rooms.php"><i class="fa fa-fw fa-table"></i> Rooms</a>
                    </li>
                    <li class="active">
                        <a href="departmens.php"><i class="fa fa-fw fa-table"></i> Departments</a>
                    </li>
                    <li class="active">
                        <a href="visitors.php"><i class="fa fa-fw fa-table"></i> Visitors</a>
                    </li>
                    <li class="active">
                        <a href="responsible_from.php"><i class="fa fa-fw fa-table"></i> Nurses' Rooms</a>
                    </li>
                    <li>
                        <a href="add_patientform.php"><i class="fa fa-fw fa-edit"></i> Add Patient</a>
                    </li>
                    <li>
                        <a href="add_visitorsform.php"><i class="fa fa-fw fa-edit"></i> Add Visitors</a>
                    </li>
                    <li>
                        <a href="add_employeeform.php"><i class="fa fa-fw fa-edit"></i> Add Employees</a>
                    </li>
                    <li>
                        <a href="Nurseaddform.php"><i class="fa fa-fw fa-edit"></i> Assign Nurse To Room</a>
                    </li>
                    <li>
                        <a href="add_patientromform.php"><i class="fa fa-fw fa-edit"></i> Room Register</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
    </nav>

    <div id="page-wrapper">

        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Add Employee
                    </h1>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-6">
                    <div class="table-responsive">
                        <?php
                        if($result) {
                            echo"<div class=\"alert alert-success\">
                                    <strong>Well done! </strong>Employee : $E_name  is added successfully
                                </div>";
                        }
                        else {
                            echo "<div class=\"alert alert-danger\">
                                    <strong>ERROR! </strong>  Something went wrong! Please try again.
                                   </div>";
                        }
                        ?>
                    </div>
                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>

