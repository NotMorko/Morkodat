{ Compiletime DB support }
Unit uPSC_DB;
{
This file has been generated by UnitParser v0.4, written by M. Knight.
Source Code from Carlo Kok has been used to implement various sections of
UnitParser. Components of ifps3 are used in the construction of UnitParser,
code implementing the class wrapper is taken from Carlo Kok''s conv unility

Licence :
This software is provided 'as-is', without any expressed or implied
warranty. In no event will the author be held liable for any damages
arising from the use of this software.
Permission is granted to anyone to use this software for any kind of
application, and to alter it and redistribute it freely, subject to
the following restrictions:
1. The origin of this software must not be misrepresented, you must
   not claim that you wrote the original software.
2. Altered source versions must be plainly marked as such, and must
   not be misrepresented as being the original software.
3. You may not create a library that uses this library as a main part
   of the program and sell that library.
4. You must have a visible line in your programs aboutbox or
   documentation that it is made using Innerfuse Script and where
   Innerfuse Pascal Script can be found.
5. This notice may not be removed or altered from any source
   distribution.

If you have any questions concerning this license write to Carlo Kok:
  ck@carlo-kok.com or try the newsserver:
  news://news.carlo-kok.com/
}
{$I PascalScript.inc}
Interface
uses
  uPSCompiler;

procedure SIRegisterTDATASET(CL: TPSPascalCompiler);
procedure SIRegisterTPARAMS(CL: TPSPascalCompiler);
procedure SIRegisterTPARAM(CL: TPSPascalCompiler);
procedure SIRegisterTGUIDFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTVARIANTFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTREFERENCEFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTDATASETFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTARRAYFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTADTFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTOBJECTFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTGRAPHICFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTMEMOFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTBLOBFIELD(CL: TPSPascalCompiler);
{$IFDEF DELPHI6UP}
procedure SIRegisterTFMTBCDFIELD(CL: TPSPascalCompiler);
{$ENDIF}
procedure SIRegisterTBCDFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTVARBYTESFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTBYTESFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTBINARYFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTTIMEFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTDATEFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTDATETIMEFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTBOOLEANFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTCURRENCYFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTFLOATFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTAUTOINCFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTWORDFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTLARGEINTFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTSMALLINTFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTINTEGERFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTNUMERICFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTWIDESTRINGFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTSTRINGFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTFIELD(CL: TPSPascalCompiler);
procedure SIRegisterTLOOKUPLIST(CL: TPSPascalCompiler);
procedure SIRegisterTFIELDS(CL: TPSPascalCompiler);
procedure SIRegisterTFIELDLIST(CL: TPSPascalCompiler);
procedure SIRegisterTFIELDDEFLIST(CL: TPSPascalCompiler);
procedure SIRegisterTFLATLIST(CL: TPSPascalCompiler);
procedure SIRegisterTINDEXDEFS(CL: TPSPascalCompiler);
procedure SIRegisterTINDEXDEF(CL: TPSPascalCompiler);
procedure SIRegisterTFIELDDEFS(CL: TPSPascalCompiler);
procedure SIRegisterTFIELDDEF(CL: TPSPascalCompiler);
procedure SIRegisterTDEFCOLLECTION(CL: TPSPascalCompiler);
procedure SIRegisterTNAMEDITEM(CL: TPSPascalCompiler);
procedure SIRegister_DB(Cl: TPSPascalCompiler);

implementation
Uses Sysutils;

Function RegClassS(cl : TPSPascalCompiler;Const InheritsFrom,Classname : String) : TPSCompileTimeClass;
begin
Result := cl.FindClass(Classname);
if Result = nil then
  Result := cl.AddClassN(cl.FindClass(InheritsFrom),Classname)
else
  Result.ClassInheritsFrom := cl.FindClass(InheritsFrom);
end;

procedure SIRegisterTDATASET(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TComponent','TDataSet') do
  begin
  RegisterMethod('function ActiveBuffer: PChar');
  RegisterMethod('procedure Append');
  RegisterMethod('procedure AppendRecord(const Values: array of const)');
//  RegisterMethod('function BookmarkValid(Bookmark: TBookmark): Boolean');
  RegisterMethod('procedure Cancel');
  RegisterMethod('procedure CheckBrowseMode');
  RegisterMethod('procedure ClearFields');
  RegisterMethod('procedure Close');
  RegisterMethod('function ControlsDisabled: Boolean');
//  RegisterMethod('function CompareBookmarks(Bookmark1, Bookmark2: TBookmark): Integer');
  RegisterMethod('function CreateBlobStream(Field: TField; Mode: TBlobStreamMode): TStream');
  RegisterMethod('procedure CursorPosChanged');
  RegisterMethod('procedure Delete');
  RegisterMethod('procedure DisableControls');
  RegisterMethod('procedure Edit');
  RegisterMethod('procedure EnableControls');
{$IFDEF DELPHI2006UP}
{$IFDEF DELPHI2009UP}
  RegisterMethod('function FieldByName(const FieldName: string): TField');
  RegisterMethod('function FindField(const FieldName: string): TField');
{$ELSE}
  RegisterMethod('function FieldByName(const FieldName: WideString): TField');
  RegisterMethod('function FindField(const FieldName: WideString): TField');
{$ENDIF}
{$ELSE}
  RegisterMethod('function FieldByName(const FieldName: string): TField');
  RegisterMethod('function FindField(const FieldName: string): TField');
{$ENDIF}
  RegisterMethod('function FindFirst: Boolean');
  RegisterMethod('function FindLast: Boolean');
  RegisterMethod('function FindNext: Boolean');
  RegisterMethod('function FindPrior: Boolean');
  RegisterMethod('procedure First');
//  RegisterMethod('procedure FreeBookmark(Bookmark: TBookmark)');
//  RegisterMethod('function GetBookmark: TBookmark');
  RegisterMethod('function GetCurrentRecord(Buffer: PChar): Boolean');
//  RegisterMethod('procedure GetDetailDataSets(List: TList)');
//  RegisterMethod('procedure GetFieldList(List: TList; const FieldNames: string)');
//  RegisterMethod('procedure GetDetailLinkFields(MasterFields, DetailFields: TList)');
//  RegisterMethod('function GetBlobFieldData(FieldNo: Integer; var Buffer: TBlobByteData): Integer');
  RegisterMethod('procedure GetFieldNames(List: TStrings)');
//  RegisterMethod('procedure GotoBookmark(Bookmark: TBookmark)');
  RegisterMethod('procedure Insert');
  RegisterMethod('procedure InsertRecord(const Values: array of const)');
  RegisterMethod('function IsEmpty: Boolean');
  RegisterMethod('function IsLinkedTo(DataSource: TDataSource): Boolean');
  RegisterMethod('function IsSequenced: Boolean');
  RegisterMethod('procedure Last');
  RegisterMethod('function Locate(const KeyFields: string; const KeyValues: Variant; Options: TLocateOptions): Boolean');
  RegisterMethod('function Lookup(const KeyFields: string; const KeyValues: Variant; const ResultFields: string): Variant');
  RegisterMethod('function MoveBy(Distance: Integer): Integer');
  RegisterMethod('procedure Next');
  RegisterMethod('procedure Open');
  RegisterMethod('procedure Post');
  RegisterMethod('procedure Prior');
  RegisterMethod('procedure Refresh');
//  RegisterMethod('procedure Resync(Mode: TResyncMode)');
  RegisterMethod('procedure SetFields(const Values: array of const)');
  RegisterMethod('function Translate(Src, Dest: PChar; ToOem: Boolean): Integer');
  RegisterMethod('procedure UpdateCursorPos');
  RegisterMethod('procedure UpdateRecord');
  RegisterMethod('function UpdateStatus: TUpdateStatus');
  RegisterProperty('AggFields', 'TFields', iptr);
  RegisterProperty('BOF', 'Boolean', iptr);
//  RegisterProperty('Bookmark', 'TBookmarkStr', iptrw);
  RegisterProperty('CanModify', 'Boolean', iptr);
  RegisterProperty('DataSetField', 'TDataSetField', iptrw);
  RegisterProperty('DataSource', 'TDataSource', iptr);
  RegisterProperty('DefaultFields', 'Boolean', iptr);
  RegisterProperty('Designer', 'TDataSetDesigner', iptr);
  RegisterProperty('EOF', 'Boolean', iptr);
  RegisterProperty('BlockReadSize', 'Integer', iptrw);
  RegisterProperty('FieldCount', 'Integer', iptr);
  RegisterProperty('FieldDefs', 'TFieldDefs', iptrw);
  RegisterProperty('FieldDefList', 'TFieldDefList', iptr);
  RegisterProperty('Fields', 'TFields', iptr);
  RegisterProperty('FieldList', 'TFieldList', iptr);
  RegisterProperty('FieldValues', 'Variant string', iptrw);
  RegisterProperty('Found', 'Boolean', iptr);
{$IFDEF DELPHI6UP}
  RegisterProperty('IsUnidirectional', 'Boolean', iptr);
{$ENDIF}
  RegisterProperty('Modified', 'Boolean', iptr);
  RegisterProperty('ObjectView', 'Boolean', iptrw);
  RegisterProperty('RecordCount', 'Integer', iptr);
  RegisterProperty('RecNo', 'Integer', iptrw);
  RegisterProperty('RecordSize', 'Word', iptr);
  RegisterProperty('SparseArrays', 'Boolean', iptrw);
  RegisterProperty('State', 'TDataSetState', iptr);
  RegisterProperty('Filter', 'string', iptrw);
  RegisterProperty('Filtered', 'Boolean', iptrw);
  RegisterProperty('FilterOptions', 'TFilterOptions', iptrw);
  RegisterProperty('Active', 'Boolean', iptrw);
  RegisterProperty('AutoCalcFields', 'Boolean', iptrw);
  RegisterProperty('BeforeOpen', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('AfterOpen', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('BeforeClose', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('AfterClose', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('BeforeInsert', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('AfterInsert', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('BeforeEdit', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('AfterEdit', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('BeforePost', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('AfterPost', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('BeforeCancel', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('AfterCancel', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('BeforeDelete', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('AfterDelete', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('BeforeScroll', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('AfterScroll', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('BeforeRefresh', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('AfterRefresh', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('OnCalcFields', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('OnDeleteError', 'TDataSetErrorEvent', iptrw);
  RegisterProperty('OnEditError', 'TDataSetErrorEvent', iptrw);
  RegisterProperty('OnFilterRecord', 'TFilterRecordEvent', iptrw);
  RegisterProperty('OnNewRecord', 'TDataSetNotifyEvent', iptrw);
  RegisterProperty('OnPostError', 'TDataSetErrorEvent', iptrw);
  SetDefaultPropery('FieldValues');
 end;
end;

procedure SIRegisterTPARAMS(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TCollection','TParams') do
  begin
  RegisterMethod('procedure AssignValues(Value: TParams)');
  RegisterMethod('procedure AddParam(Value: TParam)');
  RegisterMethod('procedure RemoveParam(Value: TParam)');
  RegisterMethod('function CreateParam(FldType: TFieldType; const ParamName: string; ParamType: TParamType): TParam');
//  RegisterMethod('procedure GetParamList(List: TList; const ParamNames: string)');
  RegisterMethod('function IsEqual(Value: TParams): Boolean');
  RegisterMethod('function ParseSQL(SQL: string; DoCreate: Boolean): string');
  RegisterMethod('function ParamByName(const Value: string): TParam');
  RegisterMethod('function FindParam(const Value: string): TParam');
  RegisterProperty('Items', 'TParam Integer', iptrw);
  RegisterProperty('ParamValues', 'Variant string', iptrw);
  end;
end;

procedure SIRegisterTPARAM(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TCollectionItem','TParam') do
  begin
  RegisterMethod('procedure AssignField(Field: TField)');
  RegisterMethod('procedure AssignFieldValue(Field: TField; const Value: Variant)');
  RegisterMethod('procedure Clear');
//  RegisterMethod('procedure GetData(Buffer: Pointer)');
  RegisterMethod('function GetDataSize: Integer');
  RegisterMethod('procedure LoadFromFile(const FileName: string; BlobType: TBlobType)');
  RegisterMethod('procedure LoadFromStream(Stream: TStream; BlobType: TBlobType)');
//  RegisterMethod('procedure SetBlobData(Buffer: Pointer; Size: Integer)');
//  RegisterMethod('procedure SetData(Buffer: Pointer)');
{$IFDEF DELPHI6UP}
  RegisterProperty('AsBCD', 'Currency', iptrw);
{$ENDIF}
{$IFDEF DELPHI6UP}
  RegisterProperty('AsFMTBCD', 'TBCD', iptrw);
{$ENDIF}
  RegisterProperty('AsBlob', 'TBlobData', iptrw);
  RegisterProperty('AsBoolean', 'Boolean', iptrw);
  RegisterProperty('AsCurrency', 'Currency', iptrw);
  RegisterProperty('AsDate', 'TDateTime', iptrw);
  RegisterProperty('AsDateTime', 'TDateTime', iptrw);
  RegisterProperty('AsFloat', 'Double', iptrw);
  RegisterProperty('AsInteger', 'LongInt', iptrw);
  RegisterProperty('AsSmallInt', 'LongInt', iptrw);
  RegisterProperty('AsMemo', 'string', iptrw);
  RegisterProperty('AsString', 'string', iptrw);
  RegisterProperty('AsTime', 'TDateTime', iptrw);
  RegisterProperty('AsWord', 'LongInt', iptrw);
  RegisterProperty('Bound', 'Boolean', iptrw);
  RegisterProperty('IsNull', 'Boolean', iptr);
  RegisterProperty('NativeStr', 'string', iptrw);
  RegisterProperty('Text', 'string', iptrw);
  RegisterProperty('DataType', 'TFieldType', iptrw);
{$IFDEF DELPHI6UP}
  RegisterProperty('Precision', 'Integer', iptrw);
  RegisterProperty('NumericScale', 'Integer', iptrw);
  RegisterProperty('Size', 'Integer', iptrw);
{$ENDIF}
  RegisterProperty('Name', 'string', iptrw);
  RegisterProperty('ParamType', 'TParamType', iptrw);
  RegisterProperty('Value', 'Variant', iptrw);
  end;
end;

procedure SIRegisterTGUIDFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TField','TGuidField') do
  begin
  end;
end;

procedure SIRegisterTVARIANTFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TField','TVariantField') do
  begin
  end;
end;

procedure SIRegisterTREFERENCEFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TDataSetField','TReferenceField') do
  begin
  RegisterProperty('ReferenceTableName', 'string', iptrw);
  end;
end;

procedure SIRegisterTDATASETFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TObjectField','TDataSetField') do
  begin
  RegisterProperty('NestedDataSet', 'TDataSet', iptr);
  RegisterProperty('IncludeObjectField', 'Boolean', iptrw);
  end;
end;

procedure SIRegisterTARRAYFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TObjectField','TArrayField') do
  begin
  end;
end;

procedure SIRegisterTADTFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TObjectField','TADTField') do
  begin
  end;
end;

procedure SIRegisterTOBJECTFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TField','TObjectField') do
  begin
  RegisterProperty('FieldCount', 'Integer', iptr);
  RegisterProperty('Fields', 'TFields', iptr);
  RegisterProperty('FieldValues', 'Variant Integer', iptrw);
  RegisterProperty('UnNamed', 'Boolean', iptr);
  RegisterProperty('ObjectType', 'string', iptrw);
  end;
end;

procedure SIRegisterTGRAPHICFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TBlobField','TGraphicField') do
  begin
  end;
end;

procedure SIRegisterTMEMOFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TBlobField','TMemoField') do
  begin
  end;
end;

procedure SIRegisterTBLOBFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TField','TBlobField') do
  begin
  RegisterMethod('procedure LoadFromFile(const FileName: string)');
  RegisterMethod('procedure LoadFromStream(Stream: TStream)');
  RegisterMethod('procedure SaveToFile(const FileName: string)');
  RegisterMethod('procedure SaveToStream(Stream: TStream)');
  RegisterProperty('BlobSize', 'Integer', iptr);
  RegisterProperty('Modified', 'Boolean', iptrw);
  RegisterProperty('Value', 'string', iptrw);
  RegisterProperty('Transliterate', 'Boolean', iptrw);
  RegisterProperty('BlobType', 'TBlobType', iptrw);
{$IFDEF DELPHI6UP}
  RegisterProperty('GraphicHeader', 'Boolean', iptrw);
{$ENDIF}
  end;
end;

{$IFDEF DELPHI6UP}
procedure SIRegisterTFMTBCDFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TNumericField','TFMTBCDField') do
  begin
  RegisterProperty('Value', 'TBCD', iptrw);
  RegisterProperty('Currency', 'Boolean', iptrw);
  RegisterProperty('MaxValue', 'string', iptrw);
  RegisterProperty('MinValue', 'string', iptrw);
  RegisterProperty('Precision', 'Integer', iptrw);
  end;
end;
{$ENDIF}

procedure SIRegisterTBCDFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TNumericField','TBCDField') do
  begin
  RegisterProperty('Value', 'Currency', iptrw);
  RegisterProperty('Currency', 'Boolean', iptrw);
  RegisterProperty('MaxValue', 'Currency', iptrw);
  RegisterProperty('MinValue', 'Currency', iptrw);
  RegisterProperty('Precision', 'Integer', iptrw);
  end;
end;

procedure SIRegisterTVARBYTESFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TBytesField','TVarBytesField') do
  begin
  end;
end;

procedure SIRegisterTBYTESFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TBinaryField','TBytesField') do
  begin
  end;
end;

procedure SIRegisterTBINARYFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TField','TBinaryField') do
  begin
  end;
end;

procedure SIRegisterTTIMEFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TDateTimeField','TTimeField') do
  begin
  end;
end;

procedure SIRegisterTDATEFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TDateTimeField','TDateField') do
  begin
  end;
end;

procedure SIRegisterTDATETIMEFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TField','TDateTimeField') do
  begin
  RegisterProperty('Value', 'TDateTime', iptrw);
  RegisterProperty('DisplayFormat', 'string', iptrw);
  end;
end;

procedure SIRegisterTBOOLEANFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TField','TBooleanField') do
  begin
  RegisterProperty('Value', 'Boolean', iptrw);
  RegisterProperty('DisplayValues', 'string', iptrw);
  end;
end;

procedure SIRegisterTCURRENCYFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TFloatField','TCurrencyField') do
  begin
  end;
end;

procedure SIRegisterTFLOATFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TNumericField','TFloatField') do
  begin
  RegisterProperty('Value', 'Double', iptrw);
  RegisterProperty('Currency', 'Boolean', iptrw);
  RegisterProperty('MaxValue', 'Double', iptrw);
  RegisterProperty('MinValue', 'Double', iptrw);
  RegisterProperty('Precision', 'Integer', iptrw);
  end;
end;

procedure SIRegisterTAUTOINCFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TIntegerField','TAutoIncField') do
  begin
  end;
end;

procedure SIRegisterTWORDFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TIntegerField','TWordField') do
  begin
  end;
end;

procedure SIRegisterTLARGEINTFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TNumericField','TLargeintField') do
  begin
  RegisterProperty('AsLargeInt', 'LargeInt', iptrw);
  RegisterProperty('Value', 'LargeInt', iptrw);
  RegisterProperty('MaxValue', 'LargeInt', iptrw);
  RegisterProperty('MinValue', 'LargeInt', iptrw);
  end;
end;

procedure SIRegisterTSMALLINTFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TIntegerField','TSmallintField') do
  begin
  end;
end;

procedure SIRegisterTINTEGERFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TNumericField','TIntegerField') do
  begin
  RegisterProperty('Value', 'LongInt', iptrw);
  RegisterProperty('MaxValue', 'LongInt', iptrw);
  RegisterProperty('MinValue', 'LongInt', iptrw);
  end;
end;

procedure SIRegisterTNUMERICFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TField','TNumericField') do
  begin
  RegisterProperty('DisplayFormat', 'string', iptrw);
  RegisterProperty('EditFormat', 'string', iptrw);
  end;
end;

procedure SIRegisterTWIDESTRINGFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TStringField','TWideStringField') do
  begin
  RegisterProperty('Value', 'WideString', iptrw);
  end;
end;

procedure SIRegisterTSTRINGFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TField','TStringField') do
  begin
  RegisterProperty('Value', 'string', iptrw);
  RegisterProperty('FixedChar', 'Boolean', iptrw);
  RegisterProperty('Transliterate', 'Boolean', iptrw);
  end;
end;

procedure SIRegisterTFIELD(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TComponent','TField') do
  begin
//RegisterMethod('procedure AssignValue(const Value: TVarRec)');
  RegisterMethod('procedure Clear');
  RegisterMethod('procedure FocusControl');
//  RegisterMethod('function GetData(Buffer: Pointer; NativeFormat: Boolean): Boolean');
  RegisterMethod('function IsValidChar(InputChar: Char): Boolean');
  RegisterMethod('procedure RefreshLookupList');
//  RegisterMethod('procedure SetData(Buffer: Pointer; NativeFormat: Boolean)');
  RegisterMethod('procedure SetFieldType(Value: TFieldType)');
//  RegisterMethod('procedure Validate(Buffer: Pointer)');
{$IFDEF DELPHI6UP}
  RegisterProperty('AsBCD', 'TBCD', iptrw);
{$ENDIF}
  RegisterProperty('AsBoolean', 'Boolean', iptrw);
  RegisterProperty('AsCurrency', 'Currency', iptrw);
  RegisterProperty('AsDateTime', 'TDateTime', iptrw);
  RegisterProperty('AsFloat', 'Double', iptrw);
  RegisterProperty('AsInteger', 'LongInt', iptrw);
  RegisterProperty('AsString', 'string', iptrw);
  RegisterProperty('AsVariant', 'Variant', iptrw);
  RegisterProperty('AttributeSet', 'string', iptrw);
  RegisterProperty('Calculated', 'Boolean', iptrw);
  RegisterProperty('CanModify', 'Boolean', iptr);
  RegisterProperty('CurValue', 'Variant', iptr);
  RegisterProperty('Dataset', 'TDataSet', iptrw);
  RegisterProperty('DataSize', 'Integer', iptr);
  RegisterProperty('DataType', 'TFieldType', iptr);
  RegisterProperty('DisplayName', 'string', iptr);
  RegisterProperty('DisplayText', 'string', iptr);
  RegisterProperty('EditMask', 'TEditMask', iptrw);
  RegisterProperty('EditMaskPtr', 'TEditMask', iptr);
  RegisterProperty('EditMask', 'string', iptrw);
  RegisterProperty('EditMaskPtr', 'string', iptr);
  RegisterProperty('FieldNo', 'Integer', iptr);
  RegisterProperty('FullName', 'string', iptr);
  RegisterProperty('IsIndexField', 'Boolean', iptr);
  RegisterProperty('IsNull', 'Boolean', iptr);
  RegisterProperty('Lookup', 'Boolean', iptrw);
  RegisterProperty('LookupList', 'TLookupList', iptr);
  RegisterProperty('NewValue', 'Variant', iptrw);
  RegisterProperty('Offset', 'Integer', iptr);
  RegisterProperty('OldValue', 'Variant', iptr);
  RegisterProperty('ParentField', 'TObjectField', iptrw);
  RegisterProperty('Size', 'Integer', iptrw);
  RegisterProperty('Text', 'string', iptrw);
  RegisterProperty('ValidChars', 'TFieldChars', iptrw);
  RegisterProperty('Value', 'Variant', iptrw);
  RegisterProperty('Alignment', 'TAlignment', iptrw);
  RegisterProperty('AutoGenerateValue', 'TAutoRefreshFlag', iptrw);
  RegisterProperty('CustomConstraint', 'string', iptrw);
  RegisterProperty('ConstraintErrorMessage', 'string', iptrw);
  RegisterProperty('DefaultExpression', 'string', iptrw);
  RegisterProperty('DisplayLabel', 'string', iptrw);
  RegisterProperty('DisplayWidth', 'Integer', iptrw);
  RegisterProperty('FieldKind', 'TFieldKind', iptrw);
  RegisterProperty('FieldName', 'string', iptrw);
  RegisterProperty('HasConstraints', 'Boolean', iptr);
  RegisterProperty('Index', 'Integer', iptrw);
  RegisterProperty('ImportedConstraint', 'string', iptrw);
  RegisterProperty('LookupDataSet', 'TDataSet', iptrw);
  RegisterProperty('LookupKeyFields', 'string', iptrw);
  RegisterProperty('LookupResultField', 'string', iptrw);
  RegisterProperty('KeyFields', 'string', iptrw);
  RegisterProperty('LookupCache', 'Boolean', iptrw);
  RegisterProperty('Origin', 'string', iptrw);
  RegisterProperty('ProviderFlags', 'TProviderFlags', iptrw);
  RegisterProperty('ReadOnly', 'Boolean', iptrw);
  RegisterProperty('Required', 'Boolean', iptrw);
  RegisterProperty('Visible', 'Boolean', iptrw);
  RegisterProperty('OnChange', 'TFieldNotifyEvent', iptrw);
  RegisterProperty('OnGetText', 'TFieldGetTextEvent', iptrw);
  RegisterProperty('OnSetText', 'TFieldSetTextEvent', iptrw);
  RegisterProperty('OnValidate', 'TFieldNotifyEvent', iptrw);
  end;
end;

procedure SIRegisterTLOOKUPLIST(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TObject','TLookupList') do
  begin
  RegisterMethod('constructor Create');
  RegisterMethod('procedure Add(const AKey, AValue: Variant)');
  RegisterMethod('procedure Clear');
  RegisterMethod('function ValueOfKey(const AKey: Variant): Variant');
  end;
end;

procedure SIRegisterTFIELDS(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TObject','TFields') do
  begin
  RegisterMethod('constructor Create(ADataSet: TDataSet)');
  RegisterMethod('procedure Add(Field: TField)');
  RegisterMethod('procedure CheckFieldName(const FieldName: string)');
  RegisterMethod('procedure CheckFieldNames(const FieldNames: string)');
  RegisterMethod('procedure Clear');
  RegisterMethod('function FindField(const FieldName: string): TField');
  RegisterMethod('function FieldByName(const FieldName: string): TField');
  RegisterMethod('function FieldByNumber(FieldNo: Integer): TField');
  RegisterMethod('procedure GetFieldNames(List: TStrings)');
  RegisterMethod('function IndexOf(Field: TField): Integer');
  RegisterMethod('procedure Remove(Field: TField)');
  RegisterProperty('Count', 'Integer', iptr);
  RegisterProperty('Dataset', 'TDataSet', iptr);
  RegisterProperty('Fields', 'TField Integer', iptrw);
  SetDefaultPropery('Fields');
  end;
end;

procedure SIRegisterTFIELDLIST(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TFlatList','TFieldList') do
  begin
  RegisterMethod('function FieldByName(const Name: string): TField');
  RegisterMethod('function Find(const Name: string): TField');
  RegisterProperty('Fields', 'TField Integer', iptr);
  SetDefaultPropery('Fields');
  end;
end;

procedure SIRegisterTFIELDDEFLIST(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TFlatList','TFieldDefList') do
  begin
  RegisterMethod('function FieldByName(const Name: string): TFieldDef');
  RegisterMethod('function Find(const Name: string): TFieldDef');
  RegisterProperty('FieldDefs', 'TFieldDef Integer', iptr);
  end;
end;

procedure SIRegisterTFLATLIST(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TStringList','TFlatList') do
  begin
  RegisterMethod('constructor Create(ADataSet: TDataSet)');
  RegisterMethod('procedure Update');
  RegisterProperty('Dataset', 'TDataSet', iptr);
  end;
end;

procedure SIRegisterTINDEXDEFS(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TDefCollection','TIndexDefs') do
  begin
  RegisterMethod('constructor Create(ADataSet: TDataSet)');
  RegisterMethod('function AddIndexDef: TIndexDef');
  RegisterMethod('function Find(const Name: string): TIndexDef');
  RegisterMethod('procedure Update');
  RegisterMethod('function FindIndexForFields(const Fields: string): TIndexDef');
  RegisterMethod('function GetIndexForFields(const Fields: string; CaseInsensitive: Boolean): TIndexDef');
  RegisterMethod('procedure Add(const Name, Fields: string; Options: TIndexOptions)');
  RegisterProperty('Items', 'TIndexDef Integer', iptrw);
  SetDefaultPropery('Items');
  end;
end;

procedure SIRegisterTINDEXDEF(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TNamedItem','TIndexDef') do
  begin
  RegisterMethod('constructor Create(Owner: TIndexDefs; const Name, Fields: string; Options: TIndexOptions)');
  RegisterProperty('FieldExpression', 'string', iptr);
  RegisterProperty('CaseInsFields', 'string', iptrw);
  RegisterProperty('DescFields', 'string', iptrw);
  RegisterProperty('Expression', 'string', iptrw);
  RegisterProperty('Fields', 'string', iptrw);
  RegisterProperty('Options', 'TIndexOptions', iptrw);
  RegisterProperty('Source', 'string', iptrw);
  RegisterProperty('GroupingLevel', 'Integer', iptrw);
  end;
end;

procedure SIRegisterTFIELDDEFS(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TDefCollection','TFieldDefs') do
  begin
  RegisterMethod('constructor Create(AOwner: TPersistent)');
  RegisterMethod('function AddFieldDef: TFieldDef');
  RegisterMethod('function Find(const Name: string): TFieldDef');
  RegisterMethod('procedure Update');
  RegisterMethod('procedure Add(const Name: string; DataType: TFieldType; Size: Integer; Required: Boolean)');
  RegisterProperty('HiddenFields', 'Boolean', iptrw);
  RegisterProperty('Items', 'TFieldDef Integer', iptrw);
  RegisterProperty('ParentDef', 'TFieldDef', iptr);
  SetDefaultPropery('Items');
  end;
end;

procedure SIRegisterTFIELDDEF(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TNamedItem','TFieldDef') do
  begin
//  RegisterMethod('constructor Create(Owner: TFieldDefs; const Name: string; DataType: TFieldType; Size: Integer; Required: Boolean; FieldNo: Integer)');
  RegisterMethod('function AddChild: TFieldDef');
  RegisterMethod('function CreateField(Owner: TComponent; ParentField: TObjectField; const FieldName: string; CreateChildren: Boolean): TField');
  RegisterMethod('function HasChildDefs: Boolean');
  RegisterProperty('FieldClass', 'TFieldClass', iptr);
  RegisterProperty('FieldNo', 'Integer', iptrw);
  RegisterProperty('InternalCalcField', 'Boolean', iptrw);
  RegisterProperty('ParentDef', 'TFieldDef', iptr);
  RegisterProperty('Required', 'Boolean', iptrw);
  RegisterProperty('Attributes', 'TFieldAttributes', iptrw);
  RegisterProperty('ChildDefs', 'TFieldDefs', iptrw);
  RegisterProperty('DataType', 'TFieldType', iptrw);
  RegisterProperty('Precision', 'Integer', iptrw);
  RegisterProperty('Size', 'Integer', iptrw);
  end;
end;

procedure SIRegisterTDEFCOLLECTION(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TOwnedCollection','TDefCollection') do
  begin
//  RegisterMethod('constructor Create(ADataSet: TDataSet; AOwner: TPersistent; AClass: TCollectionItemClass)');
  RegisterMethod('function Find(const AName: string): TNamedItem');
  RegisterMethod('procedure GetItemNames(List: TStrings)');
  RegisterMethod('function IndexOf(const AName: string): Integer');
  RegisterProperty('Dataset', 'TDataSet', iptr);
  RegisterProperty('Updated', 'Boolean', iptrw);
  end;
end;

procedure SIRegisterTNAMEDITEM(CL: TPSPascalCompiler);
Begin
With RegClassS(cl,'TCollectionItem','TNamedItem') do
  begin
  RegisterProperty('Name', 'string', iptrw);
  end;
end;

procedure SIRegister_DB(Cl: TPSPascalCompiler);
Begin
cl.AddTypeS('TFieldType', '(ftUnknown, ftString, ftSmallint, ftInteger, ftWord, ftBoolean, ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime,'+
    'ftBytes, ftVarBytes, ftAutoInc, ftBlob, ftMemo, ftGraphic, ftFmtMemo, ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor, ftFixedChar, ftWideString,'+
    'ftLargeint, ftADT, ftArray, ftReference, ftDataSet, ftOraBlob, ftOraClob, ftVariant, ftInterface, ftIDispatch, ftGuid, ftTimeStamp, ftFMTBcd)');

  CL.AddTypeS('TDataSetState', '(dsInactive, dsBrowse, dsEdit, dsInsert, dsSetKey, dsCalcFields, dsFilter, dsNewValue, dsOldValue, dsCurValue, dsBlockRead, dsInternalCalc, dsOpening)');

cl.addTypeS('TLocateOption','(loCaseInsensitive, loPartialKey)');
cl.addtypes('TLocateOptions','set of TLocateOption');
cl.addtypes('TUpdateStatus','(usUnmodified, usModified, usInserted, usDeleted)');
cl.addtypes('TUpdateStatusSet', 'set of TUpdateStatus');

    cl.addTypeS('TParamType', 'Byte');
RegClassS(cl,'TComponent','TDataSet');
RegClassS(cl,'TComponent','TField');
RegClassS(cl,'TComponent','TFieldDefs');
RegClassS(cl,'TComponent','TIndexDefs');
RegClassS(cl, 'TComponent', 'TObjectField');
RegClassS(cl, 'TComponent', 'TDataLink');
RegClassS(cl, 'TComponent', 'TDataSource');
RegClassS(cl, 'TComponent', 'TParam');

SIRegisterTNAMEDITEM(Cl);
Cl.addTypeS('TDefUpdateMethod', 'procedure');
SIRegisterTDEFCOLLECTION(Cl);
cl.AddConstantN('faHiddenCol','LongInt').Value.tu32 := 1;
cl.AddConstantN('faReadOnly','LongInt').Value.tu32 := 2;
cl.AddConstantN('faRequired','LongInt').Value.tu32 := 4;
cl.AddConstantN('faLink','LongInt').Value.tu32 := 8;
cl.AddConstantN('faUnNamed','LongInt').Value.tu32 := 16;
cl.AddConstantN('faFixed','LongInt').Value.tu32 := 32;
cl.addTypeS('TFieldAttributes', 'Byte');
SIRegisterTFIELDDEF(Cl);
SIRegisterTFIELDDEFS(Cl);
cl.AddConstantN('ixPrimary','LongInt').Value.tu32 := 1;
cl.AddConstantN('ixUnique','LongInt').Value.tu32 := 2;
cl.AddConstantN('ixDescending','LongInt').Value.tu32 := 4;
cl.AddConstantN('ixCaseInsensitive','LongInt').Value.tu32 := 8;
cl.AddConstantN('ixExpression','LongInt').Value.tu32 := 16;
cl.AddConstantN('ixNonMaintained','LongInt').Value.tu32 := 32;
cl.addTypeS('TIndexOptions', 'Byte');
SIRegisterTINDEXDEF(Cl);
SIRegisterTINDEXDEFS(Cl);
SIRegisterTFLATLIST(Cl);
SIRegisterTFIELDDEFLIST(Cl);
SIRegisterTFIELDLIST(Cl);
cl.AddConstantN('fkData','LongInt').Value.tu32 := 1;
cl.AddConstantN('fkCalculated','LongInt').Value.tu32 := 2;
cl.AddConstantN('fkLookup','LongInt').Value.tu32 := 4;
cl.AddConstantN('fkInternalCalc','LongInt').Value.tu32 := 8;
cl.AddConstantN('fkAggregate','LongInt').Value.tu32 := 16;
cl.addTypeS('TFieldKinds', 'Byte');
SIRegisterTFIELDS(Cl);
cl.AddConstantN('pfInUpdate','LongInt').Value.tu32 := 1;
cl.AddConstantN('pfInWhere','LongInt').Value.tu32 := 2;
cl.AddConstantN('pfInKey','LongInt').Value.tu32 := 4;
cl.AddConstantN('pfHidden','LongInt').Value.tu32 :=8;
cl.addTypeS('TProviderFlags', 'Byte');
cl.addTypeS('TFieldNotifyEvent', 'procedure (Sender: TField)');
cl.addTypeS('TFieldGetTextEvent', 'procedure (Sender: TField; var Text: string; DisplayText: Boolean)');

cl.addTypeS('TFieldSetTextEvent', 'procedure (Sender: TField; const Text: string)');

cl.addTypeS('TAutoRefreshFlag', '(arNone, arAutoInc, arDefault)');
SIRegisterTLOOKUPLIST(Cl);
SIRegisterTFIELD(Cl);
SIRegisterTSTRINGFIELD(Cl);
SIRegisterTWIDESTRINGFIELD(Cl);
SIRegisterTNUMERICFIELD(Cl);
SIRegisterTINTEGERFIELD(Cl);
SIRegisterTSMALLINTFIELD(Cl);
cl.addTypeS('LargeInt', 'Int64');
SIRegisterTLARGEINTFIELD(Cl);
SIRegisterTWORDFIELD(Cl);
SIRegisterTAUTOINCFIELD(Cl);
SIRegisterTFLOATFIELD(Cl);
SIRegisterTCURRENCYFIELD(Cl);
SIRegisterTBOOLEANFIELD(Cl);
SIRegisterTDATETIMEFIELD(Cl);
SIRegisterTDATEFIELD(Cl);
SIRegisterTTIMEFIELD(Cl);
SIRegisterTBINARYFIELD(Cl);
SIRegisterTBYTESFIELD(Cl);
SIRegisterTVARBYTESFIELD(Cl);
SIRegisterTBCDFIELD(Cl);
{$IFDEF DELPHI6UP}
SIRegisterTFMTBCDFIELD(Cl);
{$ENDIF}
cl.addTypeS('TBlobType', 'Byte');
SIRegisterTBLOBFIELD(Cl);
SIRegisterTMEMOFIELD(Cl);
SIRegisterTGRAPHICFIELD(Cl);
SIRegisterTOBJECTFIELD(Cl);
SIRegisterTADTFIELD(Cl);
SIRegisterTARRAYFIELD(Cl);
SIRegisterTDATASETFIELD(Cl);
SIRegisterTREFERENCEFIELD(Cl);
SIRegisterTVARIANTFIELD(Cl);
SIRegisterTGUIDFIELD(Cl);
cl.addTypeS('TBlobData', 'string');
cl.AddConstantN('ptUnknown','LongInt').Value.tu32 := 1;
cl.AddConstantN('ptInput','LongInt').Value.tu32 := 2;
cl.AddConstantN('ptOutput','LongInt').Value.tu32 := 4;
cl.AddConstantN('ptInputOutput','LongInt').Value.tu32 := 8;
cl.AddConstantN('ptResult','LongInt').Value.tu32 := 16;
RegClassS(cl,'TObject','TParams');
SIRegisterTPARAM(Cl);
SIRegisterTPARAMS(Cl);
cl.addTypeS('TDataAction', '(daFail, daAbort, daRetry)');
cl.addTypeS('TBlobStreamMode', '(bmRead, bmWrite, bmReadWrite)');
cl.addTypeS('TDataOperation', 'procedure');
cl.addTypeS('TDataSetNotifyEvent', 'procedure (Dataset: TDataSet)');
cl.addTypeS('TDataSetErrorEvent', 'procedure (Dataset: TDataSet; E: TObject; var Action: TDataAction)');

cl.addTypeS('TFilterRecordEvent', 'procedure (Dataset: TDataSet; var Accept: Boolean)');

SIRegisterTDATASET(Cl);
end;

{$IFDEF USEIMPORTER}
initialization
CIImporter.AddCallBack(@SIRegister_DB,PT_ClassImport);
{$ENDIF}
end.
