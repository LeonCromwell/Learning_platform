<?php
include '../function.php';
session_start();
$course_id = $_GET['course_id'];
$setting = getSetting($course_id);

if ($course_id == 106) {
    $_SESSION['listQuestion'] = getQuestionsForExam($setting['number_question']);
    header("location: Exam.php");
} else {
    $_SESSION['listQuestion'] = getQuestionsForQUizz($course_id);
    header("location: Practice.php?course_id=$course_id");
}

?>