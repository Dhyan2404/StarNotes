package org.apache.poi.xssf.streaming;

import androidx.appcompat.widget.ActivityChooserModel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.FormulaError;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.util.Removal;
import org.apache.poi.util.TempFile;
import org.apache.poi.xssf.model.SharedStringsTable;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType;

/* loaded from: classes13.dex */
public class SheetDataWriter implements Closeable {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SheetDataWriter.class);
    private final File _fd;
    private int _lowestIndexOfFlushedRows;
    private int _numberLastFlushedRow;
    private int _numberOfCellsOfLastFlushedRow;
    private int _numberOfFlushedRows;
    protected final Writer _out;
    private int _rownum;
    private SharedStringsTable _sharedStringSource;

    /* renamed from: org.apache.poi.xssf.streaming.SheetDataWriter$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199581 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

        static {
            int[] iArr = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr;
            try {
                iArr[CellType.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BLANK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.FORMULA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public SheetDataWriter() throws IOException {
        this._numberLastFlushedRow = -1;
        File createTempFile = createTempFile();
        this._fd = createTempFile;
        this._out = createWriter(createTempFile);
    }

    public static boolean replaceWithQuestionMark(char c) {
        return c < ' ' || (65534 <= c && c <= 65535);
    }

    private void writeAttribute(String str, String str2) throws IOException {
        this._out.write(32);
        this._out.write(str);
        this._out.write("=\"");
        this._out.write(str2);
        this._out.write(34);
    }

    public void beginRow(int i, SXSSFRow sXSSFRow) throws IOException {
        this._out.write("<row");
        writeAttribute("r", Integer.toString(i + 1));
        if (sXSSFRow.hasCustomHeight()) {
            writeAttribute("customHeight", "true");
            writeAttribute("ht", Float.toString(sXSSFRow.getHeightInPoints()));
        }
        if (sXSSFRow.getZeroHeight()) {
            writeAttribute(CellUtil.HIDDEN, "true");
        }
        if (sXSSFRow.isFormatted()) {
            writeAttribute("s", Integer.toString(sXSSFRow.getRowStyleIndex()));
            writeAttribute("customFormat", "1");
        }
        if (sXSSFRow.getOutlineLevel() != 0) {
            writeAttribute("outlineLevel", Integer.toString(sXSSFRow.getOutlineLevel()));
        }
        if (sXSSFRow.getHidden() != null) {
            writeAttribute(CellUtil.HIDDEN, sXSSFRow.getHidden().booleanValue() ? "1" : "0");
        }
        if (sXSSFRow.getCollapsed() != null) {
            writeAttribute("collapsed", sXSSFRow.getCollapsed().booleanValue() ? "1" : "0");
        }
        this._out.write(">\n");
        this._rownum = i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this._out.close();
    }

    @Removal(version = "6.0.0")
    public File createTempFile() throws IOException {
        return TempFile.createTempFile("poi-sxssf-sheet", ActivityChooserModel.f1436y);
    }

    @Removal(version = "6.0.0")
    public Writer createWriter(File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            return new BufferedWriter(new OutputStreamWriter(decorateOutputStream(fileOutputStream), StandardCharsets.UTF_8));
        } catch (IOException e) {
            fileOutputStream.close();
            throw e;
        }
    }

    public InputStream decorateInputStream(FileInputStream fileInputStream) throws IOException {
        return fileInputStream;
    }

    public OutputStream decorateOutputStream(FileOutputStream fileOutputStream) throws IOException {
        return fileOutputStream;
    }

    public boolean dispose() throws IOException {
        File file;
        try {
            this._out.close();
            return file.delete();
        } finally {
            this._fd.delete();
        }
    }

    public void endRow() throws IOException {
        this._out.write("</row>\n");
    }

    public void flush() throws IOException {
        this._out.flush();
    }

    public int getLastFlushedRow() {
        return this._numberLastFlushedRow;
    }

    public int getLowestIndexOfFlushedRows() {
        return this._lowestIndexOfFlushedRows;
    }

    public int getNumberOfCellsOfLastFlushedRow() {
        return this._numberOfCellsOfLastFlushedRow;
    }

    public int getNumberOfFlushedRows() {
        return this._numberOfFlushedRows;
    }

    public File getTempFile() {
        return this._fd;
    }

    public InputStream getWorksheetXMLInputStream() throws IOException {
        File tempFile = getTempFile();
        if (tempFile == null) {
            throw new IOException("getWorksheetXMLInputStream only works when a temp file is used");
        }
        FileInputStream fileInputStream = new FileInputStream(tempFile);
        try {
            return decorateInputStream(fileInputStream);
        } catch (IOException e) {
            fileInputStream.close();
            throw e;
        }
    }

    public boolean hasLeadingTrailingSpaces(String str) {
        if (str == null || str.length() <= 0) {
            return false;
        }
        return Character.isWhitespace(str.charAt(0)) || Character.isWhitespace(str.charAt(str.length() - 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0083 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void outputEscapedString(java.lang.String r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.xssf.streaming.SheetDataWriter.outputEscapedString(java.lang.String):void");
    }

    public void writeCell(int i, Cell cell) throws IOException {
        if (cell == null) {
            return;
        }
        String formatAsString = new CellReference(this._rownum, i).formatAsString();
        this._out.write("<c");
        writeAttribute("r", formatAsString);
        CellStyle cellStyle = cell.getCellStyle();
        if (cellStyle.getIndex() != 0) {
            writeAttribute("s", Integer.toString(cellStyle.getIndex() & 65535));
        }
        CellType cellType = cell.getCellType();
        int[] iArr = C199581.$SwitchMap$org$apache$poi$ss$usermodel$CellType;
        switch (iArr[cellType.ordinal()]) {
            case 1:
                writeAttribute("t", GoogleApiAvailabilityLight.f29016b);
                this._out.write("><v>");
                this._out.write(Double.toString(cell.getNumericCellValue()));
                this._out.write("</v>");
                break;
            case 2:
                if (this._sharedStringSource == null) {
                    writeAttribute("t", "inlineStr");
                    this._out.write("><is><t");
                    if (hasLeadingTrailingSpaces(cell.getStringCellValue())) {
                        writeAttribute(Constants.ATTRNAME_XMLSPACE, "preserve");
                    }
                    this._out.write(">");
                    outputEscapedString(cell.getStringCellValue());
                    this._out.write("</t></is>");
                    break;
                } else {
                    int addSharedStringItem = this._sharedStringSource.addSharedStringItem(cell.getRichStringCellValue());
                    writeAttribute("t", STCellType.f115792S.toString());
                    this._out.write("><v>");
                    this._out.write(String.valueOf(addSharedStringItem));
                    this._out.write("</v>");
                    break;
                }
            case 3:
                writeAttribute("t", "b");
                this._out.write("><v>");
                this._out.write(cell.getBooleanCellValue() ? "1" : "0");
                this._out.write("</v>");
                break;
            case 4:
                FormulaError forInt = FormulaError.forInt(cell.getErrorCellValue());
                writeAttribute("t", "e");
                this._out.write("><v>");
                outputEscapedString(forInt.getString());
                this._out.write("</v>");
                break;
            case 5:
                this._out.write(62);
                break;
            case 6:
                int i2 = iArr[cell.getCachedFormulaResultType().ordinal()];
                if (i2 == 1) {
                    writeAttribute("t", GoogleApiAvailabilityLight.f29016b);
                } else if (i2 == 2) {
                    writeAttribute("t", STCellType.STR.toString());
                } else if (i2 == 3) {
                    writeAttribute("t", "b");
                } else if (i2 == 4) {
                    writeAttribute("t", "e");
                }
                this._out.write("><f>");
                outputEscapedString(cell.getCellFormula());
                this._out.write("</f>");
                int i3 = iArr[cell.getCachedFormulaResultType().ordinal()];
                if (i3 == 1) {
                    double numericCellValue = cell.getNumericCellValue();
                    if (!Double.isNaN(numericCellValue)) {
                        this._out.write("<v>");
                        this._out.write(Double.toString(numericCellValue));
                        this._out.write("</v>");
                        break;
                    }
                } else if (i3 == 2) {
                    String stringCellValue = cell.getStringCellValue();
                    if (stringCellValue != null && !stringCellValue.isEmpty()) {
                        this._out.write("<v>");
                        outputEscapedString(stringCellValue);
                        this._out.write("</v>");
                        break;
                    }
                } else if (i3 == 3) {
                    this._out.write("><v>");
                    this._out.write(cell.getBooleanCellValue() ? "1" : "0");
                    this._out.write("</v>");
                    break;
                } else if (i3 == 4) {
                    FormulaError forInt2 = FormulaError.forInt(cell.getErrorCellValue());
                    this._out.write("><v>");
                    outputEscapedString(forInt2.getString());
                    this._out.write("</v>");
                    break;
                }
                break;
            default:
                throw new IllegalStateException("Invalid cell type: " + cellType);
        }
        this._out.write("</c>");
    }

    public void writeRow(int i, SXSSFRow sXSSFRow) throws IOException {
        if (this._numberOfFlushedRows == 0) {
            this._lowestIndexOfFlushedRows = i;
        }
        this._numberLastFlushedRow = Math.max(i, this._numberLastFlushedRow);
        this._numberOfCellsOfLastFlushedRow = sXSSFRow.getLastCellNum();
        this._numberOfFlushedRows++;
        beginRow(i, sXSSFRow);
        Iterator<Cell> allCellsIterator = sXSSFRow.allCellsIterator();
        int i2 = 0;
        while (allCellsIterator.hasNext()) {
            writeCell(i2, allCellsIterator.next());
            i2++;
        }
        endRow();
    }

    public SheetDataWriter(Writer writer) throws IOException {
        this._numberLastFlushedRow = -1;
        this._fd = null;
        this._out = writer;
    }

    public SheetDataWriter(SharedStringsTable sharedStringsTable) throws IOException {
        this();
        this._sharedStringSource = sharedStringsTable;
    }
}
