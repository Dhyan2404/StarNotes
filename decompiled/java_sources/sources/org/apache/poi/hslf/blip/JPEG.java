package org.apache.poi.hslf.blip;

import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class JPEG extends Bitmap {
    private ColorSpace colorSpace;

    /* loaded from: classes12.dex */
    public enum ColorSpace {
        rgb,
        cymk
    }

    @Removal(version = "5.3")
    @Deprecated
    public JPEG() {
        this(new EscherContainerRecord(), new EscherBSERecord());
    }

    public ColorSpace getColorSpace() {
        return this.colorSpace;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public int getSignature() {
        return this.colorSpace == ColorSpace.rgb ? getUIDInstanceCount() == 1 ? 18080 : 18096 : getUIDInstanceCount() == 1 ? 28192 : 28208;
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public PictureData.PictureType getType() {
        return PictureData.PictureType.JPEG;
    }

    public void setColorSpace(ColorSpace colorSpace) {
        this.colorSpace = colorSpace;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureData
    public void setSignature(int i) {
        if (i == 18080) {
            setUIDInstanceCount(1);
            this.colorSpace = ColorSpace.rgb;
            return;
        }
        if (i == 18096) {
            setUIDInstanceCount(2);
            this.colorSpace = ColorSpace.rgb;
            return;
        }
        if (i == 28192) {
            setUIDInstanceCount(1);
            this.colorSpace = ColorSpace.cymk;
        } else if (i == 28208) {
            setUIDInstanceCount(2);
            this.colorSpace = ColorSpace.cymk;
        } else {
            throw new IllegalArgumentException(i + " is not a valid instance/signature value for JPEG");
        }
    }

    @Internal
    public JPEG(EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord) {
        super(escherContainerRecord, escherBSERecord);
        this.colorSpace = ColorSpace.rgb;
    }
}
