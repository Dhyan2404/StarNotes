package org.apache.poi.xssf.eventusermodel;

import com.google.android.material.motion.MotionUtils;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.usermodel.BuiltinFormats;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.util.CellAddress;
import org.apache.poi.xssf.model.Comments;
import org.apache.poi.xssf.model.SharedStrings;
import org.apache.poi.xssf.model.Styles;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFComment;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.poi.xssf.usermodel.XSSFRichTextString;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes13.dex */
public class XSSFSheetXMLHandler extends DefaultHandler {
    private static final Logger LOG = LogManager.getLogger((Class<?>) XSSFSheetXMLHandler.class);
    private String cellRef;
    private Queue<CellAddress> commentCellRefs;
    private final Comments comments;
    private boolean fIsOpen;
    private short formatIndex;
    private String formatString;
    private final DataFormatter formatter;
    private final StringBuilder formula;
    private final boolean formulasNotResults;
    private final StringBuilder headerFooter;
    private boolean hfIsOpen;
    private boolean isIsOpen;
    private xssfDataType nextDataType;
    private int nextRowNum;
    private final SheetContentsHandler output;
    private int rowNum;
    private final SharedStrings sharedStringsTable;
    private final Styles stylesTable;
    private boolean vIsOpen;
    private final StringBuilder value;

    /* renamed from: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199521 {

        /* renamed from: $SwitchMap$org$apache$poi$xssf$eventusermodel$XSSFSheetXMLHandler$xssfDataType */
        static final /* synthetic */ int[] f111825xeb23638c;

        static {
            int[] iArr = new int[xssfDataType.values().length];
            f111825xeb23638c = iArr;
            try {
                iArr[xssfDataType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111825xeb23638c[xssfDataType.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111825xeb23638c[xssfDataType.FORMULA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111825xeb23638c[xssfDataType.INLINE_STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111825xeb23638c[xssfDataType.SST_STRING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f111825xeb23638c[xssfDataType.NUMBER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum EmptyCellCommentsCheckType {
        CELL,
        END_OF_ROW,
        END_OF_SHEET_DATA
    }

    /* loaded from: classes13.dex */
    public interface SheetContentsHandler {
        void cell(String str, String str2, XSSFComment xSSFComment);

        void endRow(int i);

        default void endSheet() {
        }

        default void headerFooter(String str, boolean z, String str2) {
        }

        void startRow(int i);
    }

    /* loaded from: classes13.dex */
    public enum xssfDataType {
        BOOLEAN,
        ERROR,
        FORMULA,
        INLINE_STRING,
        SST_STRING,
        NUMBER
    }

    public XSSFSheetXMLHandler(Styles styles, Comments comments, SharedStrings sharedStrings, SheetContentsHandler sheetContentsHandler, DataFormatter dataFormatter, boolean z) {
        this.value = new StringBuilder(64);
        this.formula = new StringBuilder(64);
        this.headerFooter = new StringBuilder(64);
        this.stylesTable = styles;
        this.comments = comments;
        this.sharedStringsTable = sharedStrings;
        this.output = sheetContentsHandler;
        this.formulasNotResults = z;
        this.nextDataType = xssfDataType.NUMBER;
        this.formatter = dataFormatter;
        init(comments);
    }

    private void checkForEmptyCellComments(EmptyCellCommentsCheckType emptyCellCommentsCheckType) {
        CellAddress cellAddress;
        Queue<CellAddress> queue = this.commentCellRefs;
        if (queue == null || queue.isEmpty()) {
            return;
        }
        if (emptyCellCommentsCheckType == EmptyCellCommentsCheckType.END_OF_SHEET_DATA) {
            while (!this.commentCellRefs.isEmpty()) {
                outputEmptyCellComment(this.commentCellRefs.remove());
            }
            return;
        }
        if (this.cellRef == null) {
            if (emptyCellCommentsCheckType == EmptyCellCommentsCheckType.END_OF_ROW) {
                while (!this.commentCellRefs.isEmpty() && this.commentCellRefs.peek().getRow() == this.rowNum) {
                    outputEmptyCellComment(this.commentCellRefs.remove());
                }
                return;
            } else {
                throw new IllegalStateException("Cell ref should be null only if there are only empty cells in the row; rowNum: " + this.rowNum);
            }
        }
        do {
            CellAddress cellAddress2 = new CellAddress(this.cellRef);
            CellAddress peek = this.commentCellRefs.peek();
            EmptyCellCommentsCheckType emptyCellCommentsCheckType2 = EmptyCellCommentsCheckType.CELL;
            if (emptyCellCommentsCheckType == emptyCellCommentsCheckType2 && cellAddress2.equals(peek)) {
                this.commentCellRefs.remove();
                return;
            }
            int compareTo = peek.compareTo(cellAddress2);
            if (compareTo > 0 && emptyCellCommentsCheckType == EmptyCellCommentsCheckType.END_OF_ROW && peek.getRow() <= this.rowNum) {
                cellAddress = this.commentCellRefs.remove();
                outputEmptyCellComment(cellAddress);
            } else if (compareTo >= 0 || emptyCellCommentsCheckType != emptyCellCommentsCheckType2 || peek.getRow() > this.rowNum) {
                cellAddress = null;
            } else {
                cellAddress = this.commentCellRefs.remove();
                outputEmptyCellComment(cellAddress);
            }
            if (cellAddress == null) {
                return;
            }
        } while (!this.commentCellRefs.isEmpty());
    }

    private void init(Comments comments) {
        if (comments != null) {
            this.commentCellRefs = new LinkedList();
            Iterator<CellAddress> cellAddresses = comments.getCellAddresses();
            while (cellAddresses.hasNext()) {
                this.commentCellRefs.add(cellAddresses.next());
            }
        }
    }

    private boolean isTextTag(String str) {
        if ("v".equals(str) || "inlineStr".equals(str)) {
            return true;
        }
        return "t".equals(str) && this.isIsOpen;
    }

    private void outputCell() {
        String str;
        switch (C199521.f111825xeb23638c[this.nextDataType.ordinal()]) {
            case 1:
                if (this.value.charAt(0) != '0') {
                    str = "TRUE";
                    break;
                } else {
                    str = "FALSE";
                    break;
                }
            case 2:
                str = "ERROR:" + ((Object) this.value);
                break;
            case 3:
                if (!this.formulasNotResults) {
                    str = this.value.toString();
                    if (this.formatString != null) {
                        try {
                            str = this.formatter.formatRawCellContents(Double.parseDouble(str), this.formatIndex, this.formatString);
                            break;
                        } catch (NumberFormatException unused) {
                            break;
                        }
                    }
                } else {
                    str = this.formula.toString();
                    break;
                }
                break;
            case 4:
                str = new XSSFRichTextString(this.value.toString()).toString();
                break;
            case 5:
                String sb = this.value.toString();
                if (sb.length() > 0) {
                    try {
                        str = this.sharedStringsTable.getItemAt(Integer.parseInt(sb)).toString();
                        break;
                    } catch (NumberFormatException e) {
                        LOG.atError().withThrowable(e).log("Failed to parse SST index '{}'", sb);
                    }
                }
                str = null;
                break;
            case 6:
                str = this.value.toString();
                if (this.formatString != null && str.length() > 0) {
                    str = this.formatter.formatRawCellContents(Double.parseDouble(str), this.formatIndex, this.formatString);
                    break;
                }
                break;
            default:
                str = "(TODO: Unexpected type: " + this.nextDataType + MotionUtils.f31762d;
                break;
        }
        checkForEmptyCellComments(EmptyCellCommentsCheckType.CELL);
        Comments comments = this.comments;
        this.output.cell(this.cellRef, str, comments != null ? comments.findCellComment(new CellAddress(this.cellRef)) : null);
    }

    private void outputEmptyCellComment(CellAddress cellAddress) {
        this.output.cell(cellAddress.formatAsString(), null, this.comments.findCellComment(cellAddress));
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        if (this.vIsOpen) {
            this.value.append(cArr, i, i2);
        }
        if (this.fIsOpen) {
            this.formula.append(cArr, i, i2);
        }
        if (this.hfIsOpen) {
            this.headerFooter.append(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        if (str == null || str.equals(XSSFRelation.NS_SPREADSHEETML)) {
            if (isTextTag(str2)) {
                this.vIsOpen = false;
                if (this.isIsOpen) {
                    return;
                }
                outputCell();
                this.value.setLength(0);
                return;
            }
            if (C6997f.f39671c.equals(str2)) {
                this.fIsOpen = false;
                return;
            }
            if ("is".equals(str2)) {
                this.isIsOpen = false;
                outputCell();
                this.value.setLength(0);
                return;
            }
            if ("row".equals(str2)) {
                checkForEmptyCellComments(EmptyCellCommentsCheckType.END_OF_ROW);
                this.output.endRow(this.rowNum);
                this.nextRowNum = this.rowNum + 1;
                return;
            }
            if ("sheetData".equals(str2)) {
                checkForEmptyCellComments(EmptyCellCommentsCheckType.END_OF_SHEET_DATA);
                this.output.endSheet();
                return;
            }
            if ("oddHeader".equals(str2) || "evenHeader".equals(str2) || "firstHeader".equals(str2)) {
                this.hfIsOpen = false;
                this.output.headerFooter(this.headerFooter.toString(), true, str2);
            } else if ("oddFooter".equals(str2) || "evenFooter".equals(str2) || "firstFooter".equals(str2)) {
                this.hfIsOpen = false;
                this.output.headerFooter(this.headerFooter.toString(), false, str2);
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (str == null || str.equals(XSSFRelation.NS_SPREADSHEETML)) {
            if (isTextTag(str2)) {
                this.vIsOpen = true;
                if (this.isIsOpen) {
                    return;
                }
                this.value.setLength(0);
                return;
            }
            if ("is".equals(str2)) {
                this.isIsOpen = true;
                return;
            }
            if (C6997f.f39671c.equals(str2)) {
                this.formula.setLength(0);
                this.nextDataType = xssfDataType.FORMULA;
                String value = attributes.getValue("t");
                if (value == null || !value.equals("shared")) {
                    this.fIsOpen = true;
                    return;
                }
                String value2 = attributes.getValue("ref");
                attributes.getValue("si");
                if (value2 != null) {
                    this.fIsOpen = true;
                    return;
                } else {
                    if (this.formulasNotResults) {
                        LOG.atWarn().log("shared formulas not yet supported!");
                        return;
                    }
                    return;
                }
            }
            if ("oddHeader".equals(str2) || "evenHeader".equals(str2) || "firstHeader".equals(str2) || "firstFooter".equals(str2) || "oddFooter".equals(str2) || "evenFooter".equals(str2)) {
                this.hfIsOpen = true;
                this.headerFooter.setLength(0);
                return;
            }
            if ("row".equals(str2)) {
                String value3 = attributes.getValue("r");
                if (value3 != null) {
                    this.rowNum = Integer.parseInt(value3) - 1;
                } else {
                    this.rowNum = this.nextRowNum;
                }
                this.output.startRow(this.rowNum);
                return;
            }
            if ("c".equals(str2)) {
                this.nextDataType = xssfDataType.NUMBER;
                this.formatIndex = (short) -1;
                XSSFCellStyle xSSFCellStyle = null;
                this.formatString = null;
                this.cellRef = attributes.getValue("r");
                String value4 = attributes.getValue("t");
                String value5 = attributes.getValue("s");
                if ("b".equals(value4)) {
                    this.nextDataType = xssfDataType.BOOLEAN;
                    return;
                }
                if ("e".equals(value4)) {
                    this.nextDataType = xssfDataType.ERROR;
                    return;
                }
                if ("inlineStr".equals(value4)) {
                    this.nextDataType = xssfDataType.INLINE_STRING;
                    return;
                }
                if ("s".equals(value4)) {
                    this.nextDataType = xssfDataType.SST_STRING;
                    return;
                }
                if (ExtensionNamespaceContext.EXSLT_STRING_PREFIX.equals(value4)) {
                    this.nextDataType = xssfDataType.FORMULA;
                    return;
                }
                Styles styles = this.stylesTable;
                if (styles != null) {
                    if (value5 != null) {
                        xSSFCellStyle = this.stylesTable.getStyleAt(Integer.parseInt(value5));
                    } else if (styles.getNumCellStyles() > 0) {
                        xSSFCellStyle = this.stylesTable.getStyleAt(0);
                    }
                }
                if (xSSFCellStyle != null) {
                    this.formatIndex = xSSFCellStyle.getDataFormat();
                    String dataFormatString = xSSFCellStyle.getDataFormatString();
                    this.formatString = dataFormatString;
                    if (dataFormatString == null) {
                        this.formatString = BuiltinFormats.getBuiltinFormat(this.formatIndex);
                    }
                }
            }
        }
    }

    public XSSFSheetXMLHandler(Styles styles, SharedStrings sharedStrings, SheetContentsHandler sheetContentsHandler, DataFormatter dataFormatter, boolean z) {
        this(styles, null, sharedStrings, sheetContentsHandler, dataFormatter, z);
    }

    public XSSFSheetXMLHandler(Styles styles, SharedStrings sharedStrings, SheetContentsHandler sheetContentsHandler, boolean z) {
        this(styles, sharedStrings, sheetContentsHandler, new DataFormatter(), z);
    }
}
