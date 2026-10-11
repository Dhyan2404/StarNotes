package org.apache.poi.hwpf.usermodel;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.types.SHDAbstractType;

/* loaded from: classes12.dex */
public final class ShadingDescriptor extends SHDAbstractType implements Duplicatable {
    public ShadingDescriptor() {
    }

    public boolean isEmpty() {
        return this.field_3_ipat == 0;
    }

    @Override // org.apache.poi.hwpf.model.types.SHDAbstractType
    public byte[] serialize() {
        byte[] bArr = new byte[SHDAbstractType.getSize()];
        serialize(bArr, 0);
        return bArr;
    }

    @Override // org.apache.poi.hwpf.model.types.SHDAbstractType
    public String toString() {
        if (isEmpty()) {
            return "[SHD] EMPTY";
        }
        return "[SHD] (cvFore: " + getCvFore() + "; cvBack: " + getCvBack() + "; iPat: " + getIpat() + MotionUtils.f31762d;
    }

    public ShadingDescriptor(ShadingDescriptor shadingDescriptor) {
        super(shadingDescriptor);
    }

    @Override // org.apache.poi.common.Duplicatable
    public ShadingDescriptor copy() {
        return new ShadingDescriptor(this);
    }

    public ShadingDescriptor(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
