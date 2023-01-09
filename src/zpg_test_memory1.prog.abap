*&---------------------------------------------------------------------*
*& Report ZPG_TEST_MEMORY1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPG_TEST_MEMORY1.
DATA :test TYPE string VALUE 'hello world',
      test2 TYPE string.
export test to MEMORY id  'hi'.
