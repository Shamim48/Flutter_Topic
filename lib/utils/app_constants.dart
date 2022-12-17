
import 'images.dart';

class AppConstants {

  //API list
  //String BASE_URL=Provider.of<AuthProvider>(, listen: false).getBASEURL();
  //static const String BASE_URL='https://eduguard360.com/v3.2/api';
  //static const String BASE_URL='http://192.168.1.12:8080/api';
  static const String Login_Uri='/signin/index';
  static const String Registration_Uri='/addAdmin';
  static const String UserInfo_Uri='/getAdmin/1';
  static const String PackageList_Uri='/dataProcessingPackage';
  static const String ScheduleLlist_Uri='/dataProcessingSchedule';
  static const String ScheduleAdd_Uri='/addSchedule';
  static const String ScheduleUpdate_Uri='/updateSchedule/';
  static const String ClientList_Uri='/dataProcessingClient';
  static const String MyListing_Uri='/dataProcessingFlatList';
  static const String AddClient_Uri='/addClient';
  static const String CLIENT_TYPE_Uri='/client_type';
  static const String City_Uri='/dataProcessingCity';
  static const String PROVINCE_Uri='/dataProcessingProvince';
  static const String Trip_Uri='/dataProcessingTrip';
  static const String TripDetails_Uri='/getTrip/';
  static const String AddAccount_Uri='/addAccount';
  static const String IncomeAccountHead_Uri='/accountLedgerListByType/';
  static const String ExpenseAccountHead_Uri='/accountLedgerListByType/';
  static const String AddVoucher_Uri='/addApiVoucher';
  static const String VoucherID_Uri='/voucherId';
  static const String AddMyListing_Uri='/addFlatList';
  
  // Edugaurd End URL
  static const String NOTICE='/notice/index';
  static const String NOTICE_View='/notice/view/';
  static const String eventview='/event/index';
  static const String eventDetails='/event/view/';
  static const String holidayview='/holidayview/';
  static const String holiday='/holiday/index';
  static const String holidayDetails='/holiday/view/';
  static const String assignment='/assignment/index/';
  static const String assignmentDetails='/assignment/view/';
  static const String classwork='/classwork/index/1';
  static const String homework='/homework/index/1';
  static const String duePayment='/invoice/index_due';
  static const String paidPayment='/invoice/index_paid';
  static const String dashboard='/dashboard/index';
  static const String parents='/parents/view/';
  static const String attendanceWeekly='/sattendance/view_weekly/';
  static const String attendanceDaily='/sattendance/view_daily/';
  static const String attendanceMonthly='/sattendance/view_monthly/';
  static const String siteInfo='/site/index';
  static const String classes='/classes/index';
  static const String section='/section/index/';
  static const String addAttendance='/sattendance/add';
  static const String saveAttendance='/sattendance/saveattendance';
  static const String noticeAdd='/notice/add';
  static const String eventAdd='/event/add';
  static const String holidayAdd='/holiday/add';
  static const String subjectList='/subject/index/';
  static const String addAssignment='/assignment/add';
  static const String homeworkAdd='/homework/add';
  static const String classworkAdd='/classwork/add';
  static const String assignmentAnswer='/assignment/assignmentanswer';
  static const String assignmentsubmitlist='/assignment/assignmentsubmitlist/';
  static const String assignmentSubmitCheck='/assignment/submit_check/';
  static const String homeworkAnswer='/homework/homeworkanswer';
  static const String classworkAnswer='/classwork/classworkanswer';
  static const String pushnotification='/pushnotification/all';
  static const String classRoutine='/routine/index/';
  static const String examRoutine='/examschedule/index/';
  static const String examList='/exam/index';
  static const String studentGroup='/studentgroup/index';
  static const String studentMark='/mark/get_student';
  static const String getResult='/mark/get_result';
  static const String getMarkSheet='/mark/get_subject';
  static const String sendMessage='/pushnotification/send_message';
  static const String saveMark='/mark/save_mark';
  static const String dailyActivitiesAdd='/dailyactivities/add';
  static const String dailyactivities_Save='/dailyactivities/save';
  static const String add_version='/appusesreport/add_version';
  static const String version_info='/appusesreport/version_info';
  static const String examcall_new='/exam/examcall_new';
  static const String result_type='/exam/result_type';

  // Admin Dashboard
  static const String accountSummery='/expense/index';
  static const String todayAttendance='/sattendance/todayAttendance';
  static const String todayAttendanceClasswise='/sattendance/todayAttendanceClasswise';
  static const String todayPresentAttendanceDetails='/sattendance/todayPresentAttendanceDetails/';
  static const String todayAbsentAttendanceDetails='/sattendance/todayAbsentAttendanceDetails/';
  static const String todayLateAttendanceDetails='/sattendance/todayLateAttendanceDetails/';
  static const String balance='/expense/balance';
  static const String dueStudentWise='/invoice/index_due_studentwise/';
  static const String paidStudentWise='/invoice/index_paid_studentwise/';
  static const String deviceToken='/devicetoken/update';
  static const String tokenupdate='/tokenupdate/update/';
  static const String appusesreport='/appusesreport/get_result';
  static const String classwise_student='/student/classwise_student';
  static const String accountHead='/journal/expensehead';
  static const String incomeHead='/journal/incomehead';
  static const String accountSubHead='/journal/subhead/';
  static const String fundhead='/journal/fundhead';
  static const String addexpense='/journal/addexpense';
  static const String addincome='/journal/addincome';

  // Shared Key
  static const String TOKEN = 'token';
  static const String USER_ID = 'user_id';
  static const String PHONE = 'phone';
  static const String DOMAIN = 'school_domain_url';
  static const String IMAGE_DOMAIN = 'school_logo_url';
  static const String SCHOOL_CODE = 'school_code';
  static const String SCHOOL_NAME = 'school_name';
  static const String USER_NAME = 'user_name';
  static const String USER_EMAIL = 'user_email';
  static const String USER_IMAGE = 'user_image';
  static const String THEME = 'theme';
  static const String TRIP_DATA = 'trip_data';
  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';
  static const String USER_PASSWORD = 'user_password';
  static const String USER_NUMBER = 'user_number';
  static const String SEARCH_ADDRESS = 'search_address';
  static const String TOPIC = 'notify';
  static const String ADDRESS_ID = 'address_id';
  static const String USERNAME = 'user_email';
  static const String STUDENT_ID = 'student_id';
  static const String CLASS_ID = 'class_id';
  static const String USERTYPE = 'usertype';


}
