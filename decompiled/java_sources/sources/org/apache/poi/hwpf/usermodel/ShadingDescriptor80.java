package org.apache.poi.hwpf.usermodel;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.Colorref;
import org.apache.poi.hwpf.model.types.SHD80AbstractType;

/* loaded from: classes12.dex */
public final class ShadingDescriptor80 extends SHD80AbstractType implements Duplicatable {
    public ShadingDescriptor80() {
    }

    public boolean isEmpty() {
        return this.field_1_value == 0;
    }

    @Override // org.apache.poi.hwpf.model.types.SHD80AbstractType
    public byte[] serialize() {
        byte[] bArr = new byte[SHD80AbstractType.getSize()];
        serialize(bArr, 0);
        return bArr;
    }

    public ShadingDescriptor toShadingDescriptor() {
        ShadingDescriptor shadingDescriptor = new ShadingDescriptor();
        shadingDescriptor.setCvFore(Colorref.valueOfIco(getIcoFore()));
        shadingDescriptor.setCvBack(Colorref.valueOfIco(getIcoBack()));
        shadingDescriptor.setIpat(getIpat());
        return shadingDescriptor;
    }

    @Override // org.apache.poi.hwpf.model.types.SHD80AbstractType
    public String toString() {
        if (isEmpty()) {
            return "[SHD80] EMPTY";
        }
        return "[SHD80] (icoFore: " + ((int) getIcoFore()) + "; icoBack: " + ((int) getIcoBack()) + "; iPat: " + ((int) getIpat()) + MotionUtils.f31762d;
    }

    public ShadingDescriptor80(ShadingDescriptor80 shadingDescriptor80) {
        super(shadingDescriptor80);
    }

    @Override // org.apache.poi.common.Duplicatable
    public ShadingDescriptor80 copy() {
        return new ShadingDescriptor80(this);
    }

    public ShadingDescriptor80(byte[] bArr, int i) {
        fillFields(bArr, i);
    }

    public ShadingDescriptor80(short s) {
        this.field_1_value = s;
    }
}
