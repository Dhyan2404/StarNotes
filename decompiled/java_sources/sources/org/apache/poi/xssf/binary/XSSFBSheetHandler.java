package org.apache.poi.xssf.binary;

import java.io.InputStream;
import java.util.Queue;
import org.apache.poi.ss.usermodel.BuiltinFormats;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.util.CellAddress;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;
import org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;
import org.apache.poi.xssf.model.SharedStrings;
import org.apache.poi.xssf.usermodel.XSSFComment;

@Internal
/* loaded from: classes13.dex */
public class XSSFBSheetHandler extends XSSFBParser {
    private static final int CHECK_ALL_ROWS = -1;
    private final XSSFBCellHeader cellBuffer;
    private final XSSFBCommentsTable comments;
    private int currentRow;
    private final DataFormatter dataFormatter;
    private final boolean formulasNotResults;
    private final XSSFSheetXMLHandler.SheetContentsHandler handler;
    private XSSFBCellRange hyperlinkCellRange;
    private int lastEndedRow;
    private int lastStartedRow;
    private byte[] rkBuffer;
    private final SharedStrings stringsTable;
    private final XSSFBStylesTable styles;
    private StringBuilder xlWideStringBuffer;

    /* renamed from: org.apache.poi.xssf.binary.XSSFBSheetHandler$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199491 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType;

        static {
            int[] iArr = new int[XSSFBRecordType.values().length];
            $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType = iArr;
            try {
                iArr[XSSFBRecordType.BrtRowHdr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtCellIsst.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtCellSt.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtCellRk.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtCellReal.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtCellBool.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtCellError.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtCellBlank.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtFmlaString.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtFmlaNum.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtFmlaError.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtEndSheetData.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.BrtBeginHeaderFooter.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public interface SheetContentsHandler extends XSSFSheetXMLHandler.SheetContentsHandler {
        void hyperlinkCell(String str, String str2, String str3, String str4, XSSFComment xSSFComment);
    }

    public XSSFBSheetHandler(InputStream inputStream, XSSFBStylesTable xSSFBStylesTable, XSSFBCommentsTable xSSFBCommentsTable, SharedStrings sharedStrings, XSSFSheetXMLHandler.SheetContentsHandler sheetContentsHandler, DataFormatter dataFormatter, boolean z) {
        super(inputStream);
        this.lastEndedRow = -1;
        this.lastStartedRow = -1;
        this.rkBuffer = new byte[8];
        this.xlWideStringBuffer = new StringBuilder();
        this.cellBuffer = new XSSFBCellHeader();
        this.styles = xSSFBStylesTable;
        this.comments = xSSFBCommentsTable;
        this.stringsTable = sharedStrings;
        this.handler = sheetContentsHandler;
        this.dataFormatter = dataFormatter;
        this.formulasNotResults = z;
    }

    private void beforeCellValue(byte[] bArr) {
        XSSFBCellHeader.parse(bArr, 0, this.currentRow, this.cellBuffer);
        checkMissedComments(this.currentRow, this.cellBuffer.getColNum());
    }

    private void checkMissedComments(int i, int i2) {
        XSSFBCommentsTable xSSFBCommentsTable = this.comments;
        if (xSSFBCommentsTable == null) {
            return;
        }
        Queue<CellAddress> addresses = xSSFBCommentsTable.getAddresses();
        while (!addresses.isEmpty()) {
            CellAddress peek = addresses.peek();
            if (peek.getRow() == i && peek.getColumn() < i2) {
                CellAddress remove = addresses.remove();
                dumpEmptyCellComment(remove, this.comments.get(remove));
            } else if (peek.getRow() == i && peek.getColumn() == i2) {
                addresses.remove();
                return;
            } else if ((peek.getRow() == i && peek.getColumn() > i2) || peek.getRow() > i) {
                return;
            }
        }
    }

    private void dumpEmptyCellComment(CellAddress cellAddress, XSSFBComment xSSFBComment) {
        this.handler.cell(cellAddress.formatAsString(), null, xSSFBComment);
    }

    private void endRow(int i) {
        if (this.lastEndedRow == i) {
            return;
        }
        this.handler.endRow(i);
        this.lastEndedRow = i;
    }

    private String formatVal(double d, int i) {
        String numberFormatString = this.styles.getNumberFormatString(i);
        short numberFormatIndex = this.styles.getNumberFormatIndex(i);
        if (numberFormatString == null) {
            numberFormatIndex = 0;
            numberFormatString = BuiltinFormats.getBuiltinFormat(0);
        }
        return this.dataFormatter.formatRawCellContents(d, numberFormatIndex, numberFormatString);
    }

    private void handleBoolean(byte[] bArr) {
        beforeCellValue(bArr);
        handleCellValue(bArr[8] == 1 ? "TRUE" : "FALSE");
    }

    private void handleBrtCellIsst(byte[] bArr) {
        beforeCellValue(bArr);
        handleCellValue(this.stringsTable.getItemAt(XSSFBUtils.castToInt(LittleEndian.getUInt(bArr, 8))).getString());
    }

    private void handleCellError(byte[] bArr) {
        beforeCellValue(bArr);
        handleCellValue("ERROR");
    }

    private void handleCellReal(byte[] bArr) {
        beforeCellValue(bArr);
        handleCellValue(formatVal(LittleEndian.getDouble(bArr, 8), this.cellBuffer.getStyleIdx()));
    }

    private void handleCellRk(byte[] bArr) {
        beforeCellValue(bArr);
        handleCellValue(formatVal(rkNumber(bArr, 8), this.cellBuffer.getStyleIdx()));
    }

    private void handleCellSt(byte[] bArr) {
        beforeCellValue(bArr);
        this.xlWideStringBuffer.setLength(0);
        XSSFBUtils.readXLWideString(bArr, 8, this.xlWideStringBuffer);
        handleCellValue(this.xlWideStringBuffer.toString());
    }

    private void handleCellValue(String str) {
        CellAddress cellAddress = new CellAddress(this.currentRow, this.cellBuffer.getColNum());
        XSSFBCommentsTable xSSFBCommentsTable = this.comments;
        this.handler.cell(cellAddress.formatAsString(), str, xSSFBCommentsTable != null ? xSSFBCommentsTable.get(cellAddress) : null);
    }

    private void handleFmlaError(byte[] bArr) {
        beforeCellValue(bArr);
        handleCellValue("ERROR");
    }

    private void handleFmlaNum(byte[] bArr) {
        beforeCellValue(bArr);
        handleCellValue(formatVal(LittleEndian.getDouble(bArr, 8), this.cellBuffer.getStyleIdx()));
    }

    private void handleFmlaString(byte[] bArr) {
        beforeCellValue(bArr);
        this.xlWideStringBuffer.setLength(0);
        XSSFBUtils.readXLWideString(bArr, 8, this.xlWideStringBuffer);
        handleCellValue(this.xlWideStringBuffer.toString());
    }

    private void handleHeaderFooter(byte[] bArr) {
        XSSFBHeaderFooters parse = XSSFBHeaderFooters.parse(bArr);
        outputHeaderFooter(parse.getHeader());
        outputHeaderFooter(parse.getFooter());
        outputHeaderFooter(parse.getHeaderEven());
        outputHeaderFooter(parse.getFooterEven());
        outputHeaderFooter(parse.getHeaderFirst());
        outputHeaderFooter(parse.getFooterFirst());
    }

    private void outputHeaderFooter(XSSFBHeaderFooter xSSFBHeaderFooter) {
        String string = xSSFBHeaderFooter.getString();
        if (StringUtil.isNotBlank(string)) {
            this.handler.headerFooter(string, xSSFBHeaderFooter.isHeader(), xSSFBHeaderFooter.getHeaderFooterTypeLabel());
        }
    }

    private double rkNumber(byte[] bArr, int i) {
        byte b = bArr[i];
        boolean z = (b & 1) == 1;
        boolean z2 = ((b >> 1) & 1) == 0;
        byte[] bArr2 = this.rkBuffer;
        bArr2[4] = (byte) (((byte) (b & (-2))) & (-3));
        System.arraycopy(bArr, i + 1, bArr2, 5, 3);
        double d = z2 ? LittleEndian.getDouble(this.rkBuffer) : LittleEndian.getInt(this.rkBuffer, 4) >> 2;
        return z ? d / 100.0d : d;
    }

    private void startRow(int i) {
        int i2 = this.lastStartedRow;
        if (i == i2) {
            return;
        }
        if (i2 != this.lastEndedRow) {
            endRow(i2);
        }
        this.handler.startRow(i);
        this.lastStartedRow = i;
    }

    @Override // org.apache.poi.xssf.binary.XSSFBParser
    public void handleRecord(int i, byte[] bArr) throws XSSFBParseException {
        switch (C199491.$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType[XSSFBRecordType.lookup(i).ordinal()]) {
            case 1:
                int castToInt = XSSFBUtils.castToInt(LittleEndian.getUInt(bArr, 0));
                if (castToInt <= 1048576) {
                    this.currentRow = castToInt;
                    checkMissedComments(castToInt);
                    startRow(this.currentRow);
                    return;
                } else {
                    throw new XSSFBParseException("Row number beyond allowable range: " + castToInt);
                }
            case 2:
                handleBrtCellIsst(bArr);
                return;
            case 3:
                handleCellSt(bArr);
                return;
            case 4:
                handleCellRk(bArr);
                return;
            case 5:
                handleCellReal(bArr);
                return;
            case 6:
                handleBoolean(bArr);
                return;
            case 7:
                handleCellError(bArr);
                return;
            case 8:
                beforeCellValue(bArr);
                return;
            case 9:
                handleFmlaString(bArr);
                return;
            case 10:
                handleFmlaNum(bArr);
                return;
            case 11:
                handleFmlaError(bArr);
                return;
            case 12:
                checkMissedComments(-1);
                endRow(this.lastStartedRow);
                return;
            case 13:
                handleHeaderFooter(bArr);
                return;
            default:
                return;
        }
    }

    private void checkMissedComments(int i) {
        XSSFBCommentsTable xSSFBCommentsTable = this.comments;
        if (xSSFBCommentsTable == null) {
            return;
        }
        Queue<CellAddress> addresses = xSSFBCommentsTable.getAddresses();
        int i2 = -1;
        while (!addresses.isEmpty()) {
            CellAddress peek = addresses.peek();
            if (i != -1 && peek.getRow() >= i) {
                return;
            }
            CellAddress remove = addresses.remove();
            if (remove.getRow() != i2) {
                startRow(remove.getRow());
            }
            dumpEmptyCellComment(remove, this.comments.get(remove));
            i2 = remove.getRow();
        }
    }
}
