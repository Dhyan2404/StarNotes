package com.sunia.HTREnginev2;

import com.google.zxing.common.BitArray;

/* loaded from: classes4.dex */
public final class ysm extends win {

    /* renamed from: c */
    public final short f91045c;

    /* renamed from: d */
    public final short f91046d;

    public ysm(win winVar, int i, int i2) {
        super(winVar);
        this.f91045c = (short) i;
        this.f91046d = (short) i2;
    }

    @Override // com.sunia.HTREnginev2.win
    /* renamed from: c */
    public void mo57867c(BitArray bitArray, byte[] bArr) {
        bitArray.appendBits(this.f91045c, this.f91046d);
    }

    public String toString() {
        short s = this.f91045c;
        short s2 = this.f91046d;
        return "<" + Integer.toBinaryString((1 << this.f91046d) | (s & ((1 << s2) - 1)) | (1 << s2)).substring(1) + '>';
    }
}
