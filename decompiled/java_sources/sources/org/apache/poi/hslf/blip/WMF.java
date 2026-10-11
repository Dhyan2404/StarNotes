package org.apache.poi.hslf.blip;

import java.awt.Dimension;
import java.io.IOException;
import java.util.zip.InflaterInputStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.hslf.blip.Metafile;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.usermodel.HSLFPictureData;
import org.apache.poi.sl.image.ImageHeaderWMF;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class WMF extends Metafile {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    @Removal(version = "5.3")
    @Deprecated
    public WMF() {
        this(new EscherContainerRecord(), new EscherBSERecord());
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public byte[] formatImageForSlideshow(byte[] bArr) {
        ImageHeaderWMF imageHeaderWMF = new ImageHeaderWMF(bArr, 0);
        int length = imageHeaderWMF.getLength() + 0;
        byte[] compress = Metafile.compress(bArr, length, bArr.length - length);
        Metafile.Header header = new Metafile.Header();
        header.setWmfSize(bArr.length - imageHeaderWMF.getLength());
        header.setBounds(imageHeaderWMF.getBounds());
        Dimension size = imageHeaderWMF.getSize();
        header.setDimension(new Dimension(Units.toEMU(size.getWidth()), Units.toEMU(size.getHeight())));
        header.setZipSize(compress.length);
        byte[] checksum = HSLFPictureData.getChecksum(bArr);
        byte[] bArr2 = new byte[(checksum.length * getUIDInstanceCount()) + header.getSize() + compress.length];
        System.arraycopy(checksum, 0, bArr2, 0, checksum.length);
        int length2 = checksum.length + 0;
        if (getUIDInstanceCount() == 2) {
            System.arraycopy(checksum, 0, bArr2, length2, checksum.length);
            length2 += checksum.length;
        }
        header.write(bArr2, length2);
        System.arraycopy(compress, 0, bArr2, length2 + header.getSize(), compress.length);
        return bArr2;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public byte[] getData() {
        byte[] rawData = getRawData();
        try {
            UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(rawData);
            try {
                Metafile.Header header = new Metafile.Header();
                header.read(rawData, getUIDInstanceCount() * 16);
                IOUtils.skipFully(unsynchronizedByteArrayInputStream, header.getSize() + (getUIDInstanceCount() * 16));
                ImageHeaderWMF imageHeaderWMF = new ImageHeaderWMF(header.getBounds());
                UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
                imageHeaderWMF.write(unsynchronizedByteArrayOutputStream);
                InflaterInputStream inflaterInputStream = new InflaterInputStream(unsynchronizedByteArrayInputStream);
                try {
                    IOUtils.copy(inflaterInputStream, unsynchronizedByteArrayOutputStream);
                    inflaterInputStream.close();
                    byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                    unsynchronizedByteArrayInputStream.close();
                    return byteArray;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            throw new HSLFException(e);
        }
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public int getSignature() {
        return getUIDInstanceCount() == 1 ? 8544 : 8560;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public PictureData.PictureType getType() {
        return PictureData.PictureType.WMF;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public void setSignature(int i) {
        if (i == 8544) {
            setUIDInstanceCount(1);
        } else {
            if (i == 8560) {
                setUIDInstanceCount(2);
                return;
            }
            throw new IllegalArgumentException(i + " is not a valid instance/signature value for WMF");
        }
    }

    @Internal
    public WMF(EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord) {
        super(escherContainerRecord, escherBSERecord);
    }
}
