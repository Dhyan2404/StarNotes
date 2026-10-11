package java.awt.image;

import java.util.Hashtable;

/* loaded from: classes5.dex */
public class ReplicateScaleFilter extends ImageFilter {
    protected int destHeight;
    protected int destWidth;
    protected Object outpixbuf;
    protected int srcHeight;
    protected int srcWidth;
    protected int[] srccols;
    protected int[] srcrows;

    public ReplicateScaleFilter(int i, int i2) {
        if (i != 0 && i2 != 0) {
            this.destWidth = i;
            this.destHeight = i2;
            return;
        }
        throw new IllegalArgumentException("Width (" + i + ") and height (" + i2 + ") must be non-zero");
    }

    private void calculateMaps() {
        this.srcrows = new int[this.destHeight + 1];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = this.destHeight;
            if (i2 > i3) {
                break;
            }
            int[] iArr = this.srcrows;
            int i4 = this.srcHeight;
            iArr[i2] = (((i2 * 2) * i4) + i4) / (i3 * 2);
            i2++;
        }
        this.srccols = new int[this.destWidth + 1];
        while (true) {
            int i5 = this.destWidth;
            if (i > i5) {
                return;
            }
            int[] iArr2 = this.srccols;
            int i6 = this.srcWidth;
            iArr2[i] = (((i * 2) * i6) + i6) / (i5 * 2);
            i++;
        }
    }

    @Override // java.awt.image.ImageFilter, java.awt.image.ImageConsumer
    public void setDimensions(int i, int i2) {
        this.srcWidth = i;
        this.srcHeight = i2;
        int i3 = this.destWidth;
        if (i3 < 0) {
            int i4 = this.destHeight;
            if (i4 < 0) {
                this.destWidth = i;
                this.destHeight = i2;
            } else {
                this.destWidth = (i * i4) / i2;
            }
        } else if (this.destHeight < 0) {
            this.destHeight = (i2 * i3) / i;
        }
        this.consumer.setDimensions(this.destWidth, this.destHeight);
    }

    @Override // java.awt.image.ImageFilter, java.awt.image.ImageConsumer
    public void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, byte[] bArr, int i5, int i6) {
        byte[] bArr2;
        if (this.srcrows == null || this.srccols == null) {
            calculateMaps();
        }
        int i7 = this.destWidth;
        int i8 = ((((i * 2) * i7) + r3) - 1) / (this.srcWidth * 2);
        int i9 = i2 * 2 * this.destHeight;
        int i10 = ((i9 + r4) - 1) / (this.srcHeight * 2);
        Object obj = this.outpixbuf;
        if (obj != null && (obj instanceof byte[])) {
            bArr2 = (byte[]) obj;
        } else {
            bArr2 = new byte[i7];
            this.outpixbuf = bArr2;
        }
        byte[] bArr3 = bArr2;
        while (true) {
            int i11 = this.srcrows[i10];
            if (i11 >= i2 + i4) {
                return;
            }
            int i12 = i5 + ((i11 - i2) * i6);
            int i13 = i8;
            while (true) {
                int i14 = this.srccols[i13];
                if (i14 >= i + i3) {
                    break;
                }
                bArr3[i13] = bArr[(i14 + i12) - i];
                i13++;
            }
            if (i13 > i8) {
                this.consumer.setPixels(i8, i10, i13 - i8, 1, colorModel, bArr3, i8, this.destWidth);
            }
            i10++;
        }
    }

    @Override // java.awt.image.ImageFilter, java.awt.image.ImageConsumer
    public void setProperties(Hashtable<?, ?> hashtable) {
        Hashtable<?, ?> hashtable2 = (Hashtable) hashtable.clone();
        String str = this.destWidth + "x" + this.destHeight;
        Object obj = hashtable2.get("rescale");
        if (obj != null && (obj instanceof String)) {
            str = ((String) obj) + ", " + str;
        }
        hashtable2.put("rescale", str);
        super.setProperties(hashtable2);
    }

    @Override // java.awt.image.ImageFilter, java.awt.image.ImageConsumer
    public void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, int[] iArr, int i5, int i6) {
        int[] iArr2;
        if (this.srcrows == null || this.srccols == null) {
            calculateMaps();
        }
        int i7 = this.destWidth;
        int i8 = ((((i * 2) * i7) + r3) - 1) / (this.srcWidth * 2);
        int i9 = i2 * 2 * this.destHeight;
        int i10 = ((i9 + r4) - 1) / (this.srcHeight * 2);
        Object obj = this.outpixbuf;
        if (obj != null && (obj instanceof int[])) {
            iArr2 = (int[]) obj;
        } else {
            iArr2 = new int[i7];
            this.outpixbuf = iArr2;
        }
        int[] iArr3 = iArr2;
        while (true) {
            int i11 = this.srcrows[i10];
            if (i11 >= i2 + i4) {
                return;
            }
            int i12 = i5 + ((i11 - i2) * i6);
            int i13 = i8;
            while (true) {
                int i14 = this.srccols[i13];
                if (i14 >= i + i3) {
                    break;
                }
                iArr3[i13] = iArr[(i14 + i12) - i];
                i13++;
            }
            if (i13 > i8) {
                this.consumer.setPixels(i8, i10, i13 - i8, 1, colorModel, iArr3, i8, this.destWidth);
            }
            i10++;
        }
    }
}
