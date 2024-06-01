<?php
include_once "../function.php";
session_start();
$courses = getAllCourses();
// print_r($courses);
$currentUser = $_SESSION['currentUser'];

if (isset($_POST['btn-state']) or isset($_POST['btn-state-hidden'])) {
    header("Refresh:0");
}
if ($currentUser['role'] != 1) {
    header("Location: courses.php");
}
?>
<!DOCTYPE html>
<html lang="en	">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Khóa học</title>

    <!-- Begin bootstrap cdn -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="	sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <!-- End bootstrap cdn -->
    <script src="https://kit.fontawesome.com/772918bb67.js" crossorigin="anonymous"></script>
</head>

<body>
    <?php include 'navbar.php'; ?>
    <main style="min-height: 100vh; width: 100%;">
        <div class="" style="text-align: center;">
            <h2>Danh sách khóa học</h2>
        </div>
        <style>
            .btn-primary:hover {
                background-color: #2980b9;
            }
        </style>

        <div class="align-items-center ms-5">
            <a href="courses.php" class="btn btn-primary"><i class="fa-solid fa-arrow-left"></i></a>
            <button type="button" class="btn btn-primary">
                <a href="AddCourse.php" style="color: inherit; text-decoration: none;"><i
                        class="fa-solid fa-plus"></i></a>
            </button>
        </div>

        <div class="d-flex flex-wrap flex-column align-items-center" style="padding: 1%;margin: 5% 0 0 0; ">
            <table class="table table-striped">
                <tr>
                    <th>STT</th>
                    <th>Tên khóa học</th>
                    <th>Trạng thái</th>
                    <th>Thao tác</th>
                </tr>
                <?php
                $i = 0;
                foreach ($courses as $c) {
                    $i++;
                    if ($c['id'] == 106) {
                        continue;
                    }
                    echo "<tr>
                    <td>" . $i . "</td>
                    <td>" . $c['course'] . "</td>";
                    if ($c['state'] == 1) {
                        echo "<td>Đã được duyệt</td>";
                    } else {
                        echo "<td>Đang ẩn</td>";
                    }
                    echo "<td>
                    <form method='POST'>
                        <input type='hidden' value='" . $c['id'] . "' name='id'/>";
                    if ($c['state'] == 1) {
                        echo "<input type='submit' class='btn btn-success' value='Tạm ẩn' name='btn-state-hidden'>";
                    } else {
                        echo "<input type='submit' class='btn btn-success' value='Duyệt' name='btn-state'>";
                    }
                    echo "<input type='submit' name='btn-delete' value='Xóa' class='btn btn-danger'/>";
                    echo "</form></td>";
                }
                if (isset($_POST["btn-state"])) {
                    $id = $_POST['id'];
                    $checkApprove = approveCourse($id);
                    if ($checkApprove) {
                        echo "<script>alert('Duyệt khóa học thành công')
                    </script>";
                    }
                }
                if (isset($_POST["btn-state-hidden"])) {
                    $id = $_POST['id'];
                    $checkHidden = hiddenCourse($id);
                    if ($checkHidden) {
                        echo "<script>alert('Ẩn khóa học thành công')
                    </script>";
                    }

                }
                if (isset($_POST['btn-delete'])) {
                    $id = $_POST['id'];
                    $checkDelete = deleteCourse($id);
                    if ($checkDelete) {
                        echo "<script>alert('Xóa khóa học thành công')
                        window.location.href = 'CourseManagement.php';
                    </script>";
                    } else {
                        echo "Xóa khóa học thất bại";
                    }
                }
                ?>
            </table>
        </div>

        </div>
    </main>
    <?php include 'footer.php'; ?>
</body>


</html>