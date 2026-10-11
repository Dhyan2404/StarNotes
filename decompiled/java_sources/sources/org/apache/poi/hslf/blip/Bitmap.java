package org.apache.poi.hslf.blip;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.imageio.ImageIO;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.hslf.usermodel.HSLFPictureData;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public abstract class Bitmap extends HSLFPictureData {
    @Removal(version = "5.3")
    @Deprecated
    public Bitmap() {
        this(new EscherContainerRecord(), new EscherBSERecord());
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public byte[] formatImageForSlideshow(byte[] bArr) {
        byte[] checksum = HSLFPictureData.getChecksum(bArr);
        byte[] bArr2 = new byte[(checksum.length * getUIDInstanceCount()) + 1 + bArr.length];
        System.arraycopy(checksum, 0, bArr2, 0, checksum.length);
        int length = checksum.length + 0;
        if (getUIDInstanceCount() == 2) {
            System.arraycopy(checksum, 0, bArr2, length, checksum.length);
            length += checksum.length;
        }
        System.arraycopy(bArr, 0, bArr2, length + 1, bArr.length);
        return bArr2;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public byte[] getData() {
        byte[] rawData = getRawData();
        int uIDInstanceCount = (getUIDInstanceCount() * 16) + 1;
        return IOUtils.safelyClone(rawData, uIDInstanceCount, rawData.length - uIDInstanceCount, rawData.length);
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public Dimension getImageDimension() {
        try {
            UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(getData());
            try {
                BufferedImage read = ImageIO.read(unsynchronizedByteArrayInputStream);
                Dimension dimension = new Dimension((int) Units.pixelToPoints(read.getWidth()), (int) Units.pixelToPoints(read.getHeight()));
                unsynchronizedByteArrayInputStream.close();
                return dimension;
            } finally {
            }
        } catch (IOException unused) {
            return new Dimension(200, 200);
        }
    }

    @Internal
    public Bitmap(EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord) {
        super(escherContainerRecord, escherBSERecord);
    }
}
