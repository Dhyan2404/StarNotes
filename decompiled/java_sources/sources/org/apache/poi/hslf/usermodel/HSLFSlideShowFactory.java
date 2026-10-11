package org.apache.poi.hslf.usermodel;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.hssf.record.crypto.Biff8EncryptionKey;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.sl.usermodel.SlideShow;
import org.apache.poi.sl.usermodel.SlideShowProvider;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class HSLFSlideShowFactory implements SlideShowProvider<HSLFShape, HSLFTextParagraph> {
    public static HSLFSlideShow createSlideShow(POIFSFileSystem pOIFSFileSystem) throws IOException {
        return new HSLFSlideShow(pOIFSFileSystem);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    public boolean accepts(FileMagic fileMagic) {
        return FileMagic.OLE2 == fileMagic;
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    /* renamed from: create, reason: merged with bridge method [inline-methods] */
    public SlideShow<HSLFShape, HSLFTextParagraph> create2() {
        return new HSLFSlideShow();
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    /* renamed from: create, reason: merged with bridge method [inline-methods] */
    public SlideShow<HSLFShape, HSLFTextParagraph> create2(DirectoryNode directoryNode, String str) throws IOException {
        boolean z;
        if (str != null) {
            Biff8EncryptionKey.setCurrentUserPassword(str);
            z = true;
        } else {
            z = false;
        }
        try {
            return new HSLFSlideShow(directoryNode);
        } finally {
            if (z) {
                Biff8EncryptionKey.setCurrentUserPassword(null);
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    /* renamed from: create, reason: merged with bridge method [inline-methods] */
    public SlideShow<HSLFShape, HSLFTextParagraph> create2(InputStream inputStream) throws IOException {
        return create2(inputStream, (String) null);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    /* renamed from: create, reason: merged with bridge method [inline-methods] */
    public SlideShow<HSLFShape, HSLFTextParagraph> create2(InputStream inputStream, String str) throws IOException {
        return create2(new POIFSFileSystem(inputStream).getRoot(), str);
    }

    @Override // org.apache.poi.sl.usermodel.SlideShowProvider
    /* renamed from: create, reason: merged with bridge method [inline-methods] */
    public SlideShow<HSLFShape, HSLFTextParagraph> create2(File file, String str, boolean z) throws IOException {
        boolean z2;
        if (str != null) {
            Biff8EncryptionKey.setCurrentUserPassword(str);
            z2 = true;
        } else {
            z2 = false;
        }
        try {
            return new HSLFSlideShow(new POIFSFileSystem(file, z));
        } finally {
            if (z2) {
                Biff8EncryptionKey.setCurrentUserPassword(null);
            }
        }
    }
}
