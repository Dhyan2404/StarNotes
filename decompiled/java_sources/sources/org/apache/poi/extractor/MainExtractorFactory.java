package org.apache.poi.extractor;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import org.apache.poi.hssf.extractor.EventBasedExcelExtractor;
import org.apache.poi.hssf.extractor.ExcelExtractor;
import org.apache.poi.hssf.extractor.OldExcelExtractor;
import org.apache.poi.hssf.model.InternalWorkbook;
import org.apache.poi.hssf.record.crypto.Biff8EncryptionKey;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public class MainExtractorFactory implements ExtractorProvider {
    @Override // org.apache.poi.extractor.ExtractorProvider
    public boolean accepts(FileMagic fileMagic) {
        return FileMagic.OLE2 == fileMagic;
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public POITextExtractor create(File file, String str) throws IOException {
        return create(new POIFSFileSystem(file, true).getRoot(), str);
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public POITextExtractor create(InputStream inputStream, String str) throws IOException {
        return create(new POIFSFileSystem(inputStream).getRoot(), str);
    }

    @Override // org.apache.poi.extractor.ExtractorProvider
    public POITextExtractor create(DirectoryNode directoryNode, String str) throws IOException {
        String currentUserPassword = Biff8EncryptionKey.getCurrentUserPassword();
        try {
            Biff8EncryptionKey.setCurrentUserPassword(str);
            Iterator<String> it2 = InternalWorkbook.WORKBOOK_DIR_ENTRY_NAMES.iterator();
            while (it2.hasNext()) {
                if (directoryNode.hasEntry(it2.next())) {
                    return ExtractorFactory.getPreferEventExtractor() ? new EventBasedExcelExtractor(directoryNode) : new ExcelExtractor(directoryNode);
                }
            }
            if (directoryNode.hasEntry(InternalWorkbook.OLD_WORKBOOK_DIR_ENTRY_NAME)) {
                return new OldExcelExtractor(directoryNode);
            }
            Biff8EncryptionKey.setCurrentUserPassword(currentUserPassword);
            return null;
        } finally {
            Biff8EncryptionKey.setCurrentUserPassword(currentUserPassword);
        }
    }
}
