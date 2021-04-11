class ZOTCTTR_EFCO_EFATURA_UBL definition
  public
  inheriting from CL_PROXY_CLIENT
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !LOGICAL_PORT_NAME type PRX_LOGICAL_PORT_NAME optional
    raising
      CX_AI_SYSTEM_FAULT .
  methods GET_BUSINESS_APP_RESP_STATUS
    importing
      !INPUT type ZOTCTTR_EFGET_BUSINESS_APP_RE1
    exporting
      !OUTPUT type ZOTCTTR_EFGET_BUSINESS_APP_RES
    raising
      CX_AI_SYSTEM_FAULT .
  methods GET_STATUS
    importing
      !INPUT type ZOTCTTR_EFGET_STATUS
    exporting
      !OUTPUT type ZOTCTTR_EFGET_STATUS_RESPONSE
    raising
      CX_AI_SYSTEM_FAULT .
  methods SAVE_TO_TEMP
    importing
      !INPUT type ZOTCTTR_EFSAVE_TO_TEMP
    exporting
      !OUTPUT type ZOTCTTR_EFSAVE_TO_TEMP_RESPONS
    raising
      CX_AI_SYSTEM_FAULT .
  methods SEND
    importing
      !INPUT type ZOTCTTR_EFSEND
    exporting
      !OUTPUT type ZOTCTTR_EFSEND_RESPONSE
    raising
      CX_AI_SYSTEM_FAULT .
  methods SEND_BUSINESS_APP_RESP
    importing
      !INPUT type ZOTCTTR_EFSEND_BUSINESS_APP_R3
    exporting
      !OUTPUT type ZOTCTTR_EFSEND_BUSINESS_APP_R1
    raising
      CX_AI_SYSTEM_FAULT .
  methods SEND_BUSINESS_APP_RESP_WITH_ID
    importing
      !INPUT type ZOTCTTR_EFSEND_BUSINESS_APP_R2
    exporting
      !OUTPUT type ZOTCTTR_EFSEND_BUSINESS_APP_RE
    raising
      CX_AI_SYSTEM_FAULT .
protected section.
private section.
ENDCLASS.



CLASS ZOTCTTR_EFCO_EFATURA_UBL IMPLEMENTATION.


  method CONSTRUCTOR.

  super->constructor(
    class_name          = 'ZOTCTTR_EFCO_EFATURA_UBL'
    logical_port_name   = logical_port_name
  ).

  endmethod.


  method GET_BUSINESS_APP_RESP_STATUS.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'GET_BUSINESS_APP_RESP_STATUS'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method GET_STATUS.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'GET_STATUS'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method SAVE_TO_TEMP.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'SAVE_TO_TEMP'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method SEND.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'SEND'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method SEND_BUSINESS_APP_RESP.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'SEND_BUSINESS_APP_RESP'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method SEND_BUSINESS_APP_RESP_WITH_ID.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'SEND_BUSINESS_APP_RESP_WITH_ID'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.
ENDCLASS.
