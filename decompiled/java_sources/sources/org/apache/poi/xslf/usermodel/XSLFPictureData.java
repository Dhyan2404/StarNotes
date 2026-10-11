package org.apache.poi.xslf.usermodel;

import java.awt.Dimension;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.sl.image.ImageHeaderBitmap;
import org.apache.poi.sl.image.ImageHeaderEMF;
import org.apache.poi.sl.image.ImageHeaderPICT;
import org.apache.poi.sl.image.ImageHeaderWMF;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Units;

/* loaded from: classes13.dex */
public final class XSLFPictureData extends POIXMLDocumentPart implements PictureData {
    private static final int DEFAULT_MAX_IMAGE_SIZE = 100000000;
    private static int MAX_IMAGE_SIZE = 100000000;
    private Long checksum;
    private int index;
    private Dimension origSize;

    /* renamed from: org.apache.poi.xslf.usermodel.XSLFPictureData$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198971 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType;

        static {
            int[] iArr = new int[PictureData.PictureType.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType = iArr;
            try {
                iArr[PictureData.PictureType.EMF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.WMF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.PICT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.JPEG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.PNG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.DIB.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.GIF.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.EPS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.BMP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.WPG.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.WDP.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.TIFF.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[PictureData.PictureType.SVG.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public XSLFPictureData() {
        this.index = -1;
    }

    public static int getMaxImageSize() {
        return MAX_IMAGE_SIZE;
    }

    public static XSLFRelation getRelationForType(PictureData.PictureType pictureType) {
        switch (C198971.$SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[pictureType.ordinal()]) {
            case 1:
                return XSLFRelation.IMAGE_EMF;
            case 2:
                return XSLFRelation.IMAGE_WMF;
            case 3:
                return XSLFRelation.IMAGE_PICT;
            case 4:
                return XSLFRelation.IMAGE_JPEG;
            case 5:
                return XSLFRelation.IMAGE_PNG;
            case 6:
                return XSLFRelation.IMAGE_DIB;
            case 7:
                return XSLFRelation.IMAGE_GIF;
            case 8:
                return XSLFRelation.IMAGE_EPS;
            case 9:
                return XSLFRelation.IMAGE_BMP;
            case 10:
                return XSLFRelation.IMAGE_WPG;
            case 11:
                return XSLFRelation.HDPHOTO_WDP;
            case 12:
                return XSLFRelation.IMAGE_TIFF;
            case 13:
                return XSLFRelation.IMAGE_SVG;
            default:
                return null;
        }
    }

    public static void setMaxImageSize(int i) {
        MAX_IMAGE_SIZE = i;
    }

    public void cacheProperties() {
        if (this.origSize == null || this.checksum == null) {
            byte[] data = getData();
            this.checksum = Long.valueOf(IOUtils.calculateChecksum(data));
            PictureData.PictureType type = getType();
            if (type == null) {
                this.origSize = new Dimension(1, 1);
                return;
            }
            int i = C198971.$SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType[type.ordinal()];
            if (i == 1) {
                this.origSize = new ImageHeaderEMF(data, 0).getSize();
                return;
            }
            if (i == 2) {
                this.origSize = new ImageHeaderWMF(data, 0).getSize();
            } else if (i != 3) {
                this.origSize = new ImageHeaderBitmap(data, 0).getSize();
            } else {
                this.origSize = new ImageHeaderPICT(data, 0).getSize();
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public byte[] getChecksum() {
        cacheProperties();
        byte[] bArr = new byte[8];
        LittleEndian.putLong(bArr, 0, this.checksum.longValue());
        return bArr;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public String getContentType() {
        return getPackagePart().getContentType();
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public byte[] getData() {
        try {
            InputStream inputStream = getInputStream();
            try {
                byte[] byteArrayWithMaxLength = IOUtils.toByteArrayWithMaxLength(inputStream, getMaxImageSize());
                if (inputStream != null) {
                    inputStream.close();
                }
                return byteArrayWithMaxLength;
            } finally {
            }
        } catch (IOException e) {
            throw new POIXMLException(e);
        }
    }

    public String getFileName() {
        String name = getPackagePart().getPartName().getName();
        return name.substring(name.lastIndexOf(47) + 1);
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public Dimension getImageDimension() {
        cacheProperties();
        return this.origSize;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public Dimension getImageDimensionInPixels() {
        Dimension imageDimension = getImageDimension();
        return new Dimension(Units.pointsToPixel(imageDimension.getWidth()), Units.pointsToPixel(imageDimension.getHeight()));
    }

    public int getIndex() {
        return this.index;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public InputStream getInputStream() throws IOException {
        InputStream inputStream = getPackagePart().getInputStream();
        return (inputStream == null || inputStream.markSupported()) ? inputStream : new BufferedInputStream(inputStream);
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public PictureData.PictureType getType() {
        String contentType = getContentType();
        if (XSLFRelation.IMAGE_EMF.getContentType().equals(contentType)) {
            return PictureData.PictureType.EMF;
        }
        if (XSLFRelation.IMAGE_WMF.getContentType().equals(contentType)) {
            return PictureData.PictureType.WMF;
        }
        if (XSLFRelation.IMAGE_PICT.getContentType().equals(contentType)) {
            return PictureData.PictureType.PICT;
        }
        if (XSLFRelation.IMAGE_JPEG.getContentType().equals(contentType)) {
            return PictureData.PictureType.JPEG;
        }
        if (XSLFRelation.IMAGE_PNG.getContentType().equals(contentType)) {
            return PictureData.PictureType.PNG;
        }
        if (XSLFRelation.IMAGE_DIB.getContentType().equals(contentType)) {
            return PictureData.PictureType.DIB;
        }
        if (XSLFRelation.IMAGE_GIF.getContentType().equals(contentType)) {
            return PictureData.PictureType.GIF;
        }
        if (XSLFRelation.IMAGE_EPS.getContentType().equals(contentType)) {
            return PictureData.PictureType.EPS;
        }
        if (XSLFRelation.IMAGE_BMP.getContentType().equals(contentType)) {
            return PictureData.PictureType.BMP;
        }
        if (XSLFRelation.IMAGE_WPG.getContentType().equals(contentType)) {
            return PictureData.PictureType.WPG;
        }
        if (XSLFRelation.IMAGE_WDP.getContentType().equals(contentType)) {
            return PictureData.PictureType.WDP;
        }
        if (XSLFRelation.IMAGE_TIFF.getContentType().equals(contentType)) {
            return PictureData.PictureType.TIFF;
        }
        if (XSLFRelation.IMAGE_SVG.getContentType().equals(contentType)) {
            return PictureData.PictureType.SVG;
        }
        return null;
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void prepareForCommit() {
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public void setData(byte[] bArr) throws IOException {
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            outputStream.write(bArr);
            outputStream.close();
            this.checksum = Long.valueOf(IOUtils.calculateChecksum(bArr));
            this.origSize = null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public String suggestFileExtension() {
        return getPackagePart().getPartName().getExtension();
    }

    public XSLFPictureData(PackagePart packagePart) {
        super(packagePart);
        this.index = -1;
    }
}
