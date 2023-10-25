abstract class ApiClient {
  static const String SIGNUP = "/api/v1/infyni_student_signup/";
  static const String LOGIN = "/api/v1/infyni_student_login/";
  static const String FORGOT_PASSWORD =
      "/api/v1/infyni_student_forget_password/";
  static const String LANDING_CATEGORIES =
      "/api/v1/infyni_student_all_categories/";
  static const String COURSES_BY_CATEGORY =
      "/api/v1/infyni_student_trending_courses/";
  static const String SEARCH_COURSES =
      "/api/v1/infyni_student_search_results_course/";
  static const String COURSE_DETAILS =
      "/api/v1//infyni_student_bl_course_detail/";
  static const String BILLING_ADDRESS =
      "/api/v1/infyni_student_update_billing_address/";
  static const String LIVE_COUESES =
      "/api/v1/infyni_student_all_live_sessions/";
  static const String GET_HOME_PAGE_COURSES =
      "/api/v1/infyni_student_home_page_courses/";
  static const String ADD_TO_CART_CHECKOUT =
      "/api/v1/infyni_student_add_course_in_checkout/";
  static const String COUNTRY_DROPDOWN = "/api/v1/infyni_student_country/";
  static const String STATE_DROPDOWN = "/api/v1/infyni_student_state/";
  static const String ALL_LIVE_SESSIONS =
      "/api/v1/infyni_student_all_live_sessions/";
  static const String ALL_LIVE_COURSES =
      "/api/v1/infyni_student_enrolled_live_courses/";
  static const String LOGOUT = "/api/v1/infyni_student_logout/";
  static const String USER_PROFILE = "/api/v1/infyni_student_learner_profile/";
  static const String LIVE_SESSIONS = "/api/v1/infyni_student_live_sessions/";
  static const String COMPLETED_SESSIONS =
      "/api/v1/infyni_student_completed_sessions/";
  static const String UPCOMMING_SESSIONS =
      "/api/v1/infyni_student_upcoming_sessions/";
  static const String POPULAR_COURSES =
      "/api/v1/infyni_student_popular_courses/";

  static const String GET_BILLING_ADDRESS =
      "/api/v1/infyni_student_get_billing_address/";
  static const String CHANGE_PASSWORD =
      "/api/v1/infyni_student_learner_change_password/";
  static const String JOIN_FREE_DEMO =
      "/api/v1/infyni_student_join_free_demo_logged_in_user/";
  static const String SELF_PACED_COURSE_BY_STATUS =
      "/api/v1/infyni_student_self_paced_course/";
  static const String SELF_PACED_COURSE_DETAILS =
      "/api/v1/infyni_student_self_paced_course_detail/";
  static const String CART_COURSES_LIST =
      "/api/v1/infyni_student_get_cart_courses/";
  static const String DELETE_COURSE_FROM_CART =
      "/api/v1/infyni_student_remove_course_from_cart/";
  static const String SESSION_RECORDINGS =
      "/api/v1/infyni_student_session_recordings/";
  static const String SELF_PACED_COURSE_REVIEW =
      "/api/v1/infyni_student_add_review_self_paced_course/";
  static const String EDIT_PROFILE = "/api/v1/infyni_student_learner_profile/";
  static const String RESET_PASSWORD = "/api/v1/infyni_student_reset_password/";
  static const String AL_COURSE_DETAILS =
      "/api/v1/infyni_student_al_course_detail/";
  static const String VERIFY_OTP = "/api/v1/infyni_student_verify_otp/";
  static const String STUDENT_ADD_COURSE_REVIEW =
      "/api/v1/infyni_student_add_course_review/";
  static const String GET_ORDER_ID =
      "/api/v1//infyni_student_get_razorpay_order/";
  static const String RAZORPAY_COURSE_ENROLL_PROCESS =
      "/api/v1/infyni_student_complete_enrollment_after_razorpay_payment/";
  static const String GET_HOMEPAGE_BANNER =
      "/api/v1/infyni_student_get_homepage_banner/";
  static const String CURRENCY_CONVERSION =
      "/api/v1/infyni_student_currency_conversion/";
  static const String STUDENT_ADD_LOCATION =
      "/api/v1/infyni_student_add_location/";
  static const String ENROLLED_COURSES_COUNT =
      "/api/v1/infyni_enrolled_course_count/";
  static const String COMPLETED_SESSION_REVIEW =
      "/api/v1/infyni_student_add_session_review/";
  static const String COMPLETE_STRIPE_PAYMENT =
      "/api/v1/infyni_student_complete_stripe_checkout/";
  static const String GET_STRIPE_PAYMENT_INTENT =
      "/api/v1/infyni_student_get_stripe_payment_intent/";
  static const String GET_COMPLETED_COURSE_REVIEW =
      "/api/v1/infyni_student_view_review_self_paced_course/";
  static const String STUDENT_CALENDER = "/api/v1/infyni_student_calendar/";
  static const String STUDENT_SESSION_VIEW_REVIEW =
      "/api/v1/infyni_student_view_review_session_review/";

  static const String LIVE_COURSE_VIEW_REVIEW =
      "/api/v1/infyni_student_view_review_course/";

  static const String SUB_CATEGORIES_KIDS =
      "/api/v1/infyni_student_subcategories/";

  static const String RELATED_SUB_CATEGORIES =
      "/api/v1/infyni_courses_by_subcategory/";

  static const String GET_KIDS_WHATS_NEW = "/api/v1/infyni_kids_whats_new/";

  static const String GET_WHATS_DIFFERENT_WITH_INFYNI =
      "/api/v1/infyni_kids_differentiate_kidninfyni/";

  static const String GET_INFYNI_KIDS_BANNER = "/api/v1/infyni_kids_banner/";

  static const String ASSIGNMENT_BY_COURSE =
      "/api/v1/infyni_student_all_assignment/";

  static const String ASSIGNMENT_DETAILS =
      "/api/v1/infyni_student_assignment/";

    static const String GET_POPULAR_COURSES_SUB_CATEGORY_ID  =
        "/api/v1/infyni_kids_popular_courses/";

  static const String UPLOAD_ASSIGNMENT  =
      "https://dev.infyni.com/api/v1/infyni_student_upload_assignment_response/";

  static const String ALL_COURSE_LIST =
      "/api/v1/infyni_student_course_list/";

  static const String STRIPE_RAZORPAY_KEYS =
      "/api/v1/infyni_student_stripe_razorpay_keys/";

  static const String ENROL_WITH_ZERO_PRICE =
      "/api/v1/infyni_student_enroll_with_zero_price/";

  static const String GET_UPLOADED_ASSIGNMENT =
      "/api/v1/infyni_student_uploaded_assignment_response/";

  static const String DELETE_UPLOADED_ASSIGNMENT =
      "/api/v1/infyni_student_assignment_response_delete/";


  static const String SEND_ASSIGNMENT_TO_INSTRUCTOR =
      "/api/v1/infyni_student_assignment_response_send_to_instructor/";

  static const String COURSE_WARE_BY_COURSE =
      "/api/v1/infyni_student_all_courseware/";

  static const String COURSE_WARE_DETAILS = "/api/v1/infyni_student_courseware/";
  static const String ALL_MESSAGE_CONVERSATION = "/api/v1/infyni_student_message_detail/";

  static const String MANAGE_SUBSCRIPTION =
      "/api/v1/infyni_student_list_subscriptions/";

  static const String CANCEL_SUBSCRIPTION =
      "/api/v1/infyni_student_cancel_course_subscription/";

  static const String PAYMENT_HISTORY_ALL = "/api/v1/infyni_student_course_payment/";
  static const String ADD_MESSAGES = "/api/v1/infyni_student_message/";
  static const String MY_MESSAGES = "/api/v1/infyni_student_message/";

  static const String DELETE_INDUVIDUAL_UPLOADED_FILE = "/api/v1/infyni_student_ind_delete_uploaded_file/";
  static const String ASSESSMENT_DETAILS = "/api/v1/infyni_student_assessment_detail/";
  static const String INFYNI_STUDENT_ENROLLMENT = "/api/v1/infyni_student_my_enrollments/";
  static const String INSTRUCTOR_LIST = "/api/v1/infyni_student_course_all_instructor/";
  static const String ALL_REVIEWS = "/api/v1/infyni_student_all_my_review/";
  static const String UPDATE_ALL_REVIEWS = "/api/v1/infyni_student_my_review/";
  static const String SAVE_FCM_BEFORE_LOGIN = "/api/v1/infyni_student_register_fcm_data_before_login/";
  static const String SAVE_FCM_AFTER_LOGIN = "/api/v1/infyni_student_register_fcm_data_after_login/";
  static const String MULTIPLE_STRIPE_PENDING_PAYMENT = "/api/v1/infyni_student_multiple_stripe_payment_intent/";
  static const String MULTIPLE_STRIPE_PAYMENT_STATUS_UPDATE= "/api/v1/infyni_student_multiple_stripe_payment_confirmation/";
  static const String MULTIPLE_RAZORPAY_PENDING_PAYMENT= "/api/v1/infyni_student_multiple_razorpay_payment_order/";
  static const String MULTIPLE_RAZORPAY_PAYMENT_STATUS_UPDATE= "/api/v1/infyni_student_multiple_razorpay_payment_confirmation/";
  static const String STUDENT_ALL_ASSESSMENTS= "/api/v1/infyni_student_assessments/";
  static const String PARAGRAPH_EXAM_ASSESSMENT_SUBMIT= "/api/v1/infyni_student_exam_assessment_submit/";
  static const String QUIZ_ASSESSMENT_SUBMIT= "/api/v1/infyni_student_quiz_assessment_submit/";
  static const String ASSESSMENT_HISTORY_BY_ASSESSMENT_ID= "/api/v1/infyni_student_assessment_archive/";
  static const String ANSWERED_ASSESSMENT_RESPONSE_BY_USER_ASSESSMENT_ID= "/api/v1/infyni_student_assessment_archive_response/";
  static const String TERMS_AND_CONDITIONS= "/api/v1/infyni_terms_and_conditions";
  static const String NOTIFICATIONS= "/api/v1/infyni_student_notification";


}
