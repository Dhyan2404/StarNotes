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
import org.apache.poi.sl.image.ImageHeaderEMF;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class EMF extends Metafile {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    @Removal(version = "5.3")
    @Deprecated
    public EMF() {
        this(new EscherContainerRecord(), new EscherBSERecord());
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public byte[] formatImageForSlideshow(byte[] bArr) {
        byte[] compress = Metafile.compress(bArr, 0, bArr.length);
        ImageHeaderEMF imageHeaderEMF = new ImageHeaderEMF(bArr, 0);
        Metafile.Header header = new Metafile.Header();
        header.setWmfSize(bArr.length);
        header.setBounds(imageHeaderEMF.getBounds());
        Dimension size = imageHeaderEMF.getSize();
        header.setDimension(new Dimension(Units.toEMU(size.getWidth()), Units.toEMU(size.getHeight())));
        header.setZipSize(compress.length);
        byte[] checksum = HSLFPictureData.getChecksum(bArr);
        byte[] bArr2 = new byte[(checksum.length * getUIDInstanceCount()) + header.getSize() + compress.length];
        System.arraycopy(checksum, 0, bArr2, 0, checksum.length);
        int length = checksum.length + 0;
        if (getUIDInstanceCount() == 2) {
            System.arraycopy(checksum, 0, bArr2, length, checksum.length);
            length += checksum.length;
        }
        header.write(bArr2, length);
        System.arraycopy(compress, 0, bArr2, length + header.getSize(), compress.length);
        return bArr2;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public byte[] getData() {
        byte[] rawData = getRawData();
        new Metafile.Header().read(rawData, 16);
        try {
            UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(rawData);
            try {
                InflaterInputStream inflaterInputStream = new InflaterInputStream(unsynchronizedByteArrayInputStream);
                try {
                    UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
                    try {
                        IOUtils.skipFully(unsynchronizedByteArrayInputStream, r0.getSize() + 16);
                        IOUtils.copy(inflaterInputStream, unsynchronizedByteArrayOutputStream);
                        byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                        unsynchronizedByteArrayOutputStream.close();
                        inflaterInputStream.close();
                        unsynchronizedByteArrayInputStream.close();
                        return byteArray;
                    } finally {
                    }
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
        return getUIDInstanceCount() == 1 ? 15680 : 15696;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public PictureData.PictureType getType() {
        return PictureData.PictureType.EMF;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public void setSignature(int i) {
        if (i == 15680) {
            setUIDInstanceCount(1);
        } else {
            if (i == 15696) {
                setUIDInstanceCount(2);
                return;
            }
            throw new IllegalArgumentException(i + " is not a valid instance/signature value for EMF");
        }
    }

    @Internal
    public EMF(EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord) {
        super(escherContainerRecord, escherBSERecord);
    }
}
