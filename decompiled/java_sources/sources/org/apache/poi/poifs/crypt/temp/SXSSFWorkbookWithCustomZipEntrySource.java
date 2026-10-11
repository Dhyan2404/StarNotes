package org.apache.poi.poifs.crypt.temp;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.apache.poi.xssf.streaming.SheetDataWriter;

/* loaded from: classes12.dex */
public class SXSSFWorkbookWithCustomZipEntrySource extends SXSSFWorkbook {
    private static final Logger LOG = LogManager.getLogger((Class<?>) SXSSFWorkbookWithCustomZipEntrySource.class);

    public SXSSFWorkbookWithCustomZipEntrySource() {
        super(20);
        setCompressTempFiles(true);
    }

    @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook
    public SheetDataWriter createSheetDataWriter() throws IOException {
        Logger logger = LOG;
        logger.atInfo().log("isCompressTempFiles: {}", Unbox.box(isCompressTempFiles()));
        logger.atInfo().log("SharedStringSource: {}", getSharedStringSource());
        return new SheetDataWriterWithDecorator();
    }

    @Override // org.apache.poi.xssf.streaming.SXSSFWorkbook, org.apache.poi.ss.usermodel.Workbook
    public void write(OutputStream outputStream) throws IOException {
        flushSheets();
        EncryptedTempData encryptedTempData = new EncryptedTempData();
        AesZipFileZipEntrySource aesZipFileZipEntrySource = null;
        try {
            OutputStream outputStream2 = encryptedTempData.getOutputStream();
            try {
                getXSSFWorkbook().write(outputStream2);
                if (outputStream2 != null) {
                    outputStream2.close();
                }
                InputStream inputStream = encryptedTempData.getInputStream();
                try {
                    aesZipFileZipEntrySource = AesZipFileZipEntrySource.createZipEntrySource(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    injectData(aesZipFileZipEntrySource, outputStream);
                } finally {
                }
            } finally {
            }
        } finally {
            encryptedTempData.dispose();
            IOUtils.closeQuietly(aesZipFileZipEntrySource);
        }
    }
}
