<?php
include '../function.php';
if (isset($_POST['countdown_expired'])) {
    header("location: Point.php?course_id=106");
}
session_start();


$currentUser = $_SESSION['currentUser'];

$course_id = 106;
$listResult = getResultByUserandCourseId($currentUser['id'], $course_id);
$setting = getSetting($course_id);
$time = $setting['time'];


if (count($listResult) >= $setting['limit_number']) {
    echo "<script>alert('Bạn đã hết số lần làm bài')
        window.location.href = 'courses.php'
    </script>";
}


$questionForQuizz = $_SESSION['listQuestion'];

if (isset($_SESSION['result']) && empty($_SESSION['result'])) {
    foreach ($questionForQuizz as $value) {
        $_SESSION['result'][] = $value['id'];
    }
}




foreach ($questionForQuizz as $index => $q) {
    $questionForQuizz[$index]['answers'] = getAnswer($q['id']);
}


function checkType($type)
{
    if ($type == "Điền") {
        return 0;
    } else if ($type == "Trắc nghiệm") {
        return 1;
    } else
        return 2;
}

$check = isUserEnrolled($currentUser['id'], $course_id);
if (!$check) {
    echo "<script>alert('Hiện tại bạn không có bài kiểm tra nào')
                        window.location.href = 'courses.php';
                    </script>";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exam</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="	sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <style>
        body {
            background-color: #f8f9fa;

        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #007bff;
        }

        .title {
            color: #343a40;
            margin-bottom: 10px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-check {
            margin-bottom: 10px;
        }

        .btn-submit {
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-submit:hover {
            background-color: #218838;
        }

        .container-drag-drop {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #column {
            cursor: grab;
        }

        .list {
            background: blue;
            height: 40px;
            margin: 30px;
            color: #fff;
            display: flex;
            align-items: center;
            cursor: grab;
            user-select: none;
        }

        .list i {
            margin-right: 15px;
            margin-left: 20px;
        }
    </style>
</head>

<body>
    <form method="POST" id='form'>

        <input type="hidden" name="countdown_expired" value="1">
        <div class="align-items-center">
            <a href="courses.php" class="btn btn-primary">Trở lại</a>
        </div>

        <div class=" countdowncontainer" id='countdowncontainer'
            style='width: 20%;min-width:5%;display: flex; justify-content: center;position: absolute; top: 20%;left: 0;'>
        </div>
        <div class="container">
            <h2>BÀI THI</h2>
            <?php
            $true_answer = [];
            $currentDateTime = '';
            $i = 0;
            foreach ($questionForQuizz as $index => $q) {
                $numberTrueAnswer = 0;

                $i++;
                if (checkType($q['type']) == 0) {

                    echo "
                        <div class='form-group'>
                            <h5 class='title'>Câu " . $i . ": " . $q['question'] . "?</h5>
                            <input type='hidden' name='' value=" . $q['id'] . ">
                    ";
                    if ($q['image'] != null) {
                        echo "<img src='../uploads/images/" . $q['image'] . "' alt='image' style='max-width:500px;max-height:250px; margin-bottom: 10px;'>";
                    }
                    echo "
                            <input class='form-control' type='text' name='" . $q['id'] . "'>
                        </div>
                ";
                } else if (checkType($q["type"]) == 1) {
                    foreach ($q['answers'] as $key => $a) {
                        if ($a['is_true'] == 1) {
                            $numberTrueAnswer++;
                        }
                    }
                    echo "
                        <div class='form-group'>
                        <h5 class='title'>Câu " . $i . ": " . $q['question'] . "?</h5>
                    ";
                    //ảnh
                    if ($q['image'] != null) {
                        echo "<img src='../uploads/images/" . $q['image'] . "' alt='image' style='max-width:500px;max-height:250px; margin-bottom: 10px;'>";
                    }


                    foreach ($q['answers'] as $key => $a) {
                        if ($numberTrueAnswer > 1) {
                            echo "
                                <div class='form-check'>
                                    <input class='form-check-input' type='checkbox'  name='" . $q['id'] . "[]' id='flexCheckDefault' value='" . $a['id'] . "'>
                                    <label class='form-check-label' for='flexCheckDefault'>" . $a['answer'] . "</label>
                                </div>";
                        } else {
                            echo "
                                <div class='form-che ck'>
                                    <input class='form-check-input' type='radio' name='" . $q['id'] . "[]' id='flexRadioDefault" . $key . "' value='" . $a['id'] . "'>
                                    <label class='form-check-label' for='flexRadioDefault1'>
                                        " . $a['answer'] . "
                                    </label>
                                 </div>";
                        }
                    }
                    echo "</div>";
                } else {
                    echo '<div class="form-group">';
                    echo '<h5 class="title">Câu ' . $i . ': ' . $q['question'] . '?</h5>';
                    echo '<div class="container"><div id="column' . $i . '">';

                    foreach (getRandomAnswer($q['id']) as $index => $value) {

                        echo '<div class="list" draggable="true" data-index="' . $index . '">';
                        echo '<i class="fa fa-list-ul" aria-hidden="true"></i>' . htmlspecialchars($value['answer']);
                        echo '<input type="hidden" name="sortedValues[' . $q['id'] . '][]" value="' . $value['ordinalNumber'] . '">';
                        echo '</div>';
                    }
                    echo "</div></div></div>
                        <form method='POST' id='myForm'>
                            <input type='hidden' name='result' id='resultInput" . $i . "' value=''>
                        </form>";
                    echo '<script>
                                $(function () {
                                    $("#column' . $i . '").sortable({
                                        update: function (event, ui) {
                                            updateOrder();
                                        }
                                    });
    
                                    function updateOrder() {
                                        var result = $("#column' . $i . '").sortable("toArray");
                                        $("#resultInput' . $i . '").val(JSON.stringify(result));
                                    }
                                });
                            </script>';

                }
            }

            ?>
            <button class="btn btn-submit" onclick="submit()">Nộp bài</button>
            <!-- Tính điểm -->
            <?php

            if (isset($_POST['countdown_expired'])) {
                date_default_timezone_set('Asia/Ho_Chi_Minh');
                $currentDateTime = date("Y-m-d H:i:s");
                $userAnswer = $_POST;
                $point = 0;
                $_SESSION['user_answer'] = $userAnswer;


                foreach ($userAnswer as $key => $value) {
                    if (gettype($value) == 'array' && $key != 'countdown_expired' && $key != 'sortedValues' && $key != 'result') {
                        $true_answer = [];
                        $listAnswer = getAnswer($key);
                        foreach ($listAnswer as $index => $a) {
                            if ($a['is_true'] == 1) {
                                array_push($true_answer, $a['id']);
                            }
                        }

                        if (count($true_answer) == count($value)) {
                            $check = true;
                            foreach ($value as $index => $v) {
                                if (!in_array($v, $true_answer)) {
                                    $check = false;
                                }
                            }
                            if ($check) {
                                $point++;
                            }
                        }
                    } elseif (gettype($value) == 'string' && $key != 'countdown_expired' && $key != 'sortedValues' && $key != 'result') {
                        $listAnswer = getAnswer($key);
                        if ($value != null && $value == $listAnswer[0]['answer']) {
                            $point++;

                        }
                    } elseif (gettype($value) == 'array' && $key == 'sortedValues') {
                        foreach ($value as $index => $v) {
                            $check = true;
                            foreach ($v as $i => $item) {
                                if ($item != $i + 1) {
                                    $check = false;
                                }
                            }
                            if ($check) {
                                $point++;
                            }
                        }
                    }
                }
                // echo json_encode($questionForQuizz);
                // echo json_encode($userAnswer);
                $questionId = [];
                foreach ($questionForQuizz as $index => $q) {
                    array_push($questionId, $q['id']);
                }
            
                saveResult($currentUser['id'], $point, 106, $currentDateTime, json_encode($questionId), json_encode($userAnswer));
            }
            ?>

    </form>

    <script>
        function submit() {
            var form = document.getElementById('form');
            form.submit();
        }
    </script>


    <!-- count down -->
    <?php

    echo <<<EOD
            <script type="text/javascript">
            var duration = $time * 60 * 1000;
            var x;
            window.onload = e => {
                e.preventDefault();
                var startTime = new Date().getTime();
                if (x) clearInterval(x);
                x = setInterval(function () {
                    var now = new Date().getTime();
                    var distance = startTime + duration - now;
                    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                    document.getElementById("countdowncontainer").innerHTML = 'Thời gian:  ' + minutes + "m " + seconds + "s ";
                    if (distance <= 0) {
                        clearInterval(x);
                        document.getElementById("countdowncontainer").innerHTML = "Hết thời gian!";
                        document.getElementById("countdowncontainer").setAttribute("class", "text-danger");
                        submit();
                    }
                }, 1000);
            };
        </script>
        EOD;

    ?>



</body>

<?php include 'footer.php'; ?>

</html>