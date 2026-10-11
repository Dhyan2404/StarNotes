package org.apache.poi.hslf.blip;

import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.sl.image.ImageHeaderPNG;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class PNG extends Bitmap {
    @Removal(version = "5.3")
    @Deprecated
    public PNG() {
        this(new EscherContainerRecord(), new EscherBSERecord());
    }

    @Override // org.apache.poi.hslf.blip.Bitmap, org.apache.poi.sl.usermodel.PictureData
    public byte[] getData() {
        return new ImageHeaderPNG(super.getData()).extractPNG();
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public int getSignature() {
        return getUIDInstanceCount() == 1 ? 28160 : 28176;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public PictureData.PictureType getType() {
        return PictureData.PictureType.PNG;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public void setSignature(int i) {
        if (i == 28160) {
            setUIDInstanceCount(1);
        } else {
            if (i == 28176) {
                setUIDInstanceCount(2);
                return;
            }
            throw new IllegalArgumentException(i + " is not a valid instance/signature value for PNG");
        }
    }

    @Internal
    public PNG(EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord) {
        super(escherContainerRecord, escherBSERecord);
    }
}
