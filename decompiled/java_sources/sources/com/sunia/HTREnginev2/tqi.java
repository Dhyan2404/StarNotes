package com.sunia.HTREnginev2;

import java.io.DataInput;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes10.dex */
public final class tqi extends C13767gd {

    /* renamed from: d */
    public final int f85650d;

    /* renamed from: e */
    public final int f85651e;

    /* renamed from: f */
    public final int f85652f;

    /* renamed from: g */
    public final int f85653g;

    /* renamed from: h */
    public final int f85654h;

    /* renamed from: i */
    public final int f85655i;

    /* renamed from: j */
    public final int f85656j;

    /* renamed from: k */
    public final byte[] f85657k;

    public tqi(int i, int i2, int i3, int i4, int i5, int i6, int i7, byte[] bArr, byte[] bArr2) {
        super(65504, "JFIF", bArr2);
        this.f85650d = i;
        this.f85651e = i2;
        this.f85652f = i3;
        this.f85653g = i4;
        this.f85654h = i5;
        this.f85655i = i6;
        this.f85656j = i7;
        this.f85657k = bArr;
    }

    /* renamed from: d */
    public static byte[] m57439d(ByteBuffer byteBuffer, int i) {
        if (i == 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return bArr;
    }

    /* renamed from: e */
    public static tqi m57440e(DataInput dataInput, int i) throws IOException {
        if (i < 16) {
            throw new EOFException();
        }
        dataInput.readFully(new byte[5]);
        byte[] bArr = new byte[(i - 2) - 5];
        dataInput.readFully(bArr);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        int i2 = wrap.get() & 255;
        int i3 = wrap.get() & 255;
        int i4 = wrap.get() & 255;
        int i5 = wrap.getShort() & 65535;
        int i6 = wrap.getShort() & 65535;
        int i7 = wrap.get() & 255;
        int i8 = wrap.get() & 255;
        return new tqi(i2, i3, i4, i5, i6, i7, i8, m57439d(wrap, i7 * i8 * 3), bArr);
    }

    /* renamed from: f */
    public final String m57441f() {
        int i = this.f85655i;
        return (i == 0 || this.f85656j == 0) ? "no thumbnail" : String.format("thumbnail: %dx%d", Integer.valueOf(i), Integer.valueOf(this.f85656j));
    }

    /* renamed from: g */
    public final String m57442g() {
        int i = this.f85652f;
        return i != 0 ? i != 1 ? i != 2 ? "(unknown unit)" : "dpcm" : "dpi" : "(aspect only)";
    }

    @Override // com.sunia.HTREnginev2.C13767gd
    public String toString() {
        return String.format("JFIF v%d.%02d %dx%d %s (%s)", Integer.valueOf(this.f85650d), Integer.valueOf(this.f85651e), Integer.valueOf(this.f85653g), Integer.valueOf(this.f85654h), m57442g(), m57441f());
    }
}
