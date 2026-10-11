package java.awt.image;

/* loaded from: classes5.dex */
public class AreaAveragingScaleFilter extends ReplicateScaleFilter {
    private static final int neededHints = 6;
    private static final ColorModel rgbmodel = ColorModel.getRGBdefault();
    private float[] alphas;
    private float[] blues;
    private float[] greens;
    private boolean passthrough;
    private float[] reds;
    private int savedy;
    private int savedyrem;

    public AreaAveragingScaleFilter(int i, int i2) {
        super(i, i2);
    }

    private void accumPixels(int i, int i2, int i3, int i4, ColorModel colorModel, Object obj, int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        Object obj2 = obj;
        if (this.reds == null) {
            makeAccumBuffers();
        }
        int i12 = this.destHeight;
        if (i2 == 0) {
            i7 = i2;
            i10 = i12;
            i9 = 0;
            i8 = 0;
        } else {
            int i13 = this.savedy;
            i7 = i2;
            i8 = this.savedyrem;
            i9 = i13;
            i10 = i12;
        }
        int i14 = i5;
        while (i7 < i2 + i4) {
            float f = 0.0f;
            if (i8 == 0) {
                for (int i15 = 0; i15 < this.destWidth; i15++) {
                    float[] fArr = this.alphas;
                    float[] fArr2 = this.reds;
                    float[] fArr3 = this.greens;
                    this.blues[i15] = 0.0f;
                    fArr3[i15] = 0.0f;
                    fArr2[i15] = 0.0f;
                    fArr[i15] = 0.0f;
                }
                i8 = this.srcHeight;
            }
            int i16 = i10 < i8 ? i10 : i8;
            int i17 = i3;
            float f2 = 0.0f;
            float f3 = 0.0f;
            int i18 = this.srcWidth;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            float f4 = 0.0f;
            while (i19 < i17) {
                if (i20 == 0) {
                    int i22 = this.destWidth;
                    int rgb = colorModel.getRGB(obj2 instanceof byte[] ? ((byte[]) obj2)[i14 + i19] & 255 : ((int[]) obj2)[i14 + i19]);
                    float f5 = rgb >>> 24;
                    float f6 = (rgb >> 16) & 255;
                    float f7 = (rgb >> 8) & 255;
                    float f8 = rgb & 255;
                    if (f5 != 255.0f) {
                        float f9 = f5 / 255.0f;
                        f6 *= f9;
                        f7 *= f9;
                        f8 *= f9;
                    }
                    f2 = f7;
                    i11 = i22;
                    f = f5;
                    f3 = f8;
                    f4 = f6;
                } else {
                    i11 = i20;
                }
                int i23 = i11 < i18 ? i11 : i18;
                int i24 = i9;
                float f10 = i23 * i16;
                float[] fArr4 = this.alphas;
                fArr4[i21] = fArr4[i21] + (f10 * f);
                float[] fArr5 = this.reds;
                fArr5[i21] = fArr5[i21] + (f10 * f4);
                float[] fArr6 = this.greens;
                fArr6[i21] = fArr6[i21] + (f10 * f2);
                float[] fArr7 = this.blues;
                fArr7[i21] = fArr7[i21] + (f10 * f3);
                int i25 = i11 - i23;
                if (i25 == 0) {
                    i19++;
                }
                i18 -= i23;
                if (i18 == 0) {
                    i21++;
                    i18 = this.srcWidth;
                }
                i17 = i3;
                i9 = i24;
                i20 = i25;
                obj2 = obj;
            }
            int i26 = i9;
            i8 -= i16;
            if (i8 == 0) {
                int[] calcRow = calcRow();
                i9 = i26;
                do {
                    ImageConsumer imageConsumer = this.consumer;
                    int i27 = this.destWidth;
                    imageConsumer.setPixels(0, i9, i27, 1, rgbmodel, calcRow, 0, i27);
                    i9++;
                    i10 -= i16;
                    if (i10 < i16) {
                        break;
                    }
                } while (i16 == this.srcHeight);
            } else {
                i10 -= i16;
                i9 = i26;
            }
            if (i10 == 0) {
                i7++;
                i14 += i6;
                i10 = this.destHeight;
            }
            obj2 = obj;
        }
        this.savedyrem = i8;
        this.savedy = i9;
    }

    private int[] calcRow() {
        float f;
        float f2 = this.srcWidth * this.srcHeight;
        Object obj = this.outpixbuf;
        if (obj == null || !(obj instanceof int[])) {
            this.outpixbuf = new int[this.destWidth];
        }
        int[] iArr = (int[]) this.outpixbuf;
        for (int i = 0; i < this.destWidth; i++) {
            int round = Math.round(this.alphas[i] / f2);
            int i2 = 255;
            if (round <= 0) {
                f = f2;
                round = 0;
            } else if (round >= 255) {
                f = f2;
                round = 255;
            } else {
                f = this.alphas[i] / 255.0f;
            }
            int round2 = Math.round(this.reds[i] / f);
            int round3 = Math.round(this.greens[i] / f);
            int round4 = Math.round(this.blues[i] / f);
            if (round2 < 0) {
                round2 = 0;
            } else if (round2 > 255) {
                round2 = 255;
            }
            if (round3 < 0) {
                round3 = 0;
            } else if (round3 > 255) {
                round3 = 255;
            }
            if (round4 < 0) {
                i2 = 0;
            } else if (round4 <= 255) {
                i2 = round4;
            }
            iArr[i] = (round << 24) | (round2 << 16) | (round3 << 8) | i2;
        }
        return iArr;
    }

    private void makeAccumBuffers() {
        int i = this.destWidth;
        this.reds = new float[i];
        this.greens = new float[i];
        this.blues = new float[i];
        this.alphas = new float[i];
    }

    @Override // java.awt.image.ImageFilter, java.awt.image.ImageConsumer
    public void setHints(int i) {
        this.passthrough = (i & 6) != 6;
        super.setHints(i);
    }

    @Override // java.awt.image.ReplicateScaleFilter, java.awt.image.ImageFilter, java.awt.image.ImageConsumer
    public void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, byte[] bArr, int i5, int i6) {
        if (this.passthrough) {
            super.setPixels(i, i2, i3, i4, colorModel, bArr, i5, i6);
        } else {
            accumPixels(i, i2, i3, i4, colorModel, bArr, i5, i6);
        }
    }

    @Override // java.awt.image.ReplicateScaleFilter, java.awt.image.ImageFilter, java.awt.image.ImageConsumer
    public void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, int[] iArr, int i5, int i6) {
        if (this.passthrough) {
            super.setPixels(i, i2, i3, i4, colorModel, iArr, i5, i6);
        } else {
            accumPixels(i, i2, i3, i4, colorModel, iArr, i5, i6);
        }
    }
}
