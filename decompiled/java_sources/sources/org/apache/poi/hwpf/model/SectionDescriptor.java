package org.apache.poi.hwpf.model;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class SectionDescriptor implements Duplicatable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int fcMpr;
    private int fcSepx;

    /* renamed from: fn */
    private short f111445fn;
    private short fnMpr;

    public SectionDescriptor() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SectionDescriptor)) {
            return false;
        }
        SectionDescriptor sectionDescriptor = (SectionDescriptor) obj;
        return sectionDescriptor.f111445fn == this.f111445fn && sectionDescriptor.fnMpr == this.fnMpr;
    }

    public int getFc() {
        return this.fcSepx;
    }

    public int hashCode() {
        return 42;
    }

    public void setFc(int i) {
        this.fcSepx = i;
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[12];
        LittleEndian.putShort(bArr, 0, this.f111445fn);
        LittleEndian.putInt(bArr, 2, this.fcSepx);
        LittleEndian.putShort(bArr, 6, this.fnMpr);
        LittleEndian.putInt(bArr, 8, this.fcMpr);
        return bArr;
    }

    public String toString() {
        return "[SED] (fn: " + ((int) this.f111445fn) + "; fcSepx: " + this.fcSepx + "; fnMpr: " + ((int) this.fnMpr) + "; fcMpr: " + this.fcMpr + MotionUtils.f31762d;
    }

    public SectionDescriptor(SectionDescriptor sectionDescriptor) {
        this.f111445fn = sectionDescriptor.f111445fn;
        this.fcSepx = sectionDescriptor.fcSepx;
        this.fnMpr = sectionDescriptor.fnMpr;
        this.fcMpr = sectionDescriptor.fcMpr;
    }

    @Override // org.apache.poi.common.Duplicatable
    public SectionDescriptor copy() {
        return new SectionDescriptor(this);
    }

    public SectionDescriptor(byte[] bArr, int i) {
        this.f111445fn = LittleEndian.getShort(bArr, i);
        int i2 = i + 2;
        this.fcSepx = LittleEndian.getInt(bArr, i2);
        int i3 = i2 + 4;
        this.fnMpr = LittleEndian.getShort(bArr, i3);
        this.fcMpr = LittleEndian.getInt(bArr, i3 + 2);
    }
}
