package org.apache.poi.hslf.blip;

import java.awt.Dimension;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.InflaterInputStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.hslf.blip.Metafile;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.usermodel.HSLFPictureData;
import org.apache.poi.sl.image.ImageHeaderPICT;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public final class PICT extends Metafile {
    private static final Logger LOG = LogManager.getLogger((Class<?>) PICT.class);

    @Removal(version = "5.3")
    @Deprecated
    public PICT() {
        this(new EscherContainerRecord(), new EscherBSERecord());
    }

    private byte[] read(byte[] bArr, int i) throws IOException {
        Metafile.Header header = new Metafile.Header();
        header.read(bArr, i);
        long size = i + header.getSize();
        UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(bArr);
        try {
            if (size != IOUtils.skipFully(unsynchronizedByteArrayInputStream, size)) {
                throw new EOFException();
            }
            byte[] bArr2 = new byte[4096];
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(header.getWmfSize());
            try {
                try {
                    InflaterInputStream inflaterInputStream = new InflaterInputStream(unsynchronizedByteArrayInputStream);
                    while (true) {
                        try {
                            int read = inflaterInputStream.read(bArr2);
                            if (read < 0) {
                                break;
                            }
                            unsynchronizedByteArrayOutputStream.write(bArr2, 0, read);
                            Arrays.fill(bArr2, (byte) 0);
                        } finally {
                        }
                    }
                    inflaterInputStream.close();
                } catch (Exception e) {
                    int i2 = 4095;
                    while (i2 >= 0 && bArr2[i2] == 0) {
                        i2--;
                    }
                    int i3 = i2 + 1;
                    if (i3 > 0) {
                        if (header.getWmfSize() > unsynchronizedByteArrayOutputStream.size()) {
                            i3 = Math.min(i3, header.getWmfSize() - unsynchronizedByteArrayOutputStream.size());
                        }
                        unsynchronizedByteArrayOutputStream.write(bArr2, 0, i3);
                    }
                    LOG.atError().withThrowable(e).log("PICT zip-stream is invalid, read as much as possible. Uncompressed length of header: {} / Read bytes: {}", Unbox.box(header.getWmfSize()), Unbox.box(unsynchronizedByteArrayOutputStream.size()));
                }
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                unsynchronizedByteArrayOutputStream.close();
                unsynchronizedByteArrayInputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                try {
                    unsynchronizedByteArrayInputStream.close();
                } catch (Throwable th4) {
                    th2.addSuppressed(th4);
                }
                throw th3;
            }
        }
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public byte[] formatImageForSlideshow(byte[] bArr) {
        ImageHeaderPICT imageHeaderPICT = new ImageHeaderPICT(bArr, 512);
        Metafile.Header header = new Metafile.Header();
        int length = bArr.length - 512;
        header.setWmfSize(length);
        byte[] compress = Metafile.compress(bArr, 512, length);
        header.setZipSize(compress.length);
        header.setBounds(imageHeaderPICT.getBounds());
        Dimension size = imageHeaderPICT.getSize();
        header.setDimension(new Dimension(Units.toEMU(size.getWidth()), Units.toEMU(size.getHeight())));
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
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                unsynchronizedByteArrayOutputStream.write(new byte[512]);
                unsynchronizedByteArrayOutputStream.write(read(rawData, getUIDInstanceCount() * 16));
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                unsynchronizedByteArrayOutputStream.close();
                return byteArray;
            } finally {
            }
        } catch (IOException e) {
            throw new HSLFException(e);
        }
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public int getSignature() {
        return getUIDInstanceCount() == 1 ? 21536 : 21552;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public PictureData.PictureType getType() {
        return PictureData.PictureType.PICT;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public void setSignature(int i) {
        if (i == 21536) {
            setUIDInstanceCount(1);
        } else {
            if (i == 21552) {
                setUIDInstanceCount(2);
                return;
            }
            throw new IllegalArgumentException(i + " is not a valid instance/signature value for PICT");
        }
    }

    @Internal
    public PICT(EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord) {
        super(escherContainerRecord, escherBSERecord);
    }
}
