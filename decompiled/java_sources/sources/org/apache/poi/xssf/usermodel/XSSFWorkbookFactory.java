package org.apache.poi.xssf.usermodel;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackageAccess;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentFactoryHelper;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookProvider;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public class XSSFWorkbookFactory implements WorkbookProvider {
    public static XSSFWorkbook createWorkbook(OPCPackage oPCPackage) throws IOException {
        try {
            return new XSSFWorkbook(oPCPackage);
        } catch (RuntimeException e) {
            oPCPackage.revert();
            throw e;
        }
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public boolean accepts(FileMagic fileMagic) {
        return fileMagic == FileMagic.OOXML;
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public XSSFWorkbook create() {
        return new XSSFWorkbook();
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public XSSFWorkbook create(DirectoryNode directoryNode, String str) throws IOException {
        InputStream decryptedStream = DocumentFactoryHelper.getDecryptedStream(directoryNode, str);
        try {
            XSSFWorkbook create = create(decryptedStream);
            if (decryptedStream != null) {
                decryptedStream.close();
            }
            return create;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (decryptedStream != null) {
                    try {
                        decryptedStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public Workbook create(InputStream inputStream, String str) throws IOException {
        InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(inputStream);
        FileMagic valueOf = FileMagic.valueOf(prepareToCheckMagic);
        if (valueOf == FileMagic.OLE2) {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(prepareToCheckMagic);
            try {
                InputStream decryptedStream = DocumentFactoryHelper.getDecryptedStream(pOIFSFileSystem.getRoot(), str);
                try {
                    XSSFWorkbook create = create(decryptedStream);
                    if (decryptedStream != null) {
                        decryptedStream.close();
                    }
                    pOIFSFileSystem.close();
                    return create;
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        pOIFSFileSystem.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } else {
            if (valueOf == FileMagic.OOXML) {
                return create(prepareToCheckMagic);
            }
            return null;
        }
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public XSSFWorkbook create(InputStream inputStream) throws IOException {
        try {
            return createWorkbook(OPCPackage.open(inputStream));
        } catch (InvalidFormatException e) {
            throw new IOException(e);
        }
    }

    @Override // org.apache.poi.ss.usermodel.WorkbookProvider
    public XSSFWorkbook create(File file, String str, boolean z) throws IOException {
        if (FileMagic.valueOf(file) == FileMagic.OLE2) {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(file, true);
            try {
                InputStream decryptedStream = DocumentFactoryHelper.getDecryptedStream(pOIFSFileSystem.getRoot(), str);
                try {
                    XSSFWorkbook create = create(decryptedStream);
                    if (decryptedStream != null) {
                        decryptedStream.close();
                    }
                    pOIFSFileSystem.close();
                    return create;
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        pOIFSFileSystem.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } else {
            try {
                return createWorkbook(OPCPackage.open(file, z ? PackageAccess.READ : PackageAccess.READ_WRITE));
            } catch (InvalidFormatException e) {
                throw new IOException(e);
            }
        }
    }
}
