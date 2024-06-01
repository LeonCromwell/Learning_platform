<?php
include '../function.php';
session_start();
$currentUser = $_SESSION['currentUser'];
$course_id = $_GET['course_id'];

$course = getCourse($course_id);
$nameCourse = $course['course'];

$check = isUserEnrolled($currentUser['id'], $course_id);
if (!$check) {
    header("location: courses.php");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm câu hỏi</title>
    <!-- Begin bootstrap cdn -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="	sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <!-- End bootstrap cdn -->
    <style>
        .form-check {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }


        .form-check-input[type=checkbox] {
            margin-bottom: 5px;
        }
    </style>

</head>

<body>
    <?php
    include 'navbar.php';
    ?>
    <main style=" max-width: 100%;">
        <div id="action" style="margin: 20px 0 0 13%;">
            <p class="h3">Khóa học
                <?php echo $nameCourse; ?>
            </p>
            <a href="CourseDetail.php?course_id=<?php echo $course_id ?>" class="btn btn-primary">Trở lại</a>
            <p>Lưu ý khi điền sai thông tin, phải nhập lại số lượng đáp án mới tiếp tục bấm thêm câu hỏi</p>
        </div>
        <form action="" method="POST" enctype="multipart/form-data">
            <div style="margin: 20px 13%;">
                <div class="form-group">
                    <label for="name_quiz"><span style="color: red;">*</span>Nhập tên câu hỏi</label>
                    <input class="form-control" type="text" name="question_name" id="" value="<?php
                    echo isset($_POST['question_name']) ? $_POST['question_name'] : "";
                    ?>">
                </div>
                <div class="form-group">
                    <label for="name_quiz">Ảnh cho câu hỏi</label>
                    <input class="form-control" type="file" name="file" id="" accept="image/png, image/jpeg, image/jpg">
                </div>
                <div class="form-group">
                    <label for="name_quiz">Câu hỏi trắc nghiệm</label>
                    <input class="form-control" value="Trắc nghiệm" readonly type="text" name="type_question"
                        id="     ">
                </div>
                <div style='margin: 20px 0 0 0;' class='form-group mb-3'>
                    <label for="numberAnswer">Số lượng đáp án</label>
                    <input name='numberAnswer' id="numberAnswer" type='text' class='form-control'
                        placeholder='Nhập số lượng đáp án' value="<?php
                        echo isset($_POST['numberAnswer']) ? $_POST['numberAnswer'] : "";
                        ?>">
                </div>
                <div class='form-group' id='list-answer-container'></div>
                <?php
                function saveValue($i)
                {
                    if (isset($_POST['a' . $i])) {
                        return $_POST['a' . $i];
                    }
                    return "";
                }

                $numberQuestion = 0;
                if (isset($_POST['numberAnswer'])) {
                    $numberQuestion = $_POST['numberAnswer'];
                }

                ?>
                <div style="margin: 20px 0 0 0;" class="d-grid">
                    <input class="btn btn-primary btn-block" name="btn-add" type="submit" value="Thêm câu hỏi">
                </div>
            </div>

            <script>
                var listAnswerContainer = document.getElementById('list-answer-container');
                var numberAnswerInput = document.getElementById('numberAnswer');
                numberAnswerInput.addEventListener('change', (e) => {
                    var numberAnswer = e.target.value;
                    var listAnswerContainer = document.getElementById('list-answer-container');
                    listAnswerContainer.innerHTML = "";
                    if (numberAnswer > 1) {
                        for (let i = 1; i <= numberAnswer; i++) {
                            listAnswerContainer.innerHTML += `
                    <label for='name_quiz'>Đáp án ${i}</label>
                        <div class='form-check'>
                        <input class='form-check-input' type='checkbox' name='true${i}' value='${i}' id='flexCheckDefault'>
                        <input class='form-control'  type='text' name='a${i}'>
                        </div>
                `;
                        }
                    }
                    else alert('Số lượng đáp án phải lớn hơn 1');
                })

            </script>
        </form>
        <?php
        if (isset($_POST['btn-add'])) {
            $question_name = $_POST['question_name'];
            $type_question = $_POST['type_question'];
            $numberAnswer = $_POST['numberAnswer'];
            $file = $_FILES['file'];
            $image = "";
            if (!empty($question_name) && !empty($numberAnswer)) {
                //lấy đáp án
                if ($numberAnswer > 1) {
                    $atLeastOneChecked = false;
                    for ($i = 1; $i <= $numberAnswer; $i++) {
                        $answer = isset($_POST['a' . $i]) ? trim($_POST['a' . $i]) : '';

                        if (empty($answer)) {
                            echo "<script>alert('Đáp án không được trống')</script>";
                            exit;
                        }

                        if (isset($_POST['true' . $i])) {
                            $atLeastOneChecked = true;
                        }
                    }

                    if (!$atLeastOneChecked) {
                        echo "<script>alert('Ít nhất phải chọn một đáp án đúng')</script>";
                        exit;
                    }

                    //lấy đáp án đúng
                    $true_answer = array();
                    for ($i = 1; $i <= $numberAnswer; $i++) {
                        if (isset($_POST['true' . $i])) {
                            $true_answer[$i] = $_POST['true' . $i];
                        }
                    }
                    $answer = [];
                    for ($i = 1; $i <= $numberAnswer; $i++) {
                        $answer[$i] = ['answer' => $_POST['a' . $i], 'is_true' => 0];
                        foreach ($true_answer as $key => $value) {
                            if ($i == $value) {
                                $answer[$i] = ['answer' => $_POST['a' . $i], 'is_true' => 1];
                            }
                        }
                    }
                }
                //upload image
                if ($file['error'] == 0) {
                    $fileName = $file['name'];
                    $fileTmp = $file['tmp_name'];
                    $fileSize = $file['size'];
                    $fileType = $file['type'];
                    $arr = explode('.', $fileName);
                    $fileExtension = strtolower(end($arr));
                    $allow = array('png', 'jpg', 'jpeg');
                    if (in_array($fileExtension, $allow)) {
                        if ($fileSize < 5000000) {
                            $newFileName = uniqid('image-', true) . "." . $fileExtension;
                            $image = $newFileName;
                            if (!is_dir('../uploads/images')) {
                                mkdir('../uploads/images');
                            }
                            move_uploaded_file($fileTmp, '../uploads/images/' . $newFileName);
                        } else {
                            echo "<script>alert('File quá lớn')
                    </script>";
                        }
                    } else {
                        echo "<script>alert('File không đúng định dạng')
                    </script>";
                    }
                }
                if ($atLeastOneChecked) {
                    $result = createQuestionChoice($question_name, $type_question, $image, $course_id, $answer);
                }

                if ($result) {
                    date_default_timezone_set('Asia/Ho_Chi_Minh');
                    $currentDateTime = date("Y-m-d H:i:s");
                    createNotificationForUser($nameCourse, $currentUser['fullname'] . " đã đóng góp câu hỏi mới", $currentDateTime, 13);

                    echo "<script>alert('Thêm câu hỏi thành công')
                        window.location.href = 'CourseDetail.php?course_id=" . $course_id . "';
                    </script>";

                } else {
                    echo "<script>alert('Thêm câu hỏi thất bại')
                    </script>";
                }
            } else {
                echo "<script>alert('Thêm câu hỏi thất bại, không được để trống thông tin')
                    </script>";
            }
        }
        ?>
    </main>
    <?php
    include 'footer.php';
    ?>

</body>

</html>