package com.google.zxing;

import com.google.i18n.phonenumbers.PhoneNumberUtil;

/* loaded from: classes4.dex */
public abstract class LuminanceSource {

    /* renamed from: a */
    public final int f38201a;

    /* renamed from: b */
    public final int f38202b;

    public LuminanceSource(int i, int i2) {
        this.f38201a = i;
        this.f38202b = i2;
    }

    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        throw new UnsupportedOperationException("This luminance source does not support cropping.");
    }

    public final int getHeight() {
        return this.f38202b;
    }

    public abstract byte[] getMatrix();

    public abstract byte[] getRow(int i, byte[] bArr);

    public final int getWidth() {
        return this.f38201a;
    }

    public LuminanceSource invert() {
        return new InvertedLuminanceSource(this);
    }

    public boolean isCropSupported() {
        return false;
    }

    public boolean isRotateSupported() {
        return false;
    }

    public LuminanceSource rotateCounterClockwise() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public LuminanceSource rotateCounterClockwise45() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 45 degrees.");
    }

    public final String toString() {
        int i = this.f38201a;
        byte[] bArr = new byte[i];
        StringBuilder sb = new StringBuilder(this.f38202b * (i + 1));
        for (int i2 = 0; i2 < this.f38202b; i2++) {
            bArr = getRow(i2, bArr);
            for (int i3 = 0; i3 < this.f38201a; i3++) {
                int i4 = bArr[i3] & 255;
                sb.append(i4 < 64 ? '#' : i4 < 128 ? PhoneNumberUtil.f36455s : i4 < 192 ? '.' : ' ');
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
