package com.google.zxing;

/* loaded from: classes4.dex */
public final class PlanarYUVLuminanceSource extends LuminanceSource {

    /* renamed from: h */
    public static final int f38206h = 2;

    /* renamed from: c */
    public final byte[] f38207c;

    /* renamed from: d */
    public final int f38208d;

    /* renamed from: e */
    public final int f38209e;

    /* renamed from: f */
    public final int f38210f;

    /* renamed from: g */
    public final int f38211g;

    public PlanarYUVLuminanceSource(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(i5, i6);
        if (i3 + i5 > i || i4 + i6 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f38207c = bArr;
        this.f38208d = i;
        this.f38209e = i2;
        this.f38210f = i3;
        this.f38211g = i4;
        if (z) {
            m30418a(i5, i6);
        }
    }

    /* renamed from: a */
    public final void m30418a(int i, int i2) {
        byte[] bArr = this.f38207c;
        int i3 = (this.f38211g * this.f38208d) + this.f38210f;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = (i / 2) + i3;
            int i6 = (i3 + i) - 1;
            int i7 = i3;
            while (i7 < i5) {
                byte b = bArr[i7];
                bArr[i7] = bArr[i6];
                bArr[i6] = b;
                i7++;
                i6--;
            }
            i4++;
            i3 += this.f38208d;
        }
    }

    @Override // com.google.zxing.LuminanceSource
    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        return new PlanarYUVLuminanceSource(this.f38207c, this.f38208d, this.f38209e, this.f38210f + i, this.f38211g + i2, i3, i4, false);
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i = this.f38208d;
        if (width == i && height == this.f38209e) {
            return this.f38207c;
        }
        int i2 = width * height;
        byte[] bArr = new byte[i2];
        int i3 = (this.f38211g * i) + this.f38210f;
        if (width == i) {
            System.arraycopy(this.f38207c, i3, bArr, 0, i2);
            return bArr;
        }
        for (int i4 = 0; i4 < height; i4++) {
            System.arraycopy(this.f38207c, i3, bArr, i4 * width, width);
            i3 += this.f38208d;
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
        System.arraycopy(this.f38207c, ((i + this.f38211g) * this.f38208d) + this.f38210f, bArr, 0, width);
        return bArr;
    }

    public int getThumbnailHeight() {
        return getHeight() / 2;
    }

    public int getThumbnailWidth() {
        return getWidth() / 2;
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }

    public int[] renderThumbnail() {
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int[] iArr = new int[width * height];
        byte[] bArr = this.f38207c;
        int i = (this.f38211g * this.f38208d) + this.f38210f;
        for (int i2 = 0; i2 < height; i2++) {
            int i3 = i2 * width;
            for (int i4 = 0; i4 < width; i4++) {
                iArr[i3 + i4] = ((bArr[(i4 << 1) + i] & 255) * 65793) | (-16777216);
            }
            i += this.f38208d << 1;
        }
        return iArr;
    }
}
