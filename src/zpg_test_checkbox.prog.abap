*&---------------------------------------------------------------------*
*& Report ZPG_TEST_CHECKBOX
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zpg_test_checkbox.
*SELECTION-SCREEN: BEGIN OF LINE.
*SELECTION-SCREEN: COMMENT 2(10) text.
*PARAMETERS para AS CHECKBOX.
*SELECTION-SCREEN: COMMENT 1(10) text2.
*PARAMETERS para2 AS CHECKBOX.
*SELECTION-SCREEN : END OF LINE.
*
*INITIALIZATION .
*
*  text = 'Label'.
**  text2 = 'Label2'.
DATA: gd_ucomm TYPE sy-ucomm.
*SELECTION-SCREEN: BEGIN OF LINE.
PARAMETERS: p_check1 AS CHECKBOX USER-COMMAND check1,
            p_check2 AS CHECKBOX USER-COMMAND check2.
*SELECTION-SCREEN : END OF LINE.
************************************************************************
*AT SELECTION-SCREEN.
AT SELECTION-SCREEN.
  gd_ucomm = sy-ucomm.
************************************************************************
*AT SELECTION-SCREEN OUTPUT.
AT SELECTION-SCREEN OUTPUT.
  CASE gd_ucomm.
    WHEN 'CHECK1'.
      CLEAR: p_check2.
    WHEN 'CHECK2'.
      CLEAR: p_check1.
  ENDCASE.

CALL SCREEN '0100' STARTING AT 40 9 ENDING AT 80 11.

MODULE status_0100 OUTPUT.
  SET PF-STATUS 'STT'.
* SET TITLEBAR 'xxx'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
  CASE sy-ucomm.
    WHEN 'BACK'.
      LEAVE to SCREEN 0.
  ENDCASE.
ENDMODULE.
