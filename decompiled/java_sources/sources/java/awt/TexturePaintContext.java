package java.awt;

import java.awt.geom.AffineTransform;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.DirectColorModel;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.lang.ref.WeakReference;
import sun.awt.image.ByteInterleavedRaster;
import sun.awt.image.IntegerInterleavedRaster;
import sun.awt.image.SunWritableRaster;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class TexturePaintContext implements PaintContext {
    private static WeakReference<Raster> argbRasRef;
    private static WeakReference<Raster> byteRasRef;
    private static WeakReference<Raster> xrgbRasRef;
    int bHeight;
    int bWidth;
    int colincx;
    int colincxerr;
    int colincy;
    int colincyerr;
    ColorModel colorModel;
    double incXAcross;
    double incXDown;
    double incYAcross;
    double incYDown;
    int maxWidth;
    WritableRaster outRas;
    int rowincx;
    int rowincxerr;
    int rowincy;
    int rowincyerr;
    double xOrg;
    double yOrg;
    public static ColorModel xrgbmodel = new DirectColorModel(24, 16711680, 65280, 255);
    public static ColorModel argbmodel = ColorModel.getRGBdefault();

    /* loaded from: classes4.dex */
    public static class Any extends TexturePaintContext {
        boolean filter;
        WritableRaster srcRas;

        public Any(WritableRaster writableRaster, ColorModel colorModel, AffineTransform affineTransform, int i, boolean z) {
            super(colorModel, affineTransform, writableRaster.getWidth(), writableRaster.getHeight(), i);
            this.srcRas = writableRaster;
            this.filter = z;
        }

        @Override // java.awt.TexturePaintContext
        public WritableRaster makeRaster(int i, int i2) {
            return TexturePaintContext.makeRaster(this.colorModel, this.srcRas, i, i2);
        }

        @Override // java.awt.TexturePaintContext
        public void setRaster(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            int i17;
            int i18;
            int i19;
            int i20;
            int i21;
            WritableRaster writableRaster = this.srcRas;
            WritableRaster writableRaster2 = this.outRas;
            int[] iArr = this.filter ? new int[4] : null;
            int i22 = i2;
            int i23 = i3;
            int i24 = i4;
            int i25 = i6;
            Object obj = null;
            int i26 = 0;
            int i27 = i;
            while (i26 < i25) {
                int i28 = i27;
                int i29 = i22;
                int i30 = i29;
                int i31 = i23;
                int i32 = i24;
                int i33 = 0;
                while (true) {
                    i17 = i24;
                    if (i33 >= i5) {
                        break;
                    }
                    obj = writableRaster.getDataElements(i28, i30, obj);
                    if (this.filter) {
                        int i34 = i28 + 1;
                        if (i34 >= i7) {
                            i34 = 0;
                        }
                        i20 = i27;
                        int i35 = i30 + 1;
                        i21 = i23;
                        if (i35 >= i8) {
                            i35 = 0;
                        }
                        iArr[0] = this.colorModel.getRGB(obj);
                        Object dataElements = writableRaster.getDataElements(i34, i30, obj);
                        iArr[1] = this.colorModel.getRGB(dataElements);
                        Object dataElements2 = writableRaster.getDataElements(i28, i35, dataElements);
                        iArr[2] = this.colorModel.getRGB(dataElements2);
                        Object dataElements3 = writableRaster.getDataElements(i34, i35, dataElements2);
                        iArr[3] = this.colorModel.getRGB(dataElements3);
                        obj = this.colorModel.getDataElements(TexturePaintContext.blend(iArr, i31, i32), dataElements3);
                    } else {
                        i20 = i27;
                        i21 = i23;
                    }
                    writableRaster2.setDataElements(i33, i26, obj);
                    i31 += i10;
                    if (i31 < 0) {
                        i28++;
                        i31 &= Integer.MAX_VALUE;
                    }
                    i28 += i9;
                    if (i28 >= i7) {
                        i28 -= i7;
                    }
                    i32 += i12;
                    if (i32 < 0) {
                        i30++;
                        i32 &= Integer.MAX_VALUE;
                    }
                    i30 += i11;
                    if (i30 >= i8) {
                        i30 -= i8;
                    }
                    i33++;
                    i24 = i17;
                    i27 = i20;
                    i23 = i21;
                }
                int i36 = i27;
                i23 += i14;
                if (i23 < 0) {
                    i23 &= Integer.MAX_VALUE;
                    i18 = i36 + 1;
                } else {
                    i18 = i36;
                }
                i27 = i18 + i13;
                if (i27 >= i7) {
                    i27 -= i7;
                }
                i24 = i17 + i16;
                if (i24 < 0) {
                    i19 = i29 + 1;
                    i24 &= Integer.MAX_VALUE;
                } else {
                    i19 = i29;
                }
                i22 = i19 + i15;
                if (i22 >= i8) {
                    i22 -= i8;
                }
                i26++;
                i25 = i6;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class Byte extends TexturePaintContext {
        byte[] inData;
        int inOff;
        int inSpan;
        byte[] outData;
        int outOff;
        int outSpan;
        ByteInterleavedRaster srcRas;

        public Byte(ByteInterleavedRaster byteInterleavedRaster, ColorModel colorModel, AffineTransform affineTransform, int i) {
            super(colorModel, affineTransform, byteInterleavedRaster.getWidth(), byteInterleavedRaster.getHeight(), i);
            this.srcRas = byteInterleavedRaster;
            this.inData = byteInterleavedRaster.getDataStorage();
            this.inSpan = byteInterleavedRaster.getScanlineStride();
            this.inOff = byteInterleavedRaster.getDataOffset(0);
        }

        @Override // java.awt.TexturePaintContext, java.awt.PaintContext
        public void dispose() {
            TexturePaintContext.dropByteRaster(this.outRas);
        }

        @Override // java.awt.TexturePaintContext
        public WritableRaster makeRaster(int i, int i2) {
            WritableRaster makeByteRaster = TexturePaintContext.makeByteRaster(this.srcRas, i, i2);
            ByteInterleavedRaster byteInterleavedRaster = (ByteInterleavedRaster) makeByteRaster;
            this.outData = byteInterleavedRaster.getDataStorage();
            this.outSpan = byteInterleavedRaster.getScanlineStride();
            this.outOff = byteInterleavedRaster.getDataOffset(0);
            return makeByteRaster;
        }

        @Override // java.awt.TexturePaintContext
        public void setRaster(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            int i17;
            boolean z;
            int i18;
            int i19;
            int i20;
            byte[] bArr = this.inData;
            byte[] bArr2 = this.outData;
            int i21 = this.outOff;
            int i22 = this.inSpan;
            int i23 = this.inOff;
            int i24 = this.outSpan;
            boolean z2 = i9 == 1 && i10 == 0 && i11 == 0 && i12 == 0;
            if (z2) {
                i24 -= i5;
            }
            int i25 = i2;
            int i26 = i3;
            int i27 = i4;
            int i28 = i6;
            int i29 = i24;
            int i30 = i21;
            int i31 = 0;
            int i32 = i;
            while (i31 < i28) {
                if (z2) {
                    int i33 = i23 + (i25 * i22) + i7;
                    int i34 = i7 - i32;
                    i30 += i5;
                    if (i7 >= 32) {
                        z = z2;
                        int i35 = i34;
                        int i36 = i5;
                        while (i36 > 0) {
                            int i37 = i31;
                            int i38 = i36 < i35 ? i36 : i35;
                            int i39 = i25;
                            int i40 = i27;
                            System.arraycopy(bArr, i33 - i35, bArr2, i30 - i36, i38);
                            i36 -= i38;
                            i35 -= i38;
                            if (i35 == 0) {
                                i35 = i7;
                            }
                            i31 = i37;
                            i25 = i39;
                            i27 = i40;
                        }
                        i17 = i31;
                        i18 = i25;
                        i19 = i27;
                    } else {
                        i17 = i31;
                        z = z2;
                        i18 = i25;
                        i19 = i27;
                        for (int i41 = i5; i41 > 0; i41--) {
                            bArr2[i30 - i41] = bArr[i33 - i34];
                            i34--;
                            if (i34 == 0) {
                                i34 = i7;
                            }
                        }
                    }
                } else {
                    i17 = i31;
                    z = z2;
                    i18 = i25;
                    i19 = i27;
                    int i42 = i18;
                    int i43 = i32;
                    int i44 = i26;
                    for (int i45 = 0; i45 < i5; i45++) {
                        bArr2[i30 + i45] = bArr[i23 + (i42 * i22) + i43];
                        i44 += i10;
                        if (i44 < 0) {
                            i44 &= Integer.MAX_VALUE;
                            i43++;
                        }
                        i43 += i9;
                        if (i43 >= i7) {
                            i43 -= i7;
                        }
                        i27 += i12;
                        if (i27 < 0) {
                            i27 &= Integer.MAX_VALUE;
                            i42++;
                        }
                        i42 += i11;
                        if (i42 >= i8) {
                            i42 -= i8;
                        }
                    }
                }
                i26 += i14;
                if (i26 < 0) {
                    i32++;
                    i26 &= Integer.MAX_VALUE;
                }
                i32 += i13;
                if (i32 >= i7) {
                    i32 -= i7;
                }
                i27 = i19 + i16;
                if (i27 < 0) {
                    i20 = i18 + 1;
                    i27 &= Integer.MAX_VALUE;
                } else {
                    i20 = i18;
                }
                i25 = i20 + i15;
                if (i25 >= i8) {
                    i25 -= i8;
                }
                i30 += i29;
                i31 = i17 + 1;
                i28 = i6;
                z2 = z;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class ByteFilter extends TexturePaintContext {
        byte[] inData;
        int inOff;
        int[] inPalette;
        int inSpan;
        int[] outData;
        int outOff;
        int outSpan;
        ByteInterleavedRaster srcRas;

        public ByteFilter(ByteInterleavedRaster byteInterleavedRaster, ColorModel colorModel, AffineTransform affineTransform, int i) {
            super(colorModel.getTransparency() == 1 ? TexturePaintContext.xrgbmodel : TexturePaintContext.argbmodel, affineTransform, byteInterleavedRaster.getWidth(), byteInterleavedRaster.getHeight(), i);
            int[] iArr = new int[256];
            this.inPalette = iArr;
            ((IndexColorModel) colorModel).getRGBs(iArr);
            this.srcRas = byteInterleavedRaster;
            this.inData = byteInterleavedRaster.getDataStorage();
            this.inSpan = byteInterleavedRaster.getScanlineStride();
            this.inOff = byteInterleavedRaster.getDataOffset(0);
        }

        @Override // java.awt.TexturePaintContext
        public WritableRaster makeRaster(int i, int i2) {
            WritableRaster makeRaster = TexturePaintContext.makeRaster(this.colorModel, null, i, i2);
            IntegerInterleavedRaster integerInterleavedRaster = (IntegerInterleavedRaster) makeRaster;
            this.outData = integerInterleavedRaster.getDataStorage();
            this.outSpan = integerInterleavedRaster.getScanlineStride();
            this.outOff = integerInterleavedRaster.getDataOffset(0);
            return makeRaster;
        }

        @Override // java.awt.TexturePaintContext
        public void setRaster(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            int i17;
            int i18;
            ByteFilter byteFilter = this;
            byte[] bArr = byteFilter.inData;
            int[] iArr = byteFilter.outData;
            int i19 = byteFilter.outOff;
            int i20 = byteFilter.inSpan;
            int i21 = byteFilter.inOff;
            int i22 = byteFilter.outSpan;
            int[] iArr2 = new int[4];
            int i23 = i2;
            int i24 = i3;
            int i25 = i4;
            int i26 = i6;
            int i27 = i19;
            int i28 = 0;
            int i29 = i;
            while (i28 < i26) {
                int i30 = i29;
                int i31 = i22;
                int i32 = i28;
                int i33 = i23;
                int i34 = i24;
                int i35 = i25;
                int i36 = 0;
                while (true) {
                    i17 = i23;
                    if (i36 >= i5) {
                        break;
                    }
                    int i37 = i30 + 1;
                    int i38 = i37 >= i7 ? 0 : i37;
                    int i39 = i33 + 1;
                    int i40 = i39 >= i8 ? 0 : i39;
                    int[] iArr3 = byteFilter.inPalette;
                    int i41 = i21 + i30;
                    int i42 = i20 * i33;
                    iArr2[0] = iArr3[bArr[i41 + i42] & 255];
                    int i43 = i21 + i38;
                    iArr2[1] = iArr3[bArr[i43 + i42] & 255];
                    int i44 = i40 * i20;
                    iArr2[2] = iArr3[bArr[i41 + i44] & 255];
                    iArr2[3] = iArr3[bArr[i43 + i44] & 255];
                    iArr[i27 + i36] = TexturePaintContext.blend(iArr2, i34, i35);
                    i34 += i10;
                    if (i34 < 0) {
                        i30 = i37;
                        i34 &= Integer.MAX_VALUE;
                    }
                    int i45 = i30 + i9;
                    if (i45 >= i7) {
                        i45 -= i7;
                    }
                    i30 = i45;
                    i35 += i12;
                    if (i35 < 0) {
                        i33 = i39;
                        i35 &= Integer.MAX_VALUE;
                    }
                    int i46 = i33 + i11;
                    if (i46 >= i8) {
                        i46 -= i8;
                    }
                    i33 = i46;
                    i36++;
                    byteFilter = this;
                    i23 = i17;
                }
                i24 += i14;
                if (i24 < 0) {
                    i29++;
                    i24 &= Integer.MAX_VALUE;
                }
                i29 += i13;
                if (i29 >= i7) {
                    i29 -= i7;
                }
                i25 += i16;
                if (i25 < 0) {
                    i18 = i17 + 1;
                    i25 &= Integer.MAX_VALUE;
                } else {
                    i18 = i17;
                }
                i23 = i18 + i15;
                if (i23 >= i8) {
                    i23 -= i8;
                }
                i27 += i31;
                i28 = i32 + 1;
                byteFilter = this;
                i26 = i6;
                i22 = i31;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class Int extends TexturePaintContext {
        boolean filter;
        int[] inData;
        int inOff;
        int inSpan;
        int[] outData;
        int outOff;
        int outSpan;
        IntegerInterleavedRaster srcRas;

        public Int(IntegerInterleavedRaster integerInterleavedRaster, ColorModel colorModel, AffineTransform affineTransform, int i, boolean z) {
            super(colorModel, affineTransform, integerInterleavedRaster.getWidth(), integerInterleavedRaster.getHeight(), i);
            this.srcRas = integerInterleavedRaster;
            this.inData = integerInterleavedRaster.getDataStorage();
            this.inSpan = integerInterleavedRaster.getScanlineStride();
            this.inOff = integerInterleavedRaster.getDataOffset(0);
            this.filter = z;
        }

        @Override // java.awt.TexturePaintContext
        public WritableRaster makeRaster(int i, int i2) {
            WritableRaster makeRaster = TexturePaintContext.makeRaster(this.colorModel, this.srcRas, i, i2);
            IntegerInterleavedRaster integerInterleavedRaster = (IntegerInterleavedRaster) makeRaster;
            this.outData = integerInterleavedRaster.getDataStorage();
            this.outSpan = integerInterleavedRaster.getScanlineStride();
            this.outOff = integerInterleavedRaster.getDataOffset(0);
            return makeRaster;
        }

        @Override // java.awt.TexturePaintContext
        public void setRaster(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            int i17;
            int i18;
            boolean z;
            int i19;
            boolean z2;
            int i20;
            int i21 = i5;
            int[] iArr = this.inData;
            int[] iArr2 = this.outData;
            int i22 = this.outOff;
            int i23 = this.inSpan;
            int i24 = this.inOff;
            int i25 = this.outSpan;
            boolean z3 = this.filter;
            boolean z4 = i9 == 1 && i10 == 0 && i11 == 0 && i12 == 0 && !z3;
            if (z4) {
                i25 -= i21;
            }
            int[] iArr3 = z3 ? new int[4] : null;
            int i26 = i2;
            int i27 = i3;
            int i28 = i4;
            int i29 = i6;
            int i30 = i22;
            int i31 = 0;
            int i32 = i;
            while (i31 < i29) {
                if (z4) {
                    int i33 = i24 + (i26 * i23) + i7;
                    int i34 = i7 - i32;
                    i30 += i21;
                    if (i7 >= 32) {
                        z = z4;
                        int i35 = i34;
                        int i36 = i21;
                        while (i36 > 0) {
                            int i37 = i25;
                            int i38 = i31;
                            int i39 = i36 < i35 ? i36 : i35;
                            int i40 = i26;
                            System.arraycopy(iArr, i33 - i35, iArr2, i30 - i36, i39);
                            i36 -= i39;
                            i35 -= i39;
                            if (i35 == 0) {
                                i35 = i7;
                            }
                            i31 = i38;
                            i26 = i40;
                            i25 = i37;
                        }
                        i17 = i25;
                        i18 = i31;
                        i19 = i26;
                    } else {
                        i17 = i25;
                        i18 = i31;
                        z = z4;
                        i19 = i26;
                        for (int i41 = i21; i41 > 0; i41--) {
                            iArr2[i30 - i41] = iArr[i33 - i34];
                            i34--;
                            if (i34 == 0) {
                                i34 = i7;
                            }
                        }
                    }
                } else {
                    i17 = i25;
                    i18 = i31;
                    z = z4;
                    i19 = i26;
                    int i42 = i19;
                    int i43 = i32;
                    int i44 = i27;
                    int i45 = i28;
                    int i46 = 0;
                    while (i46 < i21) {
                        if (z3) {
                            z2 = z3;
                            int i47 = i43 + 1;
                            if (i47 >= i7) {
                                i47 = 0;
                            }
                            int i48 = i42 + 1;
                            if (i48 >= i8) {
                                i48 = 0;
                            }
                            int i49 = i24 + (i42 * i23);
                            iArr3[0] = iArr[i49 + i43];
                            iArr3[1] = iArr[i49 + i47];
                            int i50 = (i48 * i23) + i24;
                            iArr3[2] = iArr[i50 + i43];
                            iArr3[3] = iArr[i50 + i47];
                            iArr2[i30 + i46] = TexturePaintContext.blend(iArr3, i44, i45);
                        } else {
                            z2 = z3;
                            iArr2[i30 + i46] = iArr[(i42 * i23) + i24 + i43];
                        }
                        i44 += i10;
                        if (i44 < 0) {
                            i43++;
                            i44 &= Integer.MAX_VALUE;
                        }
                        i43 += i9;
                        if (i43 >= i7) {
                            i43 -= i7;
                        }
                        i45 += i12;
                        if (i45 < 0) {
                            i42++;
                            i45 &= Integer.MAX_VALUE;
                        }
                        i42 += i11;
                        if (i42 >= i8) {
                            i42 -= i8;
                        }
                        i46++;
                        i21 = i5;
                        z3 = z2;
                    }
                }
                boolean z5 = z3;
                i27 += i14;
                if (i27 < 0) {
                    i32++;
                    i27 &= Integer.MAX_VALUE;
                }
                i32 += i13;
                if (i32 >= i7) {
                    i32 -= i7;
                }
                i28 += i16;
                if (i28 < 0) {
                    i20 = i19 + 1;
                    i28 &= Integer.MAX_VALUE;
                } else {
                    i20 = i19;
                }
                i26 = i20 + i15;
                if (i26 >= i8) {
                    i26 -= i8;
                }
                i30 += i17;
                i31 = i18 + 1;
                i21 = i5;
                i29 = i6;
                z3 = z5;
                z4 = z;
                i25 = i17;
            }
        }
    }

    public TexturePaintContext(ColorModel colorModel, AffineTransform affineTransform, int i, int i2, int i3) {
        this.colorModel = getInternedColorModel(colorModel);
        this.bWidth = i;
        this.bHeight = i2;
        this.maxWidth = i3;
        try {
            affineTransform = affineTransform.createInverse();
        } catch (NoninvertibleTransformException unused) {
            affineTransform.setToScale(0.0d, 0.0d);
        }
        double d = i;
        this.incXAcross = mod(affineTransform.getScaleX(), d);
        double d2 = i2;
        this.incYAcross = mod(affineTransform.getShearY(), d2);
        this.incXDown = mod(affineTransform.getShearX(), d);
        this.incYDown = mod(affineTransform.getScaleY(), d2);
        this.xOrg = affineTransform.getTranslateX();
        this.yOrg = affineTransform.getTranslateY();
        double d3 = this.incXAcross;
        this.colincx = (int) d3;
        this.colincy = (int) this.incYAcross;
        this.colincxerr = fractAsInt(d3);
        this.colincyerr = fractAsInt(this.incYAcross);
        double d4 = this.incXDown;
        this.rowincx = (int) d4;
        this.rowincy = (int) this.incYDown;
        this.rowincxerr = fractAsInt(d4);
        this.rowincyerr = fractAsInt(this.incYDown);
    }

    public static int blend(int[] iArr, int i, int i2) {
        int i3 = i >>> 19;
        int i4 = i2 >>> 19;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < 4; i9++) {
            int i10 = iArr[i9];
            i3 = 4096 - i3;
            if ((i9 & 1) == 0) {
                i4 = 4096 - i4;
            }
            int i11 = i3 * i4;
            if (i11 != 0) {
                i5 += (i10 >>> 24) * i11;
                i6 += ((i10 >>> 16) & 255) * i11;
                i7 += ((i10 >>> 8) & 255) * i11;
                i8 += (i10 & 255) * i11;
            }
        }
        return ((i8 + 8388608) >>> 24) | (((i5 + 8388608) >>> 24) << 24) | (((i6 + 8388608) >>> 24) << 16) | (((i7 + 8388608) >>> 24) << 8);
    }

    public static synchronized void dropByteRaster(Raster raster) {
        synchronized (TexturePaintContext.class) {
            if (raster == null) {
                return;
            }
            byteRasRef = new WeakReference<>(raster);
        }
    }

    public static synchronized void dropRaster(ColorModel colorModel, Raster raster) {
        synchronized (TexturePaintContext.class) {
            if (raster == null) {
                return;
            }
            if (xrgbmodel == colorModel) {
                xrgbRasRef = new WeakReference<>(raster);
            } else if (argbmodel == colorModel) {
                argbRasRef = new WeakReference<>(raster);
            }
        }
    }

    public static int fractAsInt(double d) {
        return (int) ((d % 1.0d) * 2.147483647E9d);
    }

    public static PaintContext getContext(BufferedImage bufferedImage, AffineTransform affineTransform, RenderingHints renderingHints, Rectangle rectangle) {
        WritableRaster raster = bufferedImage.getRaster();
        ColorModel colorModel = bufferedImage.getColorModel();
        int i = rectangle.width;
        Object obj = renderingHints.get(RenderingHints.KEY_INTERPOLATION);
        boolean z = obj != null ? obj != RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR : renderingHints.get(RenderingHints.KEY_RENDERING) == RenderingHints.VALUE_RENDER_QUALITY;
        if ((raster instanceof IntegerInterleavedRaster) && (!z || isFilterableDCM(colorModel))) {
            IntegerInterleavedRaster integerInterleavedRaster = (IntegerInterleavedRaster) raster;
            if (integerInterleavedRaster.getNumDataElements() == 1 && integerInterleavedRaster.getPixelStride() == 1) {
                return new Int(integerInterleavedRaster, colorModel, affineTransform, i, z);
            }
        } else if (raster instanceof ByteInterleavedRaster) {
            ByteInterleavedRaster byteInterleavedRaster = (ByteInterleavedRaster) raster;
            if (byteInterleavedRaster.getNumDataElements() == 1 && byteInterleavedRaster.getPixelStride() == 1) {
                if (!z) {
                    return new Byte(byteInterleavedRaster, colorModel, affineTransform, i);
                }
                if (isFilterableICM(colorModel)) {
                    return new ByteFilter(byteInterleavedRaster, colorModel, affineTransform, i);
                }
            }
        }
        return new Any(raster, colorModel, affineTransform, i, z);
    }

    public static ColorModel getInternedColorModel(ColorModel colorModel) {
        ColorModel colorModel2 = xrgbmodel;
        if (colorModel2 == colorModel || colorModel2.equals(colorModel)) {
            return xrgbmodel;
        }
        ColorModel colorModel3 = argbmodel;
        return (colorModel3 == colorModel || colorModel3.equals(colorModel)) ? argbmodel : colorModel;
    }

    public static boolean isFilterableDCM(ColorModel colorModel) {
        if (!(colorModel instanceof DirectColorModel)) {
            return false;
        }
        DirectColorModel directColorModel = (DirectColorModel) colorModel;
        return isMaskOK(directColorModel.getAlphaMask(), true) && isMaskOK(directColorModel.getRedMask(), false) && isMaskOK(directColorModel.getGreenMask(), false) && isMaskOK(directColorModel.getBlueMask(), false);
    }

    public static boolean isFilterableICM(ColorModel colorModel) {
        return (colorModel instanceof IndexColorModel) && ((IndexColorModel) colorModel).getMapSize() <= 256;
    }

    public static boolean isMaskOK(int i, boolean z) {
        return (z && i == 0) || i == 255 || i == 65280 || i == 16711680 || i == -16777216;
    }

    public static synchronized WritableRaster makeByteRaster(Raster raster, int i, int i2) {
        WritableRaster writableRaster;
        synchronized (TexturePaintContext.class) {
            WeakReference<Raster> weakReference = byteRasRef;
            if (weakReference != null && (writableRaster = (WritableRaster) weakReference.get()) != null && writableRaster.getWidth() >= i && writableRaster.getHeight() >= i2) {
                byteRasRef = null;
                return writableRaster;
            }
            if (i <= 32 && i2 <= 32) {
                i = 32;
                i2 = 32;
            }
            return raster.createCompatibleWritableRaster(i, i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0028, code lost:
    
        if (r8 <= 32) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002a, code lost:
    
        r7 = 32;
        r8 = 32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004f, code lost:
    
        if (r8 <= 32) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054 A[Catch: all -> 0x0060, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:8:0x000e, B:10:0x0016, B:12:0x001c, B:14:0x0022, B:22:0x0054, B:25:0x005a, B:28:0x002d, B:30:0x0031, B:32:0x0035, B:34:0x003d, B:36:0x0043, B:38:0x0049), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005a A[Catch: all -> 0x0060, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:8:0x000e, B:10:0x0016, B:12:0x001c, B:14:0x0022, B:22:0x0054, B:25:0x005a, B:28:0x002d, B:30:0x0031, B:32:0x0035, B:34:0x003d, B:36:0x0043, B:38:0x0049), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized java.awt.image.WritableRaster makeRaster(java.awt.image.ColorModel r5, java.awt.image.Raster r6, int r7, int r8) {
        /*
            java.lang.Class<java.awt.TexturePaintContext> r0 = java.awt.TexturePaintContext.class
            monitor-enter(r0)
            java.awt.image.ColorModel r1 = java.awt.TexturePaintContext.xrgbmodel     // Catch: java.lang.Throwable -> L60
            r2 = 0
            r3 = 32
            if (r1 != r5) goto L2d
            java.lang.ref.WeakReference<java.awt.image.Raster> r1 = java.awt.TexturePaintContext.xrgbRasRef     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L26
            java.lang.Object r1 = r1.get()     // Catch: java.lang.Throwable -> L60
            java.awt.image.WritableRaster r1 = (java.awt.image.WritableRaster) r1     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L26
            int r4 = r1.getWidth()     // Catch: java.lang.Throwable -> L60
            if (r4 < r7) goto L26
            int r4 = r1.getHeight()     // Catch: java.lang.Throwable -> L60
            if (r4 < r8) goto L26
            java.awt.TexturePaintContext.xrgbRasRef = r2     // Catch: java.lang.Throwable -> L60
            monitor-exit(r0)
            return r1
        L26:
            if (r7 > r3) goto L52
            if (r8 > r3) goto L52
        L2a:
            r7 = r3
            r8 = r7
            goto L52
        L2d:
            java.awt.image.ColorModel r1 = java.awt.TexturePaintContext.argbmodel     // Catch: java.lang.Throwable -> L60
            if (r1 != r5) goto L52
            java.lang.ref.WeakReference<java.awt.image.Raster> r1 = java.awt.TexturePaintContext.argbRasRef     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L4d
            java.lang.Object r1 = r1.get()     // Catch: java.lang.Throwable -> L60
            java.awt.image.WritableRaster r1 = (java.awt.image.WritableRaster) r1     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L4d
            int r4 = r1.getWidth()     // Catch: java.lang.Throwable -> L60
            if (r4 < r7) goto L4d
            int r4 = r1.getHeight()     // Catch: java.lang.Throwable -> L60
            if (r4 < r8) goto L4d
            java.awt.TexturePaintContext.argbRasRef = r2     // Catch: java.lang.Throwable -> L60
            monitor-exit(r0)
            return r1
        L4d:
            if (r7 > r3) goto L52
            if (r8 > r3) goto L52
            goto L2a
        L52:
            if (r6 == 0) goto L5a
            java.awt.image.WritableRaster r5 = r6.createCompatibleWritableRaster(r7, r8)     // Catch: java.lang.Throwable -> L60
            monitor-exit(r0)
            return r5
        L5a:
            java.awt.image.WritableRaster r5 = r5.createCompatibleWritableRaster(r7, r8)     // Catch: java.lang.Throwable -> L60
            monitor-exit(r0)
            return r5
        L60:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.TexturePaintContext.makeRaster(java.awt.image.ColorModel, java.awt.image.Raster, int, int):java.awt.image.WritableRaster");
    }

    public static double mod(double d, double d2) {
        double d3 = d % d2;
        if (d3 >= 0.0d) {
            return d3;
        }
        double d4 = d3 + d2;
        if (d4 >= d2) {
            return 0.0d;
        }
        return d4;
    }

    @Override // java.awt.PaintContext
    public void dispose() {
        dropRaster(this.colorModel, this.outRas);
    }

    @Override // java.awt.PaintContext
    public ColorModel getColorModel() {
        return this.colorModel;
    }

    @Override // java.awt.PaintContext
    public Raster getRaster(int i, int i2, int i3, int i4) {
        WritableRaster writableRaster = this.outRas;
        if (writableRaster == null || writableRaster.getWidth() < i3 || this.outRas.getHeight() < i4) {
            this.outRas = makeRaster(i4 == 1 ? Math.max(i3, this.maxWidth) : i3, i4);
        }
        double d = i;
        double d2 = i2;
        double mod = mod(this.xOrg + (this.incXAcross * d) + (this.incXDown * d2), this.bWidth);
        double mod2 = mod(this.yOrg + (d * this.incYAcross) + (d2 * this.incYDown), this.bHeight);
        setRaster((int) mod, (int) mod2, fractAsInt(mod), fractAsInt(mod2), i3, i4, this.bWidth, this.bHeight, this.colincx, this.colincxerr, this.colincy, this.colincyerr, this.rowincx, this.rowincxerr, this.rowincy, this.rowincyerr);
        SunWritableRaster.markDirty(this.outRas);
        return this.outRas;
    }

    public abstract WritableRaster makeRaster(int i, int i2);

    public abstract void setRaster(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16);
}
