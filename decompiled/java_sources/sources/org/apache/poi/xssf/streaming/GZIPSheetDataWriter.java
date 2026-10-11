package org.apache.poi.xssf.streaming;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.poi.util.Removal;
import org.apache.poi.util.TempFile;
import org.apache.poi.xssf.model.SharedStringsTable;

/* loaded from: classes13.dex */
public class GZIPSheetDataWriter extends SheetDataWriter {
    public GZIPSheetDataWriter() throws IOException {
    }

    @Override // org.apache.poi.xssf.streaming.SheetDataWriter
    @Removal(version = "6.0.0")
    @Deprecated
    public File createTempFile() throws IOException {
        return TempFile.createTempFile("poi-sxssf-sheet-xml", ".gz");
    }

    @Override // org.apache.poi.xssf.streaming.SheetDataWriter
    public InputStream decorateInputStream(FileInputStream fileInputStream) throws IOException {
        return new GZIPInputStream(fileInputStream);
    }

    @Override // org.apache.poi.xssf.streaming.SheetDataWriter
    public OutputStream decorateOutputStream(FileOutputStream fileOutputStream) throws IOException {
        return new GZIPOutputStream(fileOutputStream);
    }

    public GZIPSheetDataWriter(SharedStringsTable sharedStringsTable) throws IOException {
        super(sharedStringsTable);
    }
}
