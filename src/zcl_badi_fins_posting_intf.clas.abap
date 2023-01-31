class ZCL_BADI_FINS_POSTING_INTF definition
  public
  final
  create public .

public section.

  interfaces IF_BADI_FINS_POSTING_INTF .
  interfaces IF_BADI_INTERFACE .
protected section.
private section.
ENDCLASS.



CLASS ZCL_BADI_FINS_POSTING_INTF IMPLEMENTATION.


  method IF_BADI_FINS_POSTING_INTF~ACT_COFI_PCA_INTEG_WITH_CC_ITM.
  endmethod.


  method IF_BADI_FINS_POSTING_INTF~CHANGE_AFTER_CHECK.
    if 1 = 2.
    ENDIF.
  endmethod.
ENDCLASS.
