package org.apache.poi.sl.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.extractor.ExtractorFactory;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.sl.usermodel.ObjectMetaData;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public interface ObjectShape<S extends Shape<S, P>, P extends TextParagraph<S, P, ? extends TextRun>> extends Shape<S, P>, PlaceableShape<S, P> {
    String getFullName();

    ObjectData getObjectData();

    PictureData getPictureData();

    String getProgId();

    default InputStream readObjectData() throws IOException {
        String progId = getProgId();
        if (progId == null) {
            throw new IllegalStateException("Ole object hasn't been initialized or provided in the source xml. use updateObjectData() first or check the corresponding slideXXX.xml");
        }
        ObjectMetaData.Application lookup = ObjectMetaData.Application.lookup(progId);
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(readObjectDataRaw());
            try {
                if (FileMagic.valueOf(prepareToCheckMagic) == FileMagic.OLE2) {
                    POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(prepareToCheckMagic);
                    try {
                        String[] strArr = new String[5];
                        String str = null;
                        int i = 0;
                        strArr[0] = lookup == null ? null : lookup.getMetaData().getOleEntry();
                        strArr[1] = ExtractorFactory.OOXML_PACKAGE;
                        strArr[2] = "Contents";
                        strArr[3] = "CONTENTS";
                        strArr[4] = "CONTENTSV30";
                        DirectoryNode root = pOIFSFileSystem.getRoot();
                        while (true) {
                            if (i >= 5) {
                                break;
                            }
                            String str2 = strArr[i];
                            if (root.hasEntry(str2)) {
                                str = str2;
                                break;
                            }
                            i++;
                        }
                        if (str == null) {
                            pOIFSFileSystem.writeFilesystem(unsynchronizedByteArrayOutputStream);
                        } else {
                            DocumentInputStream createDocumentInputStream = pOIFSFileSystem.createDocumentInputStream(str);
                            try {
                                IOUtils.copy(createDocumentInputStream, unsynchronizedByteArrayOutputStream);
                                if (createDocumentInputStream != null) {
                                    createDocumentInputStream.close();
                                }
                            } finally {
                            }
                        }
                        pOIFSFileSystem.close();
                    } finally {
                    }
                } else {
                    IOUtils.copy(prepareToCheckMagic, unsynchronizedByteArrayOutputStream);
                }
                InputStream inputStream = unsynchronizedByteArrayOutputStream.toInputStream();
                if (prepareToCheckMagic != null) {
                    prepareToCheckMagic.close();
                }
                unsynchronizedByteArrayOutputStream.close();
                return inputStream;
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

    default InputStream readObjectDataRaw() throws IOException {
        return getObjectData().getInputStream();
    }

    OutputStream updateObjectData(ObjectMetaData.Application application, ObjectMetaData objectMetaData) throws IOException;
}
