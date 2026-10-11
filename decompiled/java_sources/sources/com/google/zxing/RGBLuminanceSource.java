package com.google.zxing;

/* loaded from: classes4.dex */
public final class RGBLuminanceSource extends LuminanceSource {

    /* renamed from: c */
    public final byte[] f38212c;

    /* renamed from: d */
    public final int f38213d;

    /* renamed from: e */
    public final int f38214e;

    /* renamed from: f */
    public final int f38215f;

    /* renamed from: g */
    public final int f38216g;

    public RGBLuminanceSource(int i, int i2, int[] iArr) {
        super(i, i2);
        this.f38213d = i;
        this.f38214e = i2;
        this.f38215f = 0;
        this.f38216g = 0;
        int i3 = i * i2;
        this.f38212c = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = iArr[i4];
            this.f38212c[i4] = (byte) (((((i5 >> 16) & 255) + ((i5 >> 7) & 510)) + (i5 & 255)) / 4);
        }
    }

    @Override // com.google.zxing.LuminanceSource
    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        return new RGBLuminanceSource(this.f38212c, this.f38213d, this.f38214e, this.f38215f + i, this.f38216g + i2, i3, i4);
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i = this.f38213d;
        if (width == i && height == this.f38214e) {
            return this.f38212c;
        }
        int i2 = width * height;
        byte[] bArr = new byte[i2];
        int i3 = (this.f38216g * i) + this.f38215f;
        if (width == i) {
            System.arraycopy(this.f38212c, i3, bArr, 0, i2);
            return bArr;
        }
        for (int i4 = 0; i4 < height; i4++) {
            System.arraycopy(this.f38212c, i3, bArr, i4 * width, width);
            i3 += this.f38213d;
        }
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int i, byte[] bArr) {
        if (i < 0 || i >= getHeight()) {
            throw new IllegalArgumentException("Requested row is outside the image: " + i);
        }
        int width = getWidth();
        if (bArr == null || bArr.length < width) {
            bArr = new byte[width];
        }
        System.arraycopy(this.f38212c, ((i + this.f38216g) * this.f38213d) + this.f38215f, bArr, 0, width);
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }

    public RGBLuminanceSource(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        super(i5, i6);
        if (i5 + i3 <= i && i6 + i4 <= i2) {
            this.f38212c = bArr;
            this.f38213d = i;
            this.f38214e = i2;
            this.f38215f = i3;
            this.f38216g = i4;
            return;
        }
        throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    }
}
