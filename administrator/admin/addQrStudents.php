<?php
ob_start();
require_once 'core/init.php';
// include "qrLib/qrlib.php";
if (Input::exists()) {
			//set it to writable location, a place for temp generated PNG files
			$PNG_TEMP_DIR = dirname(__FILE__).DIRECTORY_SEPARATOR.'studentQRCodes'.DIRECTORY_SEPARATOR;

			//ofcourse we need rights to create temp dir
			if (!file_exists($PNG_TEMP_DIR))
				mkdir($PNG_TEMP_DIR);

			$filename = '';

			//processing form input
			//remember to sanitize user input in real-life solution !!!
			$errorCorrectionLevel = 'H';
			$matrixPointSize = 10;

			if (isset($_REQUEST['fname'])) {
				// user data
				$newfilename = round(microtime(true)).'.png';
				$filename = $PNG_TEMP_DIR.$newfilename;
				QRcode::png($_REQUEST['fname']. ' ' . $_REQUEST['lname'] . ' ' . $_REQUEST['LRN'], $filename, $errorCorrectionLevel, $matrixPointSize, 2);

			}
			$qr_students = new QRStudents();
            try {
                $qr_students->create(array(
                  'fname' => Input::get('fname'),
                  'midname' => Input::get('midname'),
                  'lname' => Input::get('lname'),
                  'grade' => Input::get('grade'),
                  'section' => Input::get('section'),
                  'contact' => Input::get('contact'),
                  'LRN' => Input::get('LRN'),
					'qrcode' => $newfilename
                ));

			Session::flash('Added', 'New Student has been successfully added.');
			Redirect::to('admin.php?action=listQrStudents');
            } catch(Exception $e) {
                echo $e, '<br>';
            }
}
ob_end_flush();
