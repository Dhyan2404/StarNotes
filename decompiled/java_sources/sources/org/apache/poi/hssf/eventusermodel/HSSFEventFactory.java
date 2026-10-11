package org.apache.poi.hssf.eventusermodel;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Set;
import org.apache.poi.hssf.model.InternalWorkbook;
import org.apache.poi.hssf.record.Record;
import org.apache.poi.hssf.record.RecordFactoryInputStream;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public class HSSFEventFactory {
    private short genericProcessEvents(HSSFRequest hSSFRequest, InputStream inputStream) throws HSSFUserException {
        short s = 0;
        RecordFactoryInputStream recordFactoryInputStream = new RecordFactoryInputStream(inputStream, false);
        do {
            Record nextRecord = recordFactoryInputStream.nextRecord();
            if (nextRecord == null) {
                break;
            }
            s = hSSFRequest.processRecord(nextRecord);
        } while (s == 0);
        return s;
    }

    public short abortableProcessEvents(HSSFRequest hSSFRequest, InputStream inputStream) throws HSSFUserException {
        return genericProcessEvents(hSSFRequest, inputStream);
    }

    public short abortableProcessWorkbookEvents(HSSFRequest hSSFRequest, POIFSFileSystem pOIFSFileSystem) throws IOException, HSSFUserException {
        return abortableProcessWorkbookEvents(hSSFRequest, pOIFSFileSystem.getRoot());
    }

    public void processEvents(HSSFRequest hSSFRequest, InputStream inputStream) {
        try {
            genericProcessEvents(hSSFRequest, inputStream);
        } catch (HSSFUserException unused) {
        }
    }

    public void processWorkbookEvents(HSSFRequest hSSFRequest, POIFSFileSystem pOIFSFileSystem) throws IOException {
        processWorkbookEvents(hSSFRequest, pOIFSFileSystem.getRoot());
    }

    public short abortableProcessWorkbookEvents(HSSFRequest hSSFRequest, DirectoryNode directoryNode) throws IOException, HSSFUserException {
        DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream("Workbook");
        try {
            short abortableProcessEvents = abortableProcessEvents(hSSFRequest, createDocumentInputStream);
            if (createDocumentInputStream != null) {
                createDocumentInputStream.close();
            }
            return abortableProcessEvents;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (createDocumentInputStream != null) {
                    try {
                        createDocumentInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void processWorkbookEvents(HSSFRequest hSSFRequest, DirectoryNode directoryNode) throws IOException {
        String str;
        Set<String> entryNames = directoryNode.getEntryNames();
        Iterator<String> it2 = InternalWorkbook.WORKBOOK_DIR_ENTRY_NAMES.iterator();
        while (true) {
            if (!it2.hasNext()) {
                str = null;
                break;
            } else {
                str = it2.next();
                if (entryNames.contains(str)) {
                    break;
                }
            }
        }
        if (str == null) {
            str = InternalWorkbook.WORKBOOK_DIR_ENTRY_NAMES.get(0);
        }
        DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream(str);
        try {
            processEvents(hSSFRequest, createDocumentInputStream);
            if (createDocumentInputStream != null) {
                createDocumentInputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (createDocumentInputStream != null) {
                    try {
                        createDocumentInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}
