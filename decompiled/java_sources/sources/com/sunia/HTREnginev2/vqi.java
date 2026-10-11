package com.sunia.HTREnginev2;

import com.onyx.android.sdk.base.utils.ColorUtils;
import java.io.DataInput;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes10.dex */
public final class vqi extends C13767gd {

    /* renamed from: f */
    public static final int f87823f = 16;

    /* renamed from: g */
    public static final int f87824g = 17;

    /* renamed from: h */
    public static final int f87825h = 19;

    /* renamed from: d */
    public final int f87826d;

    /* renamed from: e */
    public final byte[] f87827e;

    public vqi(int i, byte[] bArr, byte[] bArr2) {
        super(65504, "JFXX", bArr2);
        this.f87826d = i;
        this.f87827e = bArr;
    }

    /* renamed from: e */
    public static vqi m57869e(DataInput dataInput, int i) throws IOException {
        dataInput.readFully(new byte[5]);
        int i2 = (i - 2) - 5;
        byte[] bArr = new byte[i2];
        dataInput.readFully(bArr);
        int i3 = i2 - 1;
        return new vqi(bArr[0] & 255, i3 > 0 ? Arrays.copyOfRange(bArr, 1, i3) : null, bArr);
    }

    /* renamed from: d */
    public final String m57870d() {
        int i = this.f87826d;
        return i != 16 ? i != 17 ? i != 19 ? String.valueOf(i) : ColorUtils.RGB_COLOR_START : "Indexed" : "JPEG";
    }

    @Override // com.sunia.HTREnginev2.C13767gd
    public String toString() {
        return String.format("JFXX extension (%s thumb size: %d)", m57870d(), Integer.valueOf(this.f87827e.length));
    }
}
