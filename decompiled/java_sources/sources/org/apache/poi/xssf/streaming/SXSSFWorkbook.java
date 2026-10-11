package org.apache.poi.xssf.streaming;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Spliterator;
import org.apache.commons.compress.archivers.zip.Zip64Mode;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.util.ZipArchiveThresholdInputStream;
import org.apache.poi.openxml4j.util.ZipEntrySource;
import org.apache.poi.openxml4j.util.ZipFileZipEntrySource;
import org.apache.poi.openxml4j.util.ZipInputStreamZipEntrySource;
import org.apache.poi.openxml4j.util.ZipSecureFile;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.EvaluationWorkbook;
import org.apache.poi.ss.formula.udf.UDFFinder;
import org.apache.poi.ss.usermodel.CellReferenceType;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Name;
import org.apache.poi.ss.usermodel.PictureData;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.SheetVisibility;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.NotImplemented;
import org.apache.poi.util.Removal;
import org.apache.poi.util.TempFile;
import org.apache.poi.xssf.model.SharedStringsTable;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFChartSheet;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.mortbay.jetty.HttpStatus;

/* loaded from: classes13.dex */
public class SXSSFWorkbook implements Workbook {
    public static final int DEFAULT_WINDOW_SIZE = 100;
    private static final Logger LOG = LogManager.getLogger((Class<?>) SXSSFWorkbook.class);
    private boolean _compressTmpFiles;
    private int _randomAccessWindowSize;
    protected final SharedStringsTable _sharedStringSource;
    private final Map<SXSSFSheet, XSSFSheet> _sxFromXHash;
    protected final XSSFWorkbook _wb;
    private final Map<XSSFSheet, SXSSFSheet> _xFromSxHash;
    private boolean shouldCalculateSheetDimensions;
    protected Zip64Mode zip64Mode;

    /* loaded from: classes13.dex */
    public interface ISheetInjector {
        void writeSheetData(OutputStream outputStream) throws IOException;
    }

    /* loaded from: classes13.dex */
    public final class SheetIterator<T extends Sheet> implements Iterator<T> {

        /* renamed from: it */
        private final Iterator<XSSFSheet> f111829it;

        public SheetIterator() {
            this.f111829it = SXSSFWorkbook.this._wb.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f111829it.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() throws IllegalStateException {
            throw new UnsupportedOperationException("remove method not supported on XSSFWorkbook.iterator(). Use Sheet.removeSheetAt(int) instead.");
        }

        @Override // java.util.Iterator
        public T next() throws NoSuchElementException {
            return SXSSFWorkbook.this.getSXSSFSheet(this.f111829it.next());
        }
    }

    public SXSSFWorkbook() {
        this((XSSFWorkbook) null);
    }

    private static void copyStreamAndInjectWorksheet(InputStream inputStream, OutputStream outputStream, ISheetInjector iSheetInjector) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, StandardCharsets.UTF_8);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, StandardCharsets.UTF_8);
        int i = 10;
        boolean z = true;
        int i2 = 0;
        String str = "<sheetData";
        while (true) {
            int read = inputStreamReader.read();
            if (read == -1) {
                break;
            }
            if (read == str.charAt(i2)) {
                i2++;
                if (i2 != i) {
                    continue;
                } else {
                    if (!"<sheetData".equals(str)) {
                        break;
                    }
                    int read2 = inputStreamReader.read();
                    if (read2 == -1) {
                        outputStreamWriter.write(str);
                        break;
                    }
                    if (read2 == 62) {
                        outputStreamWriter.write(str);
                        outputStreamWriter.write(read2);
                        i = 12;
                        i2 = 0;
                        z = false;
                        str = "</sheetData>";
                    } else {
                        if (read2 == 47) {
                            int read3 = inputStreamReader.read();
                            if (read3 == -1) {
                                outputStreamWriter.write(str);
                                break;
                            } else {
                                if (read3 == 62) {
                                    break;
                                }
                                outputStreamWriter.write(str);
                                outputStreamWriter.write(47);
                                outputStreamWriter.write(read3);
                            }
                        } else {
                            outputStreamWriter.write(str);
                            outputStreamWriter.write(47);
                            outputStreamWriter.write(read2);
                        }
                        i2 = 0;
                    }
                }
            } else {
                if (i2 > 0) {
                    outputStreamWriter.write(str, 0, i2);
                }
                if (read == str.charAt(0)) {
                    i2 = 1;
                } else {
                    outputStreamWriter.write(read);
                    i2 = 0;
                }
            }
        }
        outputStreamWriter.flush();
        if (z) {
            outputStreamWriter.write("<sheetData>\n");
            outputStreamWriter.flush();
        }
        iSheetInjector.writeSheetData(outputStream);
        outputStreamWriter.write("</sheetData>");
        outputStreamWriter.flush();
        while (true) {
            int read4 = inputStreamReader.read();
            if (read4 == -1) {
                outputStreamWriter.flush();
                return;
            }
            outputStreamWriter.write(read4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createSheetInjector$0(SXSSFSheet sXSSFSheet, OutputStream outputStream) throws IOException {
        InputStream worksheetXMLInputStream = sXSSFSheet.getWorksheetXMLInputStream();
        try {
            IOUtils.copy(worksheetXMLInputStream, outputStream);
            if (worksheetXMLInputStream != null) {
                worksheetXMLInputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (worksheetXMLInputStream != null) {
                    try {
                        worksheetXMLInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int addOlePackage(byte[] bArr, String str, String str2, String str3) throws IOException {
        return this._wb.addOlePackage(bArr, str, str2, str3);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int addPicture(byte[] bArr, int i) {
        return this._wb.addPicture(bArr, i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void addToolPack(UDFFinder uDFFinder) {
        this._wb.addToolPack(uDFFinder);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    @NotImplemented
    public Sheet cloneSheet(int i) {
        throw new IllegalStateException(HttpStatus.Not_Implemented);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        for (SXSSFSheet sXSSFSheet : this._xFromSxHash.values()) {
            try {
                SheetDataWriter sheetDataWriter = sXSSFSheet.getSheetDataWriter();
                if (sheetDataWriter != null) {
                    sheetDataWriter.close();
                }
            } catch (IOException e) {
                LOG.atWarn().withThrowable(e).log("An exception occurred while closing sheet data writer for sheet {}.", sXSSFSheet.getSheetName());
            }
        }
        this._wb.close();
    }

    public SXSSFSheet createAndRegisterSXSSFSheet(XSSFSheet xSSFSheet) {
        try {
            SXSSFSheet sXSSFSheet = new SXSSFSheet(this, xSSFSheet);
            registerSheetMapping(sXSSFSheet, xSSFSheet);
            return sXSSFSheet;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public ZipArchiveOutputStream createArchiveOutputStream(OutputStream outputStream) {
        if (Zip64Mode.Always.equals(this.zip64Mode)) {
            return new OpcZipArchiveOutputStream(outputStream);
        }
        ZipArchiveOutputStream zipArchiveOutputStream = new ZipArchiveOutputStream(outputStream);
        zipArchiveOutputStream.setUseZip64(this.zip64Mode);
        return zipArchiveOutputStream;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public CellStyle createCellStyle() {
        return this._wb.createCellStyle();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public DataFormat createDataFormat() {
        return this._wb.createDataFormat();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public EvaluationWorkbook createEvaluationWorkbook() {
        return SXSSFEvaluationWorkbook.create(this);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Font createFont() {
        return this._wb.createFont();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Name createName() {
        return this._wb.createName();
    }

    public SheetDataWriter createSheetDataWriter() throws IOException {
        return this._compressTmpFiles ? new GZIPSheetDataWriter(this._sharedStringSource) : new SheetDataWriter(this._sharedStringSource);
    }

    public ISheetInjector createSheetInjector(final SXSSFSheet sXSSFSheet) throws IOException {
        return new ISheetInjector() { // from class: com.sunia.HTREnginev2.j0m
            @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook.ISheetInjector
            public final void writeSheetData(OutputStream outputStream) {
                SXSSFWorkbook.lambda$createSheetInjector$0(SXSSFSheet.this, outputStream);
            }
        };
    }

    public void deregisterSheetMapping(XSSFSheet xSSFSheet) {
        SXSSFSheet sXSSFSheet = getSXSSFSheet(xSSFSheet);
        if (sXSSFSheet != null) {
            IOUtils.closeQuietly(sXSSFSheet.getSheetDataWriter());
            this._sxFromXHash.remove(sXSSFSheet);
            this._xFromSxHash.remove(xSSFSheet);
        }
    }

    public boolean dispose() {
        Iterator<SXSSFSheet> it2 = this._sxFromXHash.keySet().iterator();
        boolean z = true;
        while (it2.hasNext()) {
            boolean z2 = false;
            try {
                if (it2.next().dispose() && z) {
                    z2 = true;
                }
            } catch (IOException e) {
                LOG.atWarn().withThrowable(e).log("Failed to dispose sheet");
            }
            z = z2;
        }
        return z;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Font findFont(boolean z, short s, short s2, String str, boolean z2, boolean z3, short s3, byte b) {
        return this._wb.findFont(z, s, s2, str, z2, z3, s3, b);
    }

    public void flushSheets() throws IOException {
        for (SXSSFSheet sXSSFSheet : this._xFromSxHash.values()) {
            sXSSFSheet.deriveDimension();
            sXSSFSheet.flushRows();
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getActiveSheetIndex() {
        return this._wb.getActiveSheetIndex();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public List<? extends Name> getAllNames() {
        return this._wb.getAllNames();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public List<? extends PictureData> getAllPictures() {
        return this._wb.getAllPictures();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public CellReferenceType getCellReferenceType() {
        return getXSSFWorkbook().getCellReferenceType();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public CellStyle getCellStyleAt(int i) {
        return this._wb.getCellStyleAt(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public CreationHelper getCreationHelper() {
        return new SXSSFCreationHelper(this);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getFirstVisibleTab() {
        return this._wb.getFirstVisibleTab();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Font getFontAt(int i) {
        return this._wb.getFontAt(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public boolean getForceFormulaRecalculation() {
        return this._wb.getForceFormulaRecalculation();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Row.MissingCellPolicy getMissingCellPolicy() {
        return this._wb.getMissingCellPolicy();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Name getName(String str) {
        return this._wb.getName(str);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public List<? extends Name> getNames(String str) {
        return this._wb.getNames(str);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumCellStyles() {
        return this._wb.getNumCellStyles();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumberOfFonts() {
        return this._wb.getNumberOfFonts();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    @Removal(version = "6.0.0")
    @Deprecated
    public int getNumberOfFontsAsInt() {
        return getNumberOfFonts();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumberOfNames() {
        return this._wb.getNumberOfNames();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getNumberOfSheets() {
        return this._wb.getNumberOfSheets();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public String getPrintArea(int i) {
        return this._wb.getPrintArea(i);
    }

    public int getRandomAccessWindowSize() {
        return this._randomAccessWindowSize;
    }

    public SXSSFSheet getSXSSFSheet(XSSFSheet xSSFSheet) {
        return this._xFromSxHash.get(xSSFSheet);
    }

    @Internal
    public SharedStringsTable getSharedStringSource() {
        return this._sharedStringSource;
    }

    public XSSFSheet getSheetFromZipEntryName(String str) {
        for (XSSFSheet xSSFSheet : this._sxFromXHash.values()) {
            if (str.equals(xSSFSheet.getPackagePart().getPartName().getName().substring(1))) {
                return xSSFSheet;
            }
        }
        return null;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getSheetIndex(String str) {
        return this._wb.getSheetIndex(str);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public String getSheetName(int i) {
        return this._wb.getSheetName(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public SheetVisibility getSheetVisibility(int i) {
        return this._wb.getSheetVisibility(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public SpreadsheetVersion getSpreadsheetVersion() {
        return SpreadsheetVersion.EXCEL2007;
    }

    public XSSFSheet getXSSFSheet(SXSSFSheet sXSSFSheet) {
        return this._sxFromXHash.get(sXSSFSheet);
    }

    public XSSFWorkbook getXSSFWorkbook() {
        return this._wb;
    }

    public void injectData(ZipEntrySource zipEntrySource, OutputStream outputStream) throws IOException {
        ZipArchiveOutputStream createArchiveOutputStream = createArchiveOutputStream(outputStream);
        try {
            Enumeration<? extends ZipArchiveEntry> entries = zipEntrySource.getEntries();
            while (entries.hasMoreElements()) {
                ZipArchiveEntry nextElement = entries.nextElement();
                ZipArchiveEntry zipArchiveEntry = new ZipArchiveEntry(nextElement.getName());
                if (nextElement.getSize() >= 0) {
                    zipArchiveEntry.setSize(nextElement.getSize());
                }
                if (nextElement.getTime() >= 0) {
                    zipArchiveEntry.setTime(nextElement.getTime());
                }
                createArchiveOutputStream.putArchiveEntry(zipArchiveEntry);
                try {
                    InputStream inputStream = zipEntrySource.getInputStream(nextElement);
                    try {
                        if (inputStream instanceof ZipArchiveThresholdInputStream) {
                            ((ZipArchiveThresholdInputStream) inputStream).setGuardState(false);
                        }
                        XSSFSheet sheetFromZipEntryName = getSheetFromZipEntryName(nextElement.getName());
                        if (sheetFromZipEntryName == null || (sheetFromZipEntryName instanceof XSSFChartSheet)) {
                            IOUtils.copy(inputStream, createArchiveOutputStream);
                        } else {
                            copyStreamAndInjectWorksheet(inputStream, createArchiveOutputStream, createSheetInjector(getSXSSFSheet(sheetFromZipEntryName)));
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } finally {
                    }
                } finally {
                    createArchiveOutputStream.closeArchiveEntry();
                }
            }
        } finally {
            createArchiveOutputStream.finish();
            zipEntrySource.close();
        }
    }

    public boolean isCompressTempFiles() {
        return this._compressTmpFiles;
    }

    public boolean isDate1904() {
        return this._wb.isDate1904();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    @NotImplemented("XSSFWorkbook#isHidden is not implemented")
    public boolean isHidden() {
        return this._wb.isHidden();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public boolean isSheetHidden(int i) {
        return this._wb.isSheetHidden(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public boolean isSheetVeryHidden(int i) {
        return this._wb.isSheetVeryHidden(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    @NotImplemented
    public int linkExternalWorkbook(String str, Workbook workbook) {
        throw new IllegalStateException(HttpStatus.Not_Implemented);
    }

    public void registerSheetMapping(SXSSFSheet sXSSFSheet, XSSFSheet xSSFSheet) {
        this._sxFromXHash.put(sXSSFSheet, xSSFSheet);
        this._xFromSxHash.put(xSSFSheet, sXSSFSheet);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void removeName(Name name) {
        this._wb.removeName(name);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void removePrintArea(int i) {
        this._wb.removePrintArea(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void removeSheetAt(int i) {
        XSSFSheet sheetAt = this._wb.getSheetAt(i);
        SXSSFSheet sXSSFSheet = getSXSSFSheet(sheetAt);
        this._wb.removeSheetAt(i);
        deregisterSheetMapping(sheetAt);
        try {
            sXSSFSheet.dispose();
        } catch (IOException e) {
            LOG.atWarn().withThrowable(e).log("Failed to dispose old sheet");
        }
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setActiveSheet(int i) {
        this._wb.setActiveSheet(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setCellReferenceType(CellReferenceType cellReferenceType) {
        getXSSFWorkbook().setCellReferenceType(cellReferenceType);
    }

    public void setCompressTempFiles(boolean z) {
        this._compressTmpFiles = z;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setFirstVisibleTab(int i) {
        this._wb.setFirstVisibleTab(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setForceFormulaRecalculation(boolean z) {
        this._wb.setForceFormulaRecalculation(z);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    @NotImplemented("XSSFWorkbook#setHidden is not implemented")
    public void setHidden(boolean z) {
        this._wb.setHidden(z);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setMissingCellPolicy(Row.MissingCellPolicy missingCellPolicy) {
        this._wb.setMissingCellPolicy(missingCellPolicy);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setPrintArea(int i, String str) {
        this._wb.setPrintArea(i, str);
    }

    public void setRandomAccessWindowSize(int i) {
        if (i == 0 || i < -1) {
            throw new IllegalArgumentException("rowAccessWindowSize must be greater than 0 or -1");
        }
        this._randomAccessWindowSize = i;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSelectedTab(int i) {
        this._wb.setSelectedTab(i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSheetHidden(int i, boolean z) {
        this._wb.setSheetHidden(i, z);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSheetName(int i, String str) {
        this._wb.setSheetName(i, str);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSheetOrder(String str, int i) {
        this._wb.setSheetOrder(str, i);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setSheetVisibility(int i, SheetVisibility sheetVisibility) {
        this._wb.setSheetVisibility(i, sheetVisibility);
    }

    public void setShouldCalculateSheetDimensions(boolean z) {
        this.shouldCalculateSheetDimensions = z;
    }

    public void setZip64Mode(Zip64Mode zip64Mode) {
        this.zip64Mode = zip64Mode;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public Iterator<Sheet> sheetIterator() {
        return new SheetIterator();
    }

    public boolean shouldCalculateSheetDimensions() {
        return this.shouldCalculateSheetDimensions;
    }

    @Override // org.apache.poi.ss.usermodel.Workbook, java.lang.Iterable
    public Spliterator<Sheet> spliterator() {
        return this._wb.spliterator();
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void write(OutputStream outputStream) throws IOException {
        flushSheets();
        File createTempFile = TempFile.createTempFile("poi-sxssf-template", ".xlsx");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            try {
                this._wb.write(fileOutputStream);
                fileOutputStream.close();
                ZipSecureFile zipSecureFile = new ZipSecureFile(createTempFile);
                try {
                    ZipFileZipEntrySource zipFileZipEntrySource = new ZipFileZipEntrySource(zipSecureFile);
                    try {
                        injectData(zipFileZipEntrySource, outputStream);
                        zipFileZipEntrySource.close();
                        zipSecureFile.close();
                        if (createTempFile.delete()) {
                            return;
                        }
                        throw new IOException("Could not delete temporary file after processing: " + createTempFile);
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } finally {
            createTempFile.delete();
        }
    }

    public void writeAvoidingTempFiles(OutputStream outputStream) throws IOException {
        flushSheets();
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            this._wb.write(unsynchronizedByteArrayOutputStream);
            InputStream inputStream = unsynchronizedByteArrayOutputStream.toInputStream();
            try {
                ZipArchiveInputStream zipArchiveInputStream = new ZipArchiveInputStream(inputStream);
                try {
                    ZipInputStreamZipEntrySource zipInputStreamZipEntrySource = new ZipInputStreamZipEntrySource(new ZipArchiveThresholdInputStream(zipArchiveInputStream));
                    try {
                        injectData(zipInputStreamZipEntrySource, outputStream);
                        zipInputStreamZipEntrySource.close();
                        zipArchiveInputStream.close();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        unsynchronizedByteArrayOutputStream.close();
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public SXSSFWorkbook(XSSFWorkbook xSSFWorkbook) {
        this(xSSFWorkbook, 100);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public SXSSFSheet getSheet(String str) {
        return getSXSSFSheet(this._wb.getSheet(str));
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public SXSSFSheet getSheetAt(int i) {
        return getSXSSFSheet(this._wb.getSheetAt(i));
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public int getSheetIndex(Sheet sheet) {
        return this._wb.getSheetIndex(getXSSFSheet((SXSSFSheet) sheet));
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public void setPrintArea(int i, int i2, int i3, int i4, int i5) {
        this._wb.setPrintArea(i, i2, i3, i4, i5);
    }

    public SXSSFWorkbook(XSSFWorkbook xSSFWorkbook, int i) {
        this(xSSFWorkbook, i, false);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public SXSSFSheet createSheet() {
        return createAndRegisterSXSSFSheet(this._wb.createSheet());
    }

    public SXSSFWorkbook(XSSFWorkbook xSSFWorkbook, int i, boolean z) {
        this(xSSFWorkbook, i, z, false);
    }

    @Override // org.apache.poi.ss.usermodel.Workbook
    public SXSSFSheet createSheet(String str) {
        return createAndRegisterSXSSFSheet(this._wb.createSheet(str));
    }

    public SXSSFWorkbook(XSSFWorkbook xSSFWorkbook, int i, boolean z, boolean z2) {
        this._sxFromXHash = new HashMap();
        this._xFromSxHash = new HashMap();
        this._randomAccessWindowSize = 100;
        this.zip64Mode = Zip64Mode.Always;
        this.shouldCalculateSheetDimensions = true;
        setRandomAccessWindowSize(i);
        setCompressTempFiles(z);
        if (xSSFWorkbook == null) {
            XSSFWorkbook xSSFWorkbook2 = new XSSFWorkbook();
            this._wb = xSSFWorkbook2;
            this._sharedStringSource = z2 ? xSSFWorkbook2.getSharedStringSource() : null;
        } else {
            this._wb = xSSFWorkbook;
            this._sharedStringSource = z2 ? xSSFWorkbook.getSharedStringSource() : null;
            Iterator<Sheet> it2 = xSSFWorkbook.iterator();
            while (it2.hasNext()) {
                createAndRegisterSXSSFSheet((XSSFSheet) it2.next());
            }
        }
    }

    public SXSSFWorkbook(int i) {
        this(null, i);
    }
}
