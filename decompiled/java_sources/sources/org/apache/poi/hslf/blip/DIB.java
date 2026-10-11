package org.apache.poi.hslf.blip;

import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.hslf.record.RecordAtom;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class DIB extends Bitmap {
    private static final int HEADER_SIZE = 14;

    @Removal(version = "5.3")
    @Deprecated
    public DIB() {
        this(new EscherContainerRecord(), new EscherBSERecord());
    }

    public static byte[] addBMPHeader(byte[] bArr) {
        byte[] bArr2 = new byte[14];
        LittleEndian.putInt(bArr2, 0, 19778);
        int i = LittleEndian.getInt(bArr, 20);
        int length = bArr.length + 14;
        LittleEndian.putInt(bArr2, 2, length);
        LittleEndian.putInt(bArr2, 6, 0);
        LittleEndian.putInt(bArr2, 10, length - i);
        byte[] safelyAllocate = IOUtils.safelyAllocate(14 + bArr.length, RecordAtom.getMaxRecordLength());
        System.arraycopy(bArr2, 0, safelyAllocate, 0, 14);
        System.arraycopy(bArr, 0, safelyAllocate, 14, bArr.length);
        return safelyAllocate;
    }

    @Override // org.apache.poi.hslf.blip.Bitmap, org.apache.poi.hslf.usermodel.HSLFPictureData
    public byte[] formatImageForSlideshow(byte[] bArr) {
        return super.formatImageForSlideshow(IOUtils.safelyClone(bArr, 14, bArr.length - 14, bArr.length));
    }

    @Override // org.apache.poi.hslf.blip.Bitmap, org.apache.poi.sl.usermodel.PictureData
    public byte[] getData() {
        return addBMPHeader(super.getData());
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public int getSignature() {
        return getUIDInstanceCount() == 1 ? 31360 : 31376;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public PictureData.PictureType getType() {
        return PictureData.PictureType.DIB;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public void setSignature(int i) {
        if (i == 31360) {
            setUIDInstanceCount(1);
        } else {
            if (i == 31376) {
                setUIDInstanceCount(2);
                return;
            }
            throw new IllegalArgumentException(i + " is not a valid instance/signature value for DIB");
        }
    }

    @Internal
    public DIB(EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord) {
        super(escherContainerRecord, escherBSERecord);
    }
}
