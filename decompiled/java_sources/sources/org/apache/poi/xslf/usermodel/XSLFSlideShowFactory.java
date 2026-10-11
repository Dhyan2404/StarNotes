package org.apache.poi.xslf.usermodel;

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
import org.apache.poi.sl.usermodel.SlideShow;
import org.apache.poi.sl.usermodel.SlideShowProvider;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public class XSLFSlideShowFactory implements SlideShowProvider<XSLFShape, XSLFTextParagraph> {
    public static XMLSlideShow createSlideShow(OPCPackage oPCPackage) throws IOException {
        try {
            return new XMLSlideShow(oPCPackage);
        } catch (RuntimeException e) {
            oPCPackage.revert();
            throw e;
        }
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    public boolean accepts(FileMagic fileMagic) {
        return fileMagic == FileMagic.OOXML;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    /* renamed from: create, reason: avoid collision after fix types in other method */
    public SlideShow<XSLFShape, XSLFTextParagraph> create2() {
        return new XMLSlideShow();
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    /* renamed from: create, reason: avoid collision after fix types in other method */
    public SlideShow<XSLFShape, XSLFTextParagraph> create2(DirectoryNode directoryNode, String str) throws IOException {
        try {
            InputStream decryptedStream = DocumentFactoryHelper.getDecryptedStream(directoryNode, str);
            try {
                SlideShow<XSLFShape, XSLFTextParagraph> create2 = create2(decryptedStream);
                if (decryptedStream != null) {
                    decryptedStream.close();
                }
                return create2;
            } finally {
            }
        } finally {
            directoryNode.getFileSystem().close();
        }
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    /* renamed from: create, reason: avoid collision after fix types in other method */
    public SlideShow<XSLFShape, XSLFTextParagraph> create2(InputStream inputStream, String str) throws IOException {
        InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(inputStream);
        FileMagic valueOf = FileMagic.valueOf(prepareToCheckMagic);
        if (valueOf == FileMagic.OLE2) {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(prepareToCheckMagic);
            try {
                InputStream decryptedStream = DocumentFactoryHelper.getDecryptedStream(pOIFSFileSystem.getRoot(), str);
                try {
                    SlideShow<XSLFShape, XSLFTextParagraph> create2 = create2(decryptedStream);
                    if (decryptedStream != null) {
                        decryptedStream.close();
                    }
                    pOIFSFileSystem.close();
                    return create2;
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
                return create2(prepareToCheckMagic);
            }
            return null;
        }
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    /* renamed from: create, reason: avoid collision after fix types in other method */
    public SlideShow<XSLFShape, XSLFTextParagraph> create2(InputStream inputStream) throws IOException {
        try {
            return createSlideShow(OPCPackage.open(inputStream));
        } catch (InvalidFormatException e) {
            throw new IOException(e);
        }
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    /* renamed from: create, reason: avoid collision after fix types in other method */
    public SlideShow<XSLFShape, XSLFTextParagraph> create2(File file, String str, boolean z) throws IOException {
        if (FileMagic.valueOf(file) == FileMagic.OLE2) {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(file, true);
            try {
                InputStream decryptedStream = DocumentFactoryHelper.getDecryptedStream(pOIFSFileSystem.getRoot(), str);
                try {
                    SlideShow<XSLFShape, XSLFTextParagraph> create2 = create2(decryptedStream);
                    if (decryptedStream != null) {
                        decryptedStream.close();
                    }
                    pOIFSFileSystem.close();
                    return create2;
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
                return createSlideShow(OPCPackage.open(file, z ? PackageAccess.READ : PackageAccess.READ_WRITE));
            } catch (InvalidFormatException e) {
                throw new IOException(e);
            }
        }
    }
}
