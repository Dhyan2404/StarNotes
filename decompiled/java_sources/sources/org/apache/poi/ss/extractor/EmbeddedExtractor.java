package org.apache.poi.ss.extractor;

import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hpsf.ClassIDPredefined;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.Ole10Native;
import org.apache.poi.poifs.filesystem.Ole10NativeException;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Drawing;
import org.apache.poi.ss.usermodel.ObjectData;
import org.apache.poi.ss.usermodel.Picture;
import org.apache.poi.ss.usermodel.PictureData;
import org.apache.poi.ss.usermodel.Shape;
import org.apache.poi.ss.usermodel.ShapeContainer;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.StringUtil;

/* loaded from: classes13.dex */
public class EmbeddedExtractor implements Iterable<EmbeddedExtractor> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String CONTENT_TYPE_BYTES = "binary/octet-stream";
    private static final String CONTENT_TYPE_DOC = "application/msword";
    private static final String CONTENT_TYPE_PDF = "application/pdf";
    private static final String CONTENT_TYPE_XLS = "application/vnd.ms-excel";
    private static final int DEFAULT_MAX_RECORD_LENGTH = 1000000;
    private static final Logger LOG = LogManager.getLogger((Class<?>) EmbeddedExtractor.class);
    private static int MAX_RECORD_LENGTH = 1000000;

    /* loaded from: classes13.dex */
    public static class BiffExtractor extends EmbeddedExtractor {
        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public boolean canExtract(DirectoryNode directoryNode) {
            return canExtractExcel(directoryNode) || canExtractWord(directoryNode);
        }

        public boolean canExtractExcel(DirectoryNode directoryNode) {
            ClassIDPredefined lookup = ClassIDPredefined.lookup(directoryNode.getStorageClsid());
            return ClassIDPredefined.EXCEL_V7 == lookup || ClassIDPredefined.EXCEL_V8 == lookup || directoryNode.hasEntry("Workbook");
        }

        public boolean canExtractWord(DirectoryNode directoryNode) {
            ClassIDPredefined lookup = ClassIDPredefined.lookup(directoryNode.getStorageClsid());
            return ClassIDPredefined.WORD_V7 == lookup || ClassIDPredefined.WORD_V8 == lookup || directoryNode.hasEntry("WordDocument");
        }

        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public EmbeddedData extract(DirectoryNode directoryNode) throws IOException {
            EmbeddedData extract = super.extract(directoryNode);
            if (canExtractExcel(directoryNode)) {
                extract.setFilename(directoryNode.getName() + ".xls");
                extract.setContentType(EmbeddedExtractor.CONTENT_TYPE_XLS);
            } else if (canExtractWord(directoryNode)) {
                extract.setFilename(directoryNode.getName() + ".doc");
                extract.setContentType(EmbeddedExtractor.CONTENT_TYPE_DOC);
            }
            return extract;
        }
    }

    /* loaded from: classes13.dex */
    public static class FsExtractor extends EmbeddedExtractor {
        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public boolean canExtract(DirectoryNode directoryNode) {
            return true;
        }

        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public EmbeddedData extract(DirectoryNode directoryNode) throws IOException {
            EmbeddedData extract = super.extract(directoryNode);
            extract.setFilename(directoryNode.getName() + ".ole");
            return extract;
        }
    }

    /* loaded from: classes13.dex */
    public static class OOXMLExtractor extends EmbeddedExtractor {
        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public boolean canExtract(DirectoryNode directoryNode) {
            return directoryNode.hasEntry("package");
        }

        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public EmbeddedData extract(DirectoryNode directoryNode) throws IOException {
            String str;
            String str2;
            ClassIDPredefined lookup = ClassIDPredefined.lookup(directoryNode.getStorageClsid());
            if (lookup != null) {
                str = lookup.getContentType();
                str2 = lookup.getFileExtension();
            } else {
                str = null;
                str2 = null;
            }
            if (str == null || str2 == null) {
                str = FileExtensionUtils.MIMETYPE_ZIP;
                str2 = ShapeDocumentUtils.SHAPE_FILE_END;
            }
            DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream("package");
            byte[] byteArray = IOUtils.toByteArray(createDocumentInputStream);
            createDocumentInputStream.close();
            return new EmbeddedData(directoryNode.getName() + str2, byteArray, str);
        }
    }

    /* loaded from: classes13.dex */
    public static class Ole10Extractor extends EmbeddedExtractor {
        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public boolean canExtract(DirectoryNode directoryNode) {
            return ClassIDPredefined.lookup(directoryNode.getStorageClsid()) == ClassIDPredefined.OLE_V1_PACKAGE;
        }

        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public EmbeddedData extract(DirectoryNode directoryNode) throws IOException {
            try {
                Ole10Native createFromEmbeddedOleObject = Ole10Native.createFromEmbeddedOleObject(directoryNode);
                return new EmbeddedData(createFromEmbeddedOleObject.getFileName(), createFromEmbeddedOleObject.getDataBuffer(), EmbeddedExtractor.CONTENT_TYPE_BYTES);
            } catch (Ole10NativeException e) {
                throw new IOException(e);
            }
        }
    }

    private static int[] computeFailure(byte[] bArr) {
        int[] iArr = new int[bArr.length];
        int i = 0;
        for (int i2 = 1; i2 < bArr.length; i2++) {
            while (i > 0 && bArr[i] != bArr[i2]) {
                i = iArr[i - 1];
            }
            if (bArr[i] == bArr[i2]) {
                i++;
            }
            iArr[i2] = i;
        }
        return iArr;
    }

    public static void copyNodes(DirectoryNode directoryNode, DirectoryNode directoryNode2) throws IOException {
        Iterator<Entry> it2 = directoryNode.iterator();
        while (it2.hasNext()) {
            Entry next = it2.next();
            if (next instanceof DirectoryNode) {
                DirectoryNode directoryNode3 = (DirectoryNode) next;
                DirectoryNode directoryNode4 = (DirectoryNode) directoryNode2.createDirectory(directoryNode3.getName());
                directoryNode4.setStorageClsid(directoryNode3.getStorageClsid());
                copyNodes(directoryNode3, directoryNode4);
            } else {
                DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream(next);
                try {
                    directoryNode2.createDocument(next.getName(), createDocumentInputStream);
                    if (createDocumentInputStream != null) {
                        createDocumentInputStream.close();
                    }
                } finally {
                }
            }
        }
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indexOf(byte[] bArr, int i, byte[] bArr2) {
        int[] computeFailure = computeFailure(bArr2);
        if (bArr.length == 0) {
            return -1;
        }
        int i2 = 0;
        while (i < bArr.length) {
            while (i2 > 0 && bArr2[i2] != bArr[i]) {
                i2 = computeFailure[i2 - 1];
            }
            if (bArr2[i2] == bArr[i]) {
                i2++;
            }
            if (i2 == bArr2.length) {
                return (i - bArr2.length) + 1;
            }
            i++;
        }
        return -1;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public boolean canExtract(DirectoryNode directoryNode) {
        return false;
    }

    public EmbeddedData extract(Picture picture) throws IOException {
        return null;
    }

    public List<EmbeddedData> extractAll(Sheet sheet) throws IOException {
        Drawing<?> drawingPatriarch = sheet.getDrawingPatriarch();
        if (drawingPatriarch == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        extractAll(drawingPatriarch, arrayList);
        return arrayList;
    }

    public EmbeddedData extractOne(DirectoryNode directoryNode) throws IOException {
        Iterator<EmbeddedExtractor> it2 = iterator();
        while (it2.hasNext()) {
            EmbeddedExtractor next = it2.next();
            if (next.canExtract(directoryNode)) {
                return next.extract(directoryNode);
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public Iterator<EmbeddedExtractor> iterator() {
        return Arrays.asList(new Ole10Extractor(), new PdfExtractor(), new BiffExtractor(), new OOXMLExtractor(), new FsExtractor()).iterator();
    }

    /* loaded from: classes13.dex */
    public static class PdfExtractor extends EmbeddedExtractor {
        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public boolean canExtract(DirectoryNode directoryNode) {
            return ClassIDPredefined.PDF.equals(directoryNode.getStorageClsid()) || directoryNode.hasEntry("CONTENTS");
        }

        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public EmbeddedData extract(DirectoryNode directoryNode) throws IOException {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                DocumentInputStream createDocumentInputStream = directoryNode.createDocumentInputStream("CONTENTS");
                try {
                    IOUtils.copy(createDocumentInputStream, unsynchronizedByteArrayOutputStream);
                    EmbeddedData embeddedData = new EmbeddedData(directoryNode.getName() + CloudStorageConstants.PDF_FILE_SUFFIX, unsynchronizedByteArrayOutputStream.toByteArray(), "application/pdf");
                    if (createDocumentInputStream != null) {
                        createDocumentInputStream.close();
                    }
                    unsynchronizedByteArrayOutputStream.close();
                    return embeddedData;
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

        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public boolean canExtract(Picture picture) {
            PictureData pictureData = picture.getPictureData();
            return pictureData != null && pictureData.getPictureType() == 2;
        }

        @Override // org.apache.poi.ss.extractor.EmbeddedExtractor
        public EmbeddedData extract(Picture picture) throws IOException {
            int indexOf;
            PictureData pictureData = picture.getPictureData();
            if (pictureData == null || pictureData.getPictureType() != 2) {
                return null;
            }
            byte[] data = pictureData.getData();
            Charset charset = LocaleUtil.CHARSET_1252;
            int indexOf2 = EmbeddedExtractor.indexOf(data, 0, "%PDF-".getBytes(charset));
            if (indexOf2 == -1 || (indexOf = EmbeddedExtractor.indexOf(data, indexOf2, "%%EOF".getBytes(charset))) == -1) {
                return null;
            }
            byte[] safelyClone = IOUtils.safelyClone(data, indexOf2, (indexOf - indexOf2) + 6, EmbeddedExtractor.MAX_RECORD_LENGTH);
            String trim = picture.getShapeName().trim();
            if (!StringUtil.endsWithIgnoreCase(trim, CloudStorageConstants.PDF_FILE_SUFFIX)) {
                trim = trim + CloudStorageConstants.PDF_FILE_SUFFIX;
            }
            return new EmbeddedData(trim, safelyClone, "application/pdf");
        }
    }

    public boolean canExtract(Picture picture) {
        return false;
    }

    public EmbeddedData extract(DirectoryNode directoryNode) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(20000);
        try {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem();
            try {
                copyNodes(directoryNode, pOIFSFileSystem.getRoot());
                pOIFSFileSystem.writeFilesystem(unsynchronizedByteArrayOutputStream);
                EmbeddedData embeddedData = new EmbeddedData(directoryNode.getName(), unsynchronizedByteArrayOutputStream.toByteArray(), CONTENT_TYPE_BYTES);
                pOIFSFileSystem.close();
                unsynchronizedByteArrayOutputStream.close();
                return embeddedData;
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

    public EmbeddedData extractOne(Picture picture) throws IOException {
        Iterator<EmbeddedExtractor> it2 = iterator();
        while (it2.hasNext()) {
            EmbeddedExtractor next = it2.next();
            if (next.canExtract(picture)) {
                return next.extract(picture);
            }
        }
        return null;
    }

    public void extractAll(ShapeContainer<?> shapeContainer, List<EmbeddedData> list) throws IOException {
        EmbeddedData embeddedData;
        Iterator<T> it2 = shapeContainer.iterator();
        while (it2.hasNext()) {
            Shape shape = (Shape) it2.next();
            EmbeddedData embeddedData2 = null;
            if (shape instanceof ObjectData) {
                ObjectData objectData = (ObjectData) shape;
                try {
                    if (objectData.hasDirectoryEntry()) {
                        embeddedData = extractOne((DirectoryNode) objectData.getDirectory());
                    } else {
                        embeddedData = new EmbeddedData(objectData.getFileName(), objectData.getObjectData(), objectData.getContentType());
                    }
                    embeddedData2 = embeddedData;
                } catch (Exception e) {
                    LOG.atWarn().withThrowable(e).log("Entry not found / readable - ignoring OLE embedding");
                }
            } else if (shape instanceof Picture) {
                embeddedData2 = extractOne((Picture) shape);
            } else if (shape instanceof ShapeContainer) {
                extractAll((ShapeContainer) shape, list);
            }
            if (embeddedData2 != null) {
                embeddedData2.setShape(shape);
                String filename = embeddedData2.getFilename();
                String substring = (filename == null || filename.lastIndexOf(46) == -1) ? ".bin" : filename.substring(filename.lastIndexOf(46));
                if ((filename == null || filename.isEmpty() || filename.startsWith("MBD") || filename.startsWith("Root Entry")) && (filename = shape.getShapeName()) != null) {
                    filename = filename + substring;
                }
                if (filename == null || filename.isEmpty()) {
                    filename = "picture_" + list.size() + substring;
                }
                embeddedData2.setFilename(filename.trim());
                list.add(embeddedData2);
            }
        }
    }
}
