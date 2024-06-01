<?php
include '../function.php';
session_start();
$courses = getAllCourses();


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Begin bootstrap cdn -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="	sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <!-- End bootstrap cdn -->
    <title>Setting</title>
</head>

<body>
    <?php
    include 'navbar.php';
    ?>
    <main style=" max-width: 100%;">
        <div id="action" style="margin: 20px 0 0 13%;">
            <a href="courses.php" class="btn btn-primary">Trở lại</a>
        </div>
        <form method="post">
            <div style="margin: 20px 13%;">
                <div class="form-group">
                    <label for="number_question"><span style="color: red;">*</span>Số lượng câu hỏi</label>
                    <input class="form-control" id="number_question" name="number_question" type="number" />
                </div>
                <div class="form-group">
                    <label for="time"><span style="color: red;">*</span>Thời gian (phút)</label>
                    <input class="form-control" id="time" name="time" type="number" />
                </div>
                <div class="form-group">
                    <label for="limit"><span style="color: red;">*</span>Số lần làm tối đa</label>
                    <input class="form-control" id="limit" name="limit" type="number" />
                </div>

                <label for="name_quiz"><span style="color: red;">*</span>Chọn Khóa Học</label>
                <select class="form-select" name="course_id" aria-label="Default select example">
                    <option selected>---Khóa Học---</option>
                    <?php
                    foreach ($courses as $course) {
                        echo "<option value='$course[id]'>$course[course]</option>";
                    }
                    ?>
                </select>

                <input class="btn btn-primary mt-4" type="submit" name="submit_btn" value="Thiết lập">
            </div>

        </form>

        <?php
        if (isset($_POST['submit_btn'])) {
            $course_id = $_POST['course_id'];
            $number_question = $_POST['number_question'];
            $time = $_POST['time'];
            $limit_number = $_POST['limit'];

            if (empty($course_id) || empty($number_question) || empty($time) || empty($limit_number)) {
                echo "<script>alert('Vui lòng nhập đầy đủ thông tin')</script>";
            } else {
                $setting = getSetting($course_id);
                if ($setting) {
                    $result = updateSetting($course_id, $number_question, $time, $limit_number);
                    if ($result) {
                        echo "<script>alert('Thiết lập thành công')</script>";
                    } else {
                        echo "<script>alert('Thiết lập thất bại')</script>";
                    }
                } else {
                    $result = createSetting($course_id, $number_question, $time, $limit_number);
                    if ($result) {
                        echo "<script>alert('Thiết lập thành công')</script>";
                    } else {
                        echo "<script>alert('Thiết lập thất bại')</script>";
                    }
                }


            }
        }
        ?>
    </main>
</body>

</html>