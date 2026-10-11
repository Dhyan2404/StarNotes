package org.apache.poi.xssf.streaming;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.util.NotImplemented;
import org.apache.poi.xssf.streaming.DeferredSXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/* loaded from: classes13.dex */
public class DeferredSXSSFWorkbook extends SXSSFWorkbook {
    private static final Logger LOG = LogManager.getLogger((Class<?>) DeferredSXSSFWorkbook.class);

    public DeferredSXSSFWorkbook() {
        this((XSSFWorkbook) null);
    }

    @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook
    public SXSSFSheet createAndRegisterSXSSFSheet(XSSFSheet xSSFSheet) {
        try {
            DeferredSXSSFSheet deferredSXSSFSheet = new DeferredSXSSFSheet(this, xSSFSheet);
            registerSheetMapping(deferredSXSSFSheet, xSSFSheet);
            return deferredSXSSFSheet;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook
    @NotImplemented
    public SheetDataWriter createSheetDataWriter() throws IOException {
        throw new IllegalStateException("Not supported by DeferredSXSSFWorkbook");
    }

    @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook
    public SXSSFWorkbook.ISheetInjector createSheetInjector(SXSSFSheet sXSSFSheet) throws IOException {
        final DeferredSXSSFSheet deferredSXSSFSheet = (DeferredSXSSFSheet) sXSSFSheet;
        return new SXSSFWorkbook.ISheetInjector() { // from class: com.sunia.HTREnginev2.l1f
            @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook.ISheetInjector
            public final void writeSheetData(OutputStream outputStream) {
                DeferredSXSSFSheet.this.writeRows(outputStream);
            }
        };
    }

    public DeferredSXSSFSheet getStreamingSheet(String str) {
        XSSFSheet sheet = this._wb.getSheet(str);
        DeferredSXSSFSheet deferredSXSSFSheet = (DeferredSXSSFSheet) getSXSSFSheet(sheet);
        return (deferredSXSSFSheet != null || sheet == null) ? deferredSXSSFSheet : (DeferredSXSSFSheet) createAndRegisterSXSSFSheet(sheet);
    }

    public DeferredSXSSFSheet getStreamingSheetAt(int i) {
        XSSFSheet sheetAt = this._wb.getSheetAt(i);
        SXSSFSheet sXSSFSheet = getSXSSFSheet(sheetAt);
        return (sXSSFSheet != null || sheetAt == null) ? (DeferredSXSSFSheet) sXSSFSheet : (DeferredSXSSFSheet) createAndRegisterSXSSFSheet(sheetAt);
    }

    public XSSFSheet getXSSFSheet(String str) {
        return this._wb.getSheet(str);
    }

    @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook, org.apache.poi.ss.usermodel.Workbook
    public void removeSheetAt(int i) {
        XSSFSheet sheetAt = this._wb.getSheetAt(i);
        SXSSFSheet sXSSFSheet = getSXSSFSheet(sheetAt);
        this._wb.removeSheetAt(i);
        if (sXSSFSheet != null) {
            deregisterSheetMapping(sheetAt);
            try {
                sXSSFSheet.dispose();
            } catch (IOException e) {
                LOG.atWarn().withThrowable(e).log("Failed to cleanup old sheet");
            }
        }
    }

    @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook, org.apache.poi.ss.usermodel.Workbook
    public Iterator<Sheet> sheetIterator() {
        return new SXSSFWorkbook.SheetIterator();
    }

    public DeferredSXSSFWorkbook(int i) {
        this(null, i);
    }

    public StreamingSheetWriter createSheetDataWriter(OutputStream outputStream) throws IOException {
        return new StreamingSheetWriter(outputStream);
    }

    public DeferredSXSSFWorkbook(XSSFWorkbook xSSFWorkbook) {
        this(xSSFWorkbook, 100);
    }

    public DeferredSXSSFWorkbook(XSSFWorkbook xSSFWorkbook, int i) {
        super(xSSFWorkbook, i, false, false);
    }

    @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook, org.apache.poi.ss.usermodel.Workbook
    public DeferredSXSSFSheet createSheet() {
        return (DeferredSXSSFSheet) super.createSheet();
    }

    @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook, org.apache.poi.ss.usermodel.Workbook
    public DeferredSXSSFSheet createSheet(String str) {
        return (DeferredSXSSFSheet) super.createSheet(str);
    }
}
