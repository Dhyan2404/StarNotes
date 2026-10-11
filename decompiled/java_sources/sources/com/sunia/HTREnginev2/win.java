package com.sunia.HTREnginev2;

import com.google.zxing.common.BitArray;

/* loaded from: classes4.dex */
public abstract class win {

    /* renamed from: b */
    public static final win f88669b = new ysm(null, 0, 0);

    /* renamed from: a */
    public final win f88670a;

    public win(win winVar) {
        this.f88670a = winVar;
    }

    /* renamed from: a */
    public final win m58077a(int i, int i2) {
        return new ysm(this, i, i2);
    }

    /* renamed from: b */
    public final win m58078b(int i, int i2) {
        return new C14559vq(this, i, i2);
    }

    /* renamed from: c */
    public abstract void mo57867c(BitArray bitArray, byte[] bArr);

    /* renamed from: d */
    public final win m58079d() {
        return this.f88670a;
    }
}
