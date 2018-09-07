unit ZRConst;

interface

resourcestring
  szrParentReport        = 'A component of class %s can only belong to report or report bands';
  szrParentBand          = 'A component of class %s can only belong to report bands';
  szrCircularMaster      = 'Circular links not allowed';
  szrNoChildBand         = 'Bands of %s type cannot have children';
  szrNoControllerBand    = 'Bands of %s type cannot have subcontrollers';
  szrNoStretch           = '%s band cannot stretch';
  szrBandDelete          = 'Band %s contains labels.' + LineEnding + 'Delete ?';

  szrPrinterNotReady     = 'Not ready to start new document';
  szrPrinterNotFinished  = 'Report generating cancelled';
  szrPrinterPageIndex    = 'Out of page bounds, page %d/%d, line %d';
  szrPrinterNotBusy      = 'New document not started';
  szrIllegalPageRange   = 'Invalid page range: %d..%d';
  szrInvalidFileName    = 'Invalid file name: %s';

  szrCompleted          = 'complete';
  szrProcessing         = 'Processing..';
  szrPrinting           = 'Printing..';

  szrOf                 = 'of';
  szrFirstPageHint      = 'First page';
  szrPrevPageHint       = 'Previous page';
  szrNextPageHint       = 'Next page';
  szrLastPageHint       = 'Last page';
  szrSaveReportHint     = 'Save report - Ctrl+S';
  szrLoadReportHint     = 'Load report';
  szrPrintReportHint    = 'Print report - Ctrl+P';
  szrPrintReport        = 'Print';
  szrGotoPageNo         = 'Go to page';
  szrPageNoHint         = 'Go to page by number';
  szrSearchReport       = 'Search';
  szrSearchHint         = 'Search - F7,' + LineEnding + 'Continue - Shift+F7';

  szrPrinterSetup       = 'Printer setup';
  szrFileFilter         = 'Text files (*.txt)|*.txt|All files (*.*)|*.*';
  szrEscapeModelCustom  = '<custom>';
  szrEscapeModelNone    = '<none>';
  szrConvertToOEM        = 'Convert code page';
  szrIgnoreFontStyles    = 'Ignore font styles';
  szrEscapeModel         = 'ESC-sequence';
  szrPrintDialogCaption  = 'Printer setup';
  szrPrintDialogPrinter  = 'Printer';
  szrPrintDialogSetup    = 'Setup';
  szrPrintDialogPrToFile = 'Print to file';
  szrPrintDialogPrRange  = 'Print range';
  szrPrintDialogRAll     = 'All pages';
  szrPrintDialogRPages   = 'Pages';
  szrPrintDialogRFrom    = 'from:';
  szrPrintDialogRTo      = 'to:';
  szrPrintDialogCopies   = 'Copies';
  szrPrintDialogNrCopies = 'Number of copies';
  szrPrintDialogOptions  = 'Options';
  szrPrintDialogCP       = 'Code page';
  szrPrintDialogPaper    = 'Paper tpe';
  szrPrintDialogPCont    = 'Continuos';
  szrPrintDialogPFolio   = 'Folio';
  szrPrintDialogPSheet   = 'Sheet';

  szrOK    = 'OK';
  szrCancel= 'Cancel';
  szrExit  = 'E&xit';

  szrTime        = 'hh:mm:ss';
  szrDate        = 'dd/mm/yyyy';
  szrDateTime    = 'dd/mm/yyyy hh:mm:ss';
  szrPageNumber  = 'Page';
  szrReportTitle = 'Title';
  szrRecordNumber= '# p/p';
  szrRecordCount = 'Count';

  szrExpressionError     = 'Error in expression ''%s''';
  szrExpressionParse     = 'Expression ''%s'' not yet parsed';
  szrInvalidNumeric      = 'Invalid numeric in expresison ''%s''';
  szrInvalidDate         = 'Invalid date in expression ''%s''';
  szrInvalidString       = 'Invalid string in expression ''%s''';
  szrMissingBracket      = 'Closing ''%s'' missing in expression ''%s''';
  szrIllegalBracket      = 'Invalid usage of ''%s'' in expression ''%s''';
  szrUnknownEntry        = 'Unknown function or variable in expression ''%s''';
  szrIllegalUnary        = 'Invalid unary ''%s'' in expression ''%s''';

  szrBooleanFalse        = 'False';
  szrBooleanTrue         = 'True';
  szrIllegalLogics       = 'Logical operation should have boolean operands';
  szrIllegalBitwise      = 'Bitwise operation should have integer operands';
  szrIllegalDate         = 'Invalid date operation';
  szrIllegalArguments    = 'Wrong number of arguments for ''%s''';
  szrCalculationError    = 'Error evaluating ''%s'':' + LineEnding + '%s';

  szrCircularVariable    = 'Illegal circular reference to ''%s''';
  szrControllerLibrary   = 'Controller variables ''%s''';

  szrDesignNone                 = '<none>';
  szrDesignClose                = '&Close';
  szrDesignTSBands              = 'Bands and groups';
  szrDesignTSVars               = 'Variables';
  szrDesignGBBands              = 'Bands';
  szrDesignGBGroups             = 'Groups';
  szrDesignTVBands              = '|Report bands';
  szrDesignLBGroups             = '|Groups of the current report level';
  szrDesignACBandsNew           = 'Controller';
  szrDesignACBandsRename        = 'Rename';
  szrDesignACBandsDelete        = 'Delete';
  szrDesignACGroupsNew          = 'New';
  szrDesignACGroupsDelete       = 'Delete';
  szrDesignSureBandDelete       = 'Delete panel %s. Are you sure?';
  szrDesignSureGroupDelete      = 'Delete group %s. Are you sure?';

  szrDesignGBData               = 'Controllers';
  szrDesignGRControllers        = '|Report controllers list';
  szrDesignCellController       = 'Controller';
  szrDesignCellDataSet          = 'Data';
  szrDesignLADataFields         = 'Fields';
  szrDesignLBDataFields         = '|List of fields available';

  szrDesignGBVariables          = 'Variables';
  szrDesignLAVariableFields     = 'Fields';
  szrDesignLBVariableFields     = '|List of data field variables';
  szrDesignLAVariableExpressions= 'Expressions';
  szrDesignLBVariableExpressions= '|List of expression variables';
  szrDesignLAVariableTotals     = 'Aggregates';
  szrDesignLBVariableTotals     = '|List of aggregate variables';

  szrDesignACVariablesField     = 'Field';
  szrDesignACVariablesExpression= 'Expression';
  szrDesignACVariablesTotal     = 'Aggregate';
  szrDesignACVariablesDelete    = 'Delete';

  szrSearchDlgCaption           = 'Search text';
  szrSearchDlgInvitation        = '&Text to search';
  szrSearchDlgIgnoreCase        = 'Case &sensitive';
  szrSearchDlgFromCurrent       = '&From current position';
  szrSearchDlgStartSearch       = '&Find';
  szrSearchDlgContinueSearch    = '&Continue';
  szrSearchNotFound             = 'Search string ''%s'' not found';

implementation

end.

