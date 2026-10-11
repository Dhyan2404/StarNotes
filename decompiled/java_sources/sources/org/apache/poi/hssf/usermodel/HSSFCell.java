package org.apache.poi.hssf.usermodel;

import com.google.android.material.motion.MotionUtils;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.usermodel.HyperlinkType;
import org.apache.poi.hssf.model.HSSFFormulaParser;
import org.apache.poi.hssf.model.InternalWorkbook;
import org.apache.poi.hssf.record.BlankRecord;
import org.apache.poi.hssf.record.BoolErrRecord;
import org.apache.poi.hssf.record.CellValueRecordInterface;
import org.apache.poi.hssf.record.ExtendedFormatRecord;
import org.apache.poi.hssf.record.FormulaRecord;
import org.apache.poi.hssf.record.HyperlinkRecord;
import org.apache.poi.hssf.record.LabelSSTRecord;
import org.apache.poi.hssf.record.NumberRecord;
import org.apache.poi.hssf.record.Record;
import org.apache.poi.hssf.record.RecordBase;
import org.apache.poi.hssf.record.aggregates.FormulaRecordAggregate;
import org.apache.poi.hssf.record.common.UnicodeString;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.FormulaType;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.ptg.ExpPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.usermodel.CellBase;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.usermodel.Comment;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.FormulaError;
import org.apache.poi.ss.usermodel.Hyperlink;
import org.apache.poi.ss.usermodel.RichTextString;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.ss.util.NumberToTextConverter;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public class HSSFCell extends CellBase {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final short ENCODING_COMPRESSED_UNICODE = 0;
    public static final short ENCODING_UNCHANGED = -1;
    public static final short ENCODING_UTF_16 = 1;
    private static final String FILE_FORMAT_NAME = "BIFF8";
    private static final String LAST_COLUMN_NAME;
    public static final int LAST_COLUMN_NUMBER;
    private final HSSFWorkbook _book;
    private CellType _cellType;
    private HSSFComment _comment;
    private CellValueRecordInterface _record;
    private final HSSFSheet _sheet;
    private HSSFRichTextString _stringValue;

    /* renamed from: org.apache.poi.hssf.usermodel.HSSFCell$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195301 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

        static {
            int[] iArr = new int[HyperlinkType.values().length];
            $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType = iArr;
            try {
                iArr[HyperlinkType.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[HyperlinkType.URL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[HyperlinkType.FILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[HyperlinkType.DOCUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr2;
            try {
                iArr2[CellType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.FORMULA.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BLANK.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.NUMERIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    static {
        SpreadsheetVersion spreadsheetVersion = SpreadsheetVersion.EXCEL97;
        LAST_COLUMN_NUMBER = spreadsheetVersion.getLastColumnIndex();
        LAST_COLUMN_NAME = spreadsheetVersion.getLastColumnName();
    }

    public HSSFCell(HSSFWorkbook hSSFWorkbook, HSSFSheet hSSFSheet, int i, short s) {
        checkBounds(s);
        this._stringValue = null;
        this._book = hSSFWorkbook;
        this._sheet = hSSFSheet;
        setCellType(CellType.BLANK, false, i, s, hSSFSheet.getSheet().getXFIndexForColAt(s));
    }

    private short applyUserCellStyle(HSSFCellStyle hSSFCellStyle) {
        if (hSSFCellStyle.getUserStyleName() == null) {
            throw new IllegalArgumentException("Expected user-defined style");
        }
        InternalWorkbook workbook = this._book.getWorkbook();
        int numExFormats = workbook.getNumExFormats();
        short s = 0;
        while (true) {
            if (s >= numExFormats) {
                s = -1;
                break;
            }
            ExtendedFormatRecord exFormatAt = workbook.getExFormatAt(s);
            if (exFormatAt.getXFType() == 0 && exFormatAt.getParentIndex() == hSSFCellStyle.getIndex()) {
                break;
            }
            s = (short) (s + 1);
        }
        if (s != -1) {
            return s;
        }
        ExtendedFormatRecord createCellXF = workbook.createCellXF();
        createCellXF.cloneStyleFrom(workbook.getExFormatAt(hSSFCellStyle.getIndex()));
        createCellXF.setIndentionOptions((short) 0);
        createCellXF.setXFType((short) 0);
        createCellXF.setParentIndex(hSSFCellStyle.getIndex());
        return (short) numExFormats;
    }

    private static void checkBounds(int i) {
        if (i < 0 || i > LAST_COLUMN_NUMBER) {
            throw new IllegalArgumentException("Invalid column index (" + i + ").  Allowable column range for " + FILE_FORMAT_NAME + " is (0.." + LAST_COLUMN_NUMBER + ") or ('A'..'" + LAST_COLUMN_NAME + "')");
        }
    }

    private static void checkFormulaCachedValueType(CellType cellType, FormulaRecord formulaRecord) {
        CellType cachedResultTypeEnum = formulaRecord.getCachedResultTypeEnum();
        if (cachedResultTypeEnum != cellType) {
            throw typeMismatch(cellType, cachedResultTypeEnum, true);
        }
    }

    private boolean convertCellValueToBoolean() {
        switch (C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[this._cellType.ordinal()]) {
            case 1:
                return Boolean.parseBoolean(this._book.getWorkbook().getSSTString(((LabelSSTRecord) this._record).getSSTIndex()).getString());
            case 2:
                FormulaRecord formulaRecord = ((FormulaRecordAggregate) this._record).getFormulaRecord();
                checkFormulaCachedValueType(CellType.BOOLEAN, formulaRecord);
                return formulaRecord.getCachedBooleanValue();
            case 3:
            case 6:
                return false;
            case 4:
                return ((NumberRecord) this._record).getValue() != 0.0d;
            case 5:
                return ((BoolErrRecord) this._record).getBooleanValue();
            default:
                throw new IllegalStateException("Unexpected cell type (" + this._cellType + MotionUtils.f31762d);
        }
    }

    private String convertCellValueToString() {
        int[] iArr = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType;
        switch (iArr[this._cellType.ordinal()]) {
            case 1:
                return this._book.getWorkbook().getSSTString(((LabelSSTRecord) this._record).getSSTIndex()).getString();
            case 2:
                FormulaRecordAggregate formulaRecordAggregate = (FormulaRecordAggregate) this._record;
                FormulaRecord formulaRecord = formulaRecordAggregate.getFormulaRecord();
                int i = iArr[formulaRecord.getCachedResultTypeEnum().ordinal()];
                if (i == 1) {
                    return formulaRecordAggregate.getStringValue();
                }
                if (i == 4) {
                    return NumberToTextConverter.toText(formulaRecord.getValue());
                }
                if (i == 5) {
                    return formulaRecord.getCachedBooleanValue() ? "TRUE" : "FALSE";
                }
                if (i == 6) {
                    return FormulaError.forInt(formulaRecord.getCachedErrorValue()).getString();
                }
                throw new IllegalStateException("Unexpected formula result type (" + this._cellType + MotionUtils.f31762d);
            case 3:
                return "";
            case 4:
                return NumberToTextConverter.toText(((NumberRecord) this._record).getValue());
            case 5:
                return ((BoolErrRecord) this._record).getBooleanValue() ? "TRUE" : "FALSE";
            case 6:
                return FormulaError.forInt(((BoolErrRecord) this._record).getErrorValue()).getString();
            default:
                throw new IllegalStateException("Unexpected cell type (" + this._cellType + MotionUtils.f31762d);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static CellType determineType(CellValueRecordInterface cellValueRecordInterface) {
        if (cellValueRecordInterface instanceof FormulaRecordAggregate) {
            return CellType.FORMULA;
        }
        Record record = (Record) cellValueRecordInterface;
        short sid = record.getSid();
        if (sid == 253) {
            return CellType.STRING;
        }
        if (sid == 513) {
            return CellType.BLANK;
        }
        if (sid == 515) {
            return CellType.NUMERIC;
        }
        if (sid == 517) {
            return ((BoolErrRecord) record).isBoolean() ? CellType.BOOLEAN : CellType.ERROR;
        }
        throw new IllegalStateException("Bad cell value rec (" + cellValueRecordInterface.getClass().getName() + MotionUtils.f31762d);
    }

    private void notifyFormulaChanging() {
        CellValueRecordInterface cellValueRecordInterface = this._record;
        if (cellValueRecordInterface instanceof FormulaRecordAggregate) {
            ((FormulaRecordAggregate) cellValueRecordInterface).notifyFormulaChanging();
        }
    }

    private CellValue readValue() {
        CellType cachedFormulaResultType = getCellType() == CellType.FORMULA ? getCachedFormulaResultType() : getCellType();
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[cachedFormulaResultType.ordinal()];
        if (i == 1) {
            return new CellValue(getStringCellValue());
        }
        if (i == 4) {
            return new CellValue(getNumericCellValue());
        }
        if (i == 5) {
            return CellValue.valueOf(getBooleanCellValue());
        }
        if (i == 6) {
            return CellValue.getError(getErrorCellValue());
        }
        throw new IllegalStateException("Unexpected cell-type " + cachedFormulaResultType);
    }

    private void restoreValue(CellValue cellValue) {
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[cellValue.getCellType().ordinal()];
        if (i == 1) {
            setCellValue(cellValue.getStringValue());
            return;
        }
        if (i == 4) {
            setCellValue(cellValue.getNumberValue());
            return;
        }
        if (i == 5) {
            setCellValue(cellValue.getBooleanValue());
            return;
        }
        if (i == 6) {
            setCellErrorValue(FormulaError.forInt(cellValue.getErrorValue()));
            return;
        }
        throw new IllegalStateException("Unexpected cell-type " + cellValue.getCellType() + " for cell-value: " + cellValue);
    }

    private void setCellType(CellType cellType, boolean z, int i, short s, short s2) {
        LabelSSTRecord labelSSTRecord;
        FormulaRecordAggregate formulaRecordAggregate;
        switch (C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[cellType.ordinal()]) {
            case 1:
                if (cellType == this._cellType) {
                    labelSSTRecord = (LabelSSTRecord) this._record;
                } else {
                    labelSSTRecord = new LabelSSTRecord();
                    labelSSTRecord.setColumn(s);
                    labelSSTRecord.setRow(i);
                    labelSSTRecord.setXFIndex(s2);
                }
                if (z) {
                    String convertCellValueToString = convertCellValueToString();
                    if (convertCellValueToString == null) {
                        setCellType(CellType.BLANK, false, i, s, s2);
                        return;
                    }
                    int addSSTString = this._book.getWorkbook().addSSTString(new UnicodeString(convertCellValueToString));
                    labelSSTRecord.setSSTIndex(addSSTString);
                    UnicodeString sSTString = this._book.getWorkbook().getSSTString(addSSTString);
                    HSSFRichTextString hSSFRichTextString = new HSSFRichTextString();
                    this._stringValue = hSSFRichTextString;
                    hSSFRichTextString.setUnicodeString(sSTString);
                }
                this._record = labelSSTRecord;
                break;
            case 2:
                if (cellType != this._cellType) {
                    formulaRecordAggregate = this._sheet.getSheet().getRowsAggregate().createFormula(i, s);
                } else {
                    formulaRecordAggregate = (FormulaRecordAggregate) this._record;
                    formulaRecordAggregate.setRow(i);
                    formulaRecordAggregate.setColumn(s);
                }
                if (getCellType() == CellType.BLANK) {
                    formulaRecordAggregate.getFormulaRecord().setValue(0.0d);
                }
                formulaRecordAggregate.setXFIndex(s2);
                this._record = formulaRecordAggregate;
                break;
            case 3:
                BlankRecord blankRecord = cellType != this._cellType ? new BlankRecord() : (BlankRecord) this._record;
                blankRecord.setColumn(s);
                blankRecord.setXFIndex(s2);
                blankRecord.setRow(i);
                this._record = blankRecord;
                break;
            case 4:
                NumberRecord numberRecord = cellType != this._cellType ? new NumberRecord() : (NumberRecord) this._record;
                numberRecord.setColumn(s);
                if (z) {
                    numberRecord.setValue(getNumericCellValue());
                }
                numberRecord.setXFIndex(s2);
                numberRecord.setRow(i);
                this._record = numberRecord;
                break;
            case 5:
                BoolErrRecord boolErrRecord = cellType != this._cellType ? new BoolErrRecord() : (BoolErrRecord) this._record;
                boolErrRecord.setColumn(s);
                if (z) {
                    boolErrRecord.setValue(convertCellValueToBoolean());
                }
                boolErrRecord.setXFIndex(s2);
                boolErrRecord.setRow(i);
                this._record = boolErrRecord;
                break;
            case 6:
                BoolErrRecord boolErrRecord2 = cellType != this._cellType ? new BoolErrRecord() : (BoolErrRecord) this._record;
                boolErrRecord2.setColumn(s);
                if (z) {
                    boolErrRecord2.setValue(FormulaError.VALUE.getCode());
                }
                boolErrRecord2.setXFIndex(s2);
                boolErrRecord2.setRow(i);
                this._record = boolErrRecord2;
                break;
            default:
                throw new IllegalStateException("Invalid cell type: " + cellType);
        }
        CellType cellType2 = this._cellType;
        if (cellType != cellType2 && cellType2 != CellType._NONE) {
            this._sheet.getSheet().replaceValueRecord(this._record);
        }
        this._cellType = cellType;
    }

    private static RuntimeException typeMismatch(CellType cellType, CellType cellType2, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("Cannot get a ");
        sb.append(cellType);
        sb.append(" value from a ");
        sb.append(cellType2);
        sb.append(" ");
        sb.append(z ? "formula " : "");
        sb.append("cell");
        return new IllegalStateException(sb.toString());
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public CellRangeAddress getArrayFormulaRange() {
        if (this._cellType == CellType.FORMULA) {
            return ((FormulaRecordAggregate) this._record).getArrayFormulaRange();
        }
        throw new IllegalStateException("Cell " + new CellReference(this).formatAsString() + " is not part of an array formula.");
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public boolean getBooleanCellValue() {
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[this._cellType.ordinal()];
        if (i == 2) {
            FormulaRecord formulaRecord = ((FormulaRecordAggregate) this._record).getFormulaRecord();
            checkFormulaCachedValueType(CellType.BOOLEAN, formulaRecord);
            return formulaRecord.getCachedBooleanValue();
        }
        if (i == 3) {
            return false;
        }
        if (i == 5) {
            return ((BoolErrRecord) this._record).getBooleanValue();
        }
        throw typeMismatch(CellType.BOOLEAN, this._cellType, false);
    }

    public InternalWorkbook getBoundWorkbook() {
        return this._book.getWorkbook();
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public CellType getCachedFormulaResultType() {
        if (this._cellType == CellType.FORMULA) {
            return ((FormulaRecordAggregate) this._record).getFormulaRecord().getCachedResultTypeEnum();
        }
        throw new IllegalStateException("Only formula cells have cached results");
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public String getCellFormula() {
        CellValueRecordInterface cellValueRecordInterface = this._record;
        if (cellValueRecordInterface instanceof FormulaRecordAggregate) {
            return HSSFFormulaParser.toFormulaString(this._book, ((FormulaRecordAggregate) cellValueRecordInterface).getFormulaTokens());
        }
        throw typeMismatch(CellType.FORMULA, this._cellType, true);
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public CellType getCellType() {
        return this._cellType;
    }

    public CellValueRecordInterface getCellValueRecord() {
        return this._record;
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public int getColumnIndex() {
        return this._record.getColumn() & 65535;
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public Date getDateCellValue() {
        if (this._cellType == CellType.BLANK) {
            return null;
        }
        double numericCellValue = getNumericCellValue();
        return this._book.getWorkbook().isUsing1904DateWindowing() ? DateUtil.getJavaDate(numericCellValue, true) : DateUtil.getJavaDate(numericCellValue, false);
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public byte getErrorCellValue() {
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[this._cellType.ordinal()];
        if (i != 2) {
            if (i == 6) {
                return ((BoolErrRecord) this._record).getErrorValue();
            }
            throw typeMismatch(CellType.ERROR, this._cellType, false);
        }
        FormulaRecord formulaRecord = ((FormulaRecordAggregate) this._record).getFormulaRecord();
        checkFormulaCachedValueType(CellType.ERROR, formulaRecord);
        return (byte) formulaRecord.getCachedErrorValue();
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public LocalDateTime getLocalDateTimeCellValue() {
        if (this._cellType == CellType.BLANK) {
            return null;
        }
        double numericCellValue = getNumericCellValue();
        return this._book.getWorkbook().isUsing1904DateWindowing() ? DateUtil.getLocalDateTime(numericCellValue, true) : DateUtil.getLocalDateTime(numericCellValue, false);
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public double getNumericCellValue() {
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[this._cellType.ordinal()];
        if (i == 2) {
            FormulaRecord formulaRecord = ((FormulaRecordAggregate) this._record).getFormulaRecord();
            checkFormulaCachedValueType(CellType.NUMERIC, formulaRecord);
            return formulaRecord.getValue();
        }
        if (i == 3) {
            return 0.0d;
        }
        if (i == 4) {
            return ((NumberRecord) this._record).getValue();
        }
        throw typeMismatch(CellType.NUMERIC, this._cellType, false);
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public int getRowIndex() {
        return this._record.getRow();
    }

    @Override // org.apache.poi.ss.usermodel.CellBase
    public SpreadsheetVersion getSpreadsheetVersion() {
        return SpreadsheetVersion.EXCEL97;
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public String getStringCellValue() {
        return getRichStringCellValue().getString();
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public boolean isPartOfArrayFormulaGroup() {
        return this._cellType == CellType.FORMULA && ((FormulaRecordAggregate) this._record).isPartOfArrayFormula();
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public void removeCellComment() {
        HSSFComment findCellComment = this._sheet.findCellComment(this._record.getRow(), this._record.getColumn());
        this._comment = null;
        if (findCellComment == null) {
            return;
        }
        this._sheet.getDrawingPatriarch().removeShape(findCellComment);
    }

    @Override // org.apache.poi.ss.usermodel.CellBase
    public void removeFormulaImpl() {
        notifyFormulaChanging();
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[getCachedFormulaResultType().ordinal()];
        if (i == 1) {
            NumberRecord numberRecord = new NumberRecord();
            this._record = numberRecord;
            numberRecord.setValue(0.0d);
            this._cellType = CellType.STRING;
            return;
        }
        if (i == 4) {
            double value = ((FormulaRecordAggregate) this._record).getFormulaRecord().getValue();
            NumberRecord numberRecord2 = new NumberRecord();
            this._record = numberRecord2;
            numberRecord2.setValue(value);
            this._cellType = CellType.NUMERIC;
            return;
        }
        if (i == 5) {
            boolean cachedBooleanValue = ((FormulaRecordAggregate) this._record).getFormulaRecord().getCachedBooleanValue();
            BoolErrRecord boolErrRecord = new BoolErrRecord();
            this._record = boolErrRecord;
            boolErrRecord.setValue(cachedBooleanValue);
            this._cellType = CellType.BOOLEAN;
            return;
        }
        if (i != 6) {
            throw new AssertionError();
        }
        byte cachedErrorValue = (byte) ((FormulaRecordAggregate) this._record).getFormulaRecord().getCachedErrorValue();
        BoolErrRecord boolErrRecord2 = new BoolErrRecord();
        this._record = boolErrRecord2;
        try {
            boolErrRecord2.setValue(cachedErrorValue);
        } catch (IllegalArgumentException unused) {
            ((BoolErrRecord) this._record).setValue((byte) ErrorEval.REF_INVALID.getErrorCode());
        }
        this._cellType = CellType.ERROR;
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public void removeHyperlink() {
        Iterator<RecordBase> it2 = this._sheet.getSheet().getRecords().iterator();
        while (it2.hasNext()) {
            RecordBase next = it2.next();
            if (next instanceof HyperlinkRecord) {
                HyperlinkRecord hyperlinkRecord = (HyperlinkRecord) next;
                if (hyperlinkRecord.getFirstColumn() == this._record.getColumn() && hyperlinkRecord.getFirstRow() == this._record.getRow()) {
                    it2.remove();
                    return;
                }
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public void setAsActiveCell() {
        int row = this._record.getRow();
        short column = this._record.getColumn();
        this._sheet.getSheet().setActiveCellRow(row);
        this._sheet.getSheet().setActiveCellCol(column);
    }

    public void setCellArrayFormula(CellRangeAddress cellRangeAddress) {
        setCellType(CellType.FORMULA, false, this._record.getRow(), this._record.getColumn(), this._record.getXFIndex());
        ((FormulaRecordAggregate) this._record).setParsedExpression(new Ptg[]{new ExpPtg(cellRangeAddress.getFirstRow(), cellRangeAddress.getFirstColumn())});
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public void setCellComment(Comment comment) {
        if (comment == null) {
            removeCellComment();
            return;
        }
        comment.setRow(this._record.getRow());
        comment.setColumn(this._record.getColumn());
        this._comment = (HSSFComment) comment;
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    @Deprecated
    public void setCellErrorValue(byte b) {
        setCellErrorValue(FormulaError.forInt(b));
    }

    @Override // org.apache.poi.ss.usermodel.CellBase
    public void setCellFormulaImpl(String str) {
        if (getValueType() == CellType.BLANK) {
            setCellValue(0.0d);
        }
        int row = this._record.getRow();
        short column = this._record.getColumn();
        short xFIndex = this._record.getXFIndex();
        CellValue readValue = readValue();
        Ptg[] parse = HSSFFormulaParser.parse(str, this._book, FormulaType.CELL, this._book.getSheetIndex(this._sheet));
        setCellType(CellType.FORMULA, false, row, column, xFIndex);
        FormulaRecordAggregate formulaRecordAggregate = (FormulaRecordAggregate) this._record;
        formulaRecordAggregate.getFormulaRecord().setOptions((short) 2);
        if (formulaRecordAggregate.getXFIndex() == 0) {
            formulaRecordAggregate.setXFIndex((short) 15);
        }
        formulaRecordAggregate.setParsedExpression(parse);
        restoreValue(readValue);
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public void setCellStyle(CellStyle cellStyle) {
        setCellStyle((HSSFCellStyle) cellStyle);
    }

    @Override // org.apache.poi.ss.usermodel.CellBase
    public void setCellTypeImpl(CellType cellType) {
        notifyFormulaChanging();
        setCellType(cellType, true, this._record.getRow(), this._record.getColumn(), this._record.getXFIndex());
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public void setCellValue(boolean z) {
        int row = this._record.getRow();
        short column = this._record.getColumn();
        short xFIndex = this._record.getXFIndex();
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[this._cellType.ordinal()];
        if (i == 2) {
            ((FormulaRecordAggregate) this._record).setCachedBooleanResult(z);
            return;
        }
        if (i != 5) {
            setCellType(CellType.BOOLEAN, false, row, column, xFIndex);
        }
        ((BoolErrRecord) this._record).setValue(z);
    }

    @Override // org.apache.poi.ss.usermodel.CellBase
    public void setCellValueImpl(double d) {
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[this._cellType.ordinal()];
        if (i != 2) {
            if (i != 4) {
                setCellType(CellType.NUMERIC, false, this._record.getRow(), this._record.getColumn(), this._record.getXFIndex());
            }
            ((NumberRecord) this._record).setValue(d);
            return;
        }
        ((FormulaRecordAggregate) this._record).setCachedDoubleResult(d);
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public void setHyperlink(Hyperlink hyperlink) {
        if (hyperlink == null) {
            removeHyperlink();
            return;
        }
        HSSFHyperlink hSSFHyperlink = hyperlink instanceof HSSFHyperlink ? (HSSFHyperlink) hyperlink : new HSSFHyperlink(hyperlink);
        hSSFHyperlink.setFirstRow(this._record.getRow());
        hSSFHyperlink.setLastRow(this._record.getRow());
        hSSFHyperlink.setFirstColumn(this._record.getColumn());
        hSSFHyperlink.setLastColumn(this._record.getColumn());
        int i = C195301.$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType[hSSFHyperlink.getType().ordinal()];
        if (i == 1 || i == 2) {
            hSSFHyperlink.setLabel("url");
        } else if (i == 3) {
            hSSFHyperlink.setLabel("file");
        } else if (i == 4) {
            hSSFHyperlink.setLabel("place");
        }
        List<RecordBase> records = this._sheet.getSheet().getRecords();
        records.add(records.size() - 1, hSSFHyperlink.record);
    }

    public String toString() {
        switch (C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[getCellType().ordinal()]) {
            case 1:
                return getStringCellValue();
            case 2:
                return getCellFormula();
            case 3:
                return "";
            case 4:
                if (!DateUtil.isCellDateFormatted(this)) {
                    return String.valueOf(getNumericCellValue());
                }
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MMM-yyyy", LocaleUtil.getUserLocale());
                simpleDateFormat.setTimeZone(LocaleUtil.getUserTimeZone());
                return simpleDateFormat.format(getDateCellValue());
            case 5:
                return getBooleanCellValue() ? "TRUE" : "FALSE";
            case 6:
                return ErrorEval.getText(((BoolErrRecord) this._record).getErrorValue());
            default:
                return "Unknown Cell Type: " + getCellType();
        }
    }

    public void updateCellNum(short s) {
        this._record.setColumn(s);
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public HSSFComment getCellComment() {
        if (this._comment == null) {
            this._comment = this._sheet.findCellComment(this._record.getRow(), this._record.getColumn());
        }
        return this._comment;
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public HSSFCellStyle getCellStyle() {
        short xFIndex = this._record.getXFIndex();
        return new HSSFCellStyle(xFIndex, this._book.getWorkbook().getExFormatAt(xFIndex), this._book);
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public HSSFHyperlink getHyperlink() {
        return this._sheet.getHyperlink(this._record.getRow(), (int) this._record.getColumn());
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public HSSFRichTextString getRichStringCellValue() {
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[this._cellType.ordinal()];
        if (i == 1) {
            return this._stringValue;
        }
        if (i != 2) {
            if (i == 3) {
                return new HSSFRichTextString("");
            }
            throw typeMismatch(CellType.STRING, this._cellType, false);
        }
        FormulaRecordAggregate formulaRecordAggregate = (FormulaRecordAggregate) this._record;
        checkFormulaCachedValueType(CellType.STRING, formulaRecordAggregate.getFormulaRecord());
        String stringValue = formulaRecordAggregate.getStringValue();
        return new HSSFRichTextString(stringValue != null ? stringValue : "");
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public HSSFRow getRow() {
        return this._sheet.getRow(getRowIndex());
    }

    @Override // org.apache.poi.ss.usermodel.Cell
    public HSSFSheet getSheet() {
        return this._sheet;
    }

    public void setCellStyle(HSSFCellStyle hSSFCellStyle) {
        short index;
        if (hSSFCellStyle == null) {
            this._record.setXFIndex((short) 15);
            return;
        }
        hSSFCellStyle.verifyBelongsToWorkbook(this._book);
        if (hSSFCellStyle.getUserStyleName() != null) {
            index = applyUserCellStyle(hSSFCellStyle);
        } else {
            index = hSSFCellStyle.getIndex();
        }
        this._record.setXFIndex(index);
    }

    public void setCellErrorValue(FormulaError formulaError) {
        int row = this._record.getRow();
        short column = this._record.getColumn();
        short xFIndex = this._record.getXFIndex();
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[this._cellType.ordinal()];
        if (i != 2) {
            if (i != 6) {
                setCellType(CellType.ERROR, false, row, column, xFIndex);
            }
            ((BoolErrRecord) this._record).setValue(formulaError);
            return;
        }
        ((FormulaRecordAggregate) this._record).setCachedErrorResult(formulaError.getCode());
    }

    public HSSFCell(HSSFWorkbook hSSFWorkbook, HSSFSheet hSSFSheet, int i, short s, CellType cellType) {
        checkBounds(s);
        this._cellType = CellType._NONE;
        this._stringValue = null;
        this._book = hSSFWorkbook;
        this._sheet = hSSFSheet;
        setCellType(cellType, false, i, s, hSSFSheet.getSheet().getXFIndexForColAt(s));
    }

    @Override // org.apache.poi.ss.usermodel.CellBase
    public void setCellValueImpl(Date date) {
        setCellValue(DateUtil.getExcelDate(date, this._book.getWorkbook().isUsing1904DateWindowing()));
    }

    @Override // org.apache.poi.ss.usermodel.CellBase
    public void setCellValueImpl(LocalDateTime localDateTime) {
        setCellValue(DateUtil.getExcelDate(localDateTime, this._book.getWorkbook().isUsing1904DateWindowing()));
    }

    @Override // org.apache.poi.ss.usermodel.CellBase
    public void setCellValueImpl(Calendar calendar) {
        setCellValue(DateUtil.getExcelDate(calendar, this._book.getWorkbook().isUsing1904DateWindowing()));
    }

    @Override // org.apache.poi.ss.usermodel.CellBase
    public void setCellValueImpl(String str) {
        setCellValueImpl(new HSSFRichTextString(str));
    }

    @Override // org.apache.poi.ss.usermodel.CellBase
    public void setCellValueImpl(RichTextString richTextString) {
        CellType cellType = this._cellType;
        if (cellType == CellType.FORMULA) {
            ((FormulaRecordAggregate) this._record).setCachedStringResult(richTextString.getString());
            this._stringValue = new HSSFRichTextString(richTextString.getString());
            return;
        }
        CellType cellType2 = CellType.STRING;
        if (cellType != cellType2) {
            setCellType(cellType2, false, this._record.getRow(), this._record.getColumn(), this._record.getXFIndex());
        }
        if (richTextString instanceof HSSFRichTextString) {
            HSSFRichTextString hSSFRichTextString = (HSSFRichTextString) richTextString;
            int addSSTString = this._book.getWorkbook().addSSTString(hSSFRichTextString.getUnicodeString());
            ((LabelSSTRecord) this._record).setSSTIndex(addSSTString);
            this._stringValue = hSSFRichTextString;
            hSSFRichTextString.setWorkbookReferences(this._book.getWorkbook(), (LabelSSTRecord) this._record);
            this._stringValue.setUnicodeString(this._book.getWorkbook().getSSTString(addSSTString));
            return;
        }
        HSSFRichTextString hSSFRichTextString2 = new HSSFRichTextString(richTextString.getString());
        int addSSTString2 = this._book.getWorkbook().addSSTString(hSSFRichTextString2.getUnicodeString());
        ((LabelSSTRecord) this._record).setSSTIndex(addSSTString2);
        this._stringValue = hSSFRichTextString2;
        hSSFRichTextString2.setWorkbookReferences(this._book.getWorkbook(), (LabelSSTRecord) this._record);
        this._stringValue.setUnicodeString(this._book.getWorkbook().getSSTString(addSSTString2));
    }

    public HSSFCell(HSSFWorkbook hSSFWorkbook, HSSFSheet hSSFSheet, CellValueRecordInterface cellValueRecordInterface) {
        this._record = cellValueRecordInterface;
        CellType determineType = determineType(cellValueRecordInterface);
        this._cellType = determineType;
        this._stringValue = null;
        this._book = hSSFWorkbook;
        this._sheet = hSSFSheet;
        int i = C195301.$SwitchMap$org$apache$poi$ss$usermodel$CellType[determineType.ordinal()];
        if (i == 1) {
            this._stringValue = new HSSFRichTextString(hSSFWorkbook.getWorkbook(), (LabelSSTRecord) cellValueRecordInterface);
        } else {
            if (i != 2) {
                return;
            }
            this._stringValue = new HSSFRichTextString(((FormulaRecordAggregate) cellValueRecordInterface).getStringValue());
        }
    }
}
