package com.sunia.HTREnginev2;

import java.util.Arrays;

/* loaded from: classes5.dex */
public final class fnp extends rmp {

    /* renamed from: b */
    public final byte[] f70200b;

    public fnp(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f70200b = bArr;
    }

    @Override // com.sunia.HTREnginev2.rmp
    /* renamed from: e */
    public final byte[] mo54151e() {
        return this.f70200b;
    }
}
