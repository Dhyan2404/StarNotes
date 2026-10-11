package com.sunia.HTREnginev2;

import com.google.zxing.common.BitArray;

/* renamed from: com.sunia.HTREnginev2.vq */
/* loaded from: classes4.dex */
public final class C14559vq extends win {

    /* renamed from: c */
    public final short f87805c;

    /* renamed from: d */
    public final short f87806d;

    public C14559vq(win winVar, int i, int i2) {
        super(winVar);
        this.f87805c = (short) i;
        this.f87806d = (short) i2;
    }

    @Override // com.sunia.HTREnginev2.win
    /* renamed from: c */
    public void mo57867c(BitArray bitArray, byte[] bArr) {
        int i = 0;
        while (true) {
            short s = this.f87806d;
            if (i >= s) {
                return;
            }
            if (i == 0 || (i == 31 && s <= 62)) {
                bitArray.appendBits(31, 5);
                short s2 = this.f87806d;
                if (s2 > 62) {
                    bitArray.appendBits(s2 - 31, 16);
                } else if (i == 0) {
                    bitArray.appendBits(Math.min((int) s2, 31), 5);
                } else {
                    bitArray.appendBits(s2 - 31, 5);
                }
            }
            bitArray.appendBits(bArr[this.f87805c + i], 8);
            i++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append((int) this.f87805c);
        sb.append("::");
        sb.append((this.f87805c + this.f87806d) - 1);
        sb.append('>');
        return sb.toString();
    }
}
