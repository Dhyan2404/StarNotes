package org.apache.poi.hssf.usermodel;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.hssf.record.crypto.Biff8EncryptionKey;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookProvider;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class HSSFWorkbookFactory implements WorkbookProvider {
    public static HSSFWorkbook createWorkbook(POIFSFileSystem pOIFSFileSystem) throws IOException {
        return new HSSFWorkbook(pOIFSFileSystem);
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public boolean accepts(FileMagic fileMagic) {
        return FileMagic.OLE2 == fileMagic;
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public HSSFWorkbook create() {
        return new HSSFWorkbook();
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public HSSFWorkbook create(DirectoryNode directoryNode, String str) throws IOException {
        boolean z;
        if (str != null) {
            Biff8EncryptionKey.setCurrentUserPassword(str);
            z = true;
        } else {
            z = false;
        }
        try {
            return new HSSFWorkbook(directoryNode, true);
        } finally {
            if (z) {
                Biff8EncryptionKey.setCurrentUserPassword(null);
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public Workbook create(InputStream inputStream) throws IOException {
        return create(inputStream, (String) null);
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public Workbook create(InputStream inputStream, String str) throws IOException {
        return create(new POIFSFileSystem(inputStream).getRoot(), str);
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public Workbook create(File file, String str, boolean z) throws IOException {
        boolean z2;
        if (str != null) {
            Biff8EncryptionKey.setCurrentUserPassword(str);
            z2 = true;
        } else {
            z2 = false;
        }
        try {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(file, z);
            try {
                return new HSSFWorkbook(pOIFSFileSystem, true);
            } catch (RuntimeException e) {
                pOIFSFileSystem.close();
                throw e;
            }
        } finally {
            if (z2) {
                Biff8EncryptionKey.setCurrentUserPassword(null);
            }
        }
    }
}
