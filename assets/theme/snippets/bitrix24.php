<?php
/*function CurlBitrix24($method, $arData=array()){
	$queryUrl = "https://bitrix.marillion.ru/rest/58/ybs2lbmo1twbscxn/".$method;   
	$curl = curl_init();
	curl_setopt_array($curl, array(
		CURLOPT_URL => $queryUrl,
		CURLOPT_SSL_VERIFYPEER => 0,
		CURLOPT_POST => 1,
		CURLOPT_HEADER => 0,
		CURLOPT_RETURNTRANSFER => 1,
	));
	
	if(!empty($arData)){
		curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($arData));
	}
	
	$result = curl_exec($curl);
	
	curl_close($curl);
	
	return json_decode($result,true);
}

$arFields = array(
	"TITLE" => htmlspecialchars($_POST['company'])
);


	//'NAME' => $_POST['name'],
	//'UF_CRM_1661713322' => $_POST['company'],
	//"PHONE" => array(array("VALUE"=>$_POST['phone'], "VALUE_TYPE"=>"WORK" )),
	//"EMAIL" => array(array("VALUE"=>$_POST['email'], "VALUE_TYPE"=>"WORK" )),
	//'SOURCE_DESCRIPTION' => $_POST['find'],
	//'UF_CRM_1668455894' => $_POST['message']


if (!empty($_POST['subject'])) {
	$arFields['UF_CRM_1669720914048'] = htmlspecialchars($_POST['subject']);
}

if (!empty($_POST['name'])) {
	$arFields['NAME'] = htmlspecialchars($_POST['name']);
}

if (!empty($_POST['company'])) {
	$arFields['UF_CRM_1661713322'] = htmlspecialchars($_POST['company']);
}

if (!empty($_POST['phone'])) {
	$arFields['PHONE'] = array(array("VALUE"=>htmlspecialchars($_POST['phone']), "VALUE_TYPE"=>"WORK" ));
}

if (!empty($_POST['email'])) {
	$arFields['EMAIL'] = array(array("VALUE"=>htmlspecialchars($_POST['email']), "VALUE_TYPE"=>"WORK" ));
}

if (!empty($_POST['find'])) {
	switch($_POST['find']) {
		case 'RAEX':
			$source_id = 'UC_2VLZM3';
			break;
		case 'SEM':
			$source_id = 'UC_WBNY2U';
			break;
		case 'External reference (Client recommendation)':
			$source_id = 'RECOMMENDATION';
			break;
		case 'SEO':
			$source_id = 'UC_JH2ZLW';
			break;
		case 'Worked with us in the past':
			$source_id = 'UC_5DUHG1';
			break;
		case 'other':
			$source_id = 'UC_6KFQIW';
			break;
	}
	
	$arFields['SOURCE_ID'] = $source_id;
}

if (!empty($_POST['questionOther'])) {
	$arFields['UF_CRM_1670244291896'] = htmlspecialchars($_POST['questionOther']);
}

if (!empty($_POST['message'])) {
	$arFields['UF_CRM_1668455894'] = htmlspecialchars($_POST['message']);
}

if (!empty($_POST['position'])) {
	$arFields['POST'] = htmlspecialchars($_POST['position']);
}

if(!empty($_FILES['attachment'])){
	$file = $_FILES['attachment'];
	$fileData = file_get_contents($file['tmp_name']);
	$arFields['UF_CRM_1668455842'] = array('fileData'=>array(0=>$file['name'],1=>base64_encode($fileData)));
}

$result = CurlBitrix24('crm.lead.add.json', array(
	'fields' => $arFields, 
	'params' => array("REGISTER_SONET_EVENT" => "Y")
));

$leadId = (is_array($result) && !empty($result["result"])) ? $result["result"]: false;   
echo json_encode($leadId);*/