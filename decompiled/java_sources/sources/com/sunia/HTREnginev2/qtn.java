package com.sunia.HTREnginev2;

import java.io.DataInput;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class qtn extends sdm {

    /* renamed from: b */
    public final byte[] f82419b;

    public qtn(int i, byte[] bArr) {
        super(i);
        this.f82419b = bArr;
    }

    /* renamed from: b */
    public static sdm m56763b(int i, int i2, DataInput dataInput) throws IOException {
        byte[] bArr = new byte[i2 - 2];
        dataInput.readFully(bArr);
        return new qtn(i, bArr);
    }

    public String toString() {
        return String.format("Unknown[%04x, length: %d]", Integer.valueOf(this.f84044a), Integer.valueOf(this.f82419b.length));
    }
}
