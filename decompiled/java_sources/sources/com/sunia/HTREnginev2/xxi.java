package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import java.io.OutputStream;

/* loaded from: classes6.dex */
public final class xxi extends OutputStream {

    /* renamed from: e */
    public long f90167e = 0;

    /* renamed from: f */
    public long m58362f() {
        return this.f90167e;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.f90167e++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f90167e += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i, int i2) {
        int i3;
        if (i >= 0 && i <= bArr.length && i2 >= 0 && (i3 = i + i2) <= bArr.length && i3 >= 0) {
            this.f90167e += i2;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
