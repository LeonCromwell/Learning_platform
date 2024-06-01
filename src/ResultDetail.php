<?php
include '../function.php';

$id_result = $_GET['id_result'];
$resultDetail = getResultDetailById($id_result);

$listQuestion = json_decode($resultDetail['question_id'], true);
$userAnswer = json_decode($resultDetail['user_answer'], true);


$list = [];
foreach ($listQuestion as $key => $value) {
    $list[] = getQuestionById($value);
}
foreach ($list as $index => $q) {
    $list[$index]['answers'] = getAnswer($q['id']);
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

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="	sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <title>Document</title>
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
    <div class="align-items-center mt-4 ms-4">
        <a href="courses.php" class="btn btn-primary">Trở lại</a>
    </div>
    <div class="container">
        <h2>KẾT QUẢ</h2>



        <div>
            <?php
            $true_answer = [];
            $currentDateTime = '';
            $i = 0;
            $idUserAnswer = [];
            foreach ($userAnswer as $key => $value) {
                if (gettype($value) == 'array' && $key != 'countdown_expired' && $key != 'sortedValues' && $key != 'result') {
                    foreach ($value as $index => $v) {
                        $idUserAnswer[] = $v;
                    }

                }
            }
            foreach ($list as $index => $q) {
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
                    foreach ($userAnswer as $key => $value) {
                        if ($key == $q['id']) {
                            echo "
                        <input class='form-control' type='text' name='" . $q['id'] . "' value='" . $value . "' readonly>
                        </div>
                        ";
                        }
                    }
                    ;
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
                            if (in_array($a['id'], $idUserAnswer)) {
                                echo "
                            <div class='form-check'>
                                <input class='form-check-input' type='checkbox'  name='" . $q['id'] . "[]' id='flexCheckDefault' value='" . $a['id'] . "' checked disabled>
                                <label class='form-check-label' for='flexCheckDefault'>" . $a['answer'] . "</label>
                            </div>";
                            } else {
                                echo "
                            <div class='form-check'>
                                <input class='form-check-input' type='checkbox'  name='" . $q['id'] . "[]' id='flexCheckDefault' value='" . $a['id'] . "' disabled>
                                <label class='form-check-label' for='flexCheckDefault'>" . $a['answer'] . "</label>
                            </div>";
                            }

                        } else {
                            if (in_array($a['id'], $idUserAnswer)) {
                                echo "
                            <div class='form-che ck'>
                                <input class='form-check-input' type='radio' name='" . $q['id'] . "[]' id='flexRadioDefault" . $key . "' value='" . $a['id'] . "' checked disabled>
                                <label class='form-check-label' for='flexRadioDefault1'>
                                    " . $a['answer'] . "
                                </label>
                             </div>";
                            } else {
                                echo "
                            <div class='form-che ck'>
                                <input class='form-check-input' type='radio' name='" . $q['id'] . "[]' id='flexRadioDefault" . $key . "' value='" . $a['id'] . "' disabled>
                                <label class='form-check-label' for='flexRadioDefault1'>
                                    " . $a['answer'] . "
                                </label>
                             </div>";
                            }

                        }
                    }
                    echo "</div>";
                } else {
                    echo '<div class="form-group">';
                    echo '<h5 class="title">Câu ' . $i . ': ' . $q['question'] . '?</h5>';
                    echo '<div><div id="column' . $i . '">';
                    foreach ($userAnswer['sortedValues'][$q['id']] as $key => $value) {
                        $sort = getAnswer($q['id']);
                        foreach ($sort as $index => $s) {
                            if ($s['ordinalNumber'] == $value) {
                                echo '<div class="list" draggable="true" data-index="' . $index . '">';
                                echo '<i class="fa fa-list-ul" aria-hidden="true"></i>' . htmlspecialchars($s['answer']);
                                echo '<input type="hidden" name="sortedValues[' . $q['id'] . '][]" value="' . $s['ordinalNumber'] . '">';
                                echo '</div>';
                            }
                        }
                    }
                    echo '</div></div>';



                }
            }

            ?>
        </div>
</body>

</html>