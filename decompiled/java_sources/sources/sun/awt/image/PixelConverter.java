package sun.awt.image;

import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;

/* loaded from: classes16.dex */
public class PixelConverter {
    public static final PixelConverter instance = new PixelConverter();
    protected int alphaMask = 0;

    /* loaded from: classes16.dex */
    public static class Argb extends PixelConverter {
        public static final PixelConverter instance = new Argb();

        private Argb() {
            this.alphaMask = -16777216;
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            return i;
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return i;
        }
    }

    /* loaded from: classes16.dex */
    public static class ArgbBm extends PixelConverter {
        public static final PixelConverter instance = new ArgbBm();

        private ArgbBm() {
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            return (i << 7) >> 7;
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return ((i >> 31) << 24) | i;
        }
    }

    /* loaded from: classes16.dex */
    public static class ArgbPre extends PixelConverter {
        public static final PixelConverter instance = new ArgbPre();

        private ArgbPre() {
            this.alphaMask = -16777216;
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            int i2 = i >>> 24;
            if (i2 == 255 || i2 == 0) {
                return i;
            }
            int i3 = (i >> 16) & 255;
            int i4 = (i >> 8) & 255;
            int i5 = i & 255;
            int i6 = ((i3 << 8) - i3) / i2;
            int i7 = ((i4 << 8) - i4) / i2;
            return (i2 << 24) | (i6 << 16) | (i7 << 8) | (((i5 << 8) - i5) / i2);
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            if ((i >> 24) == -1) {
                return i;
            }
            int i2 = i >>> 24;
            int i3 = (i2 >> 7) + i2;
            return (i2 << 24) | (((((i >> 16) & 255) * i3) >> 8) << 16) | (((((i >> 8) & 255) * i3) >> 8) << 8) | (((i & 255) * i3) >> 8);
        }
    }

    /* loaded from: classes16.dex */
    public static class Bgrx extends PixelConverter {
        public static final PixelConverter instance = new Bgrx();

        private Bgrx() {
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            return (65280 & (i >> 8)) | ((i & 65280) << 8) | (-16777216) | (i >>> 24);
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return (i << 24) | ((i & 65280) << 8) | ((i >> 8) & 65280);
        }
    }

    /* loaded from: classes16.dex */
    public static class ByteGray extends PixelConverter {
        static final double BLU_MULT = 0.114d;
        static final double GRN_MULT = 0.587d;
        static final double RED_MULT = 0.299d;
        public static final PixelConverter instance = new ByteGray();

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            return ((((65280 | i) << 8) | i) << 8) | i;
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return (int) ((((i >> 16) & 255) * RED_MULT) + (((i >> 8) & 255) * GRN_MULT) + ((i & 255) * BLU_MULT) + 0.5d);
        }

        private ByteGray() {
        }
    }

    /* loaded from: classes16.dex */
    public static class Rgba extends PixelConverter {
        public static final PixelConverter instance = new Rgba();

        private Rgba() {
            this.alphaMask = 255;
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            return (i << 24) | (i >>> 8);
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return (i << 8) | (i >>> 24);
        }
    }

    /* loaded from: classes16.dex */
    public static class RgbaPre extends PixelConverter {
        public static final PixelConverter instance = new RgbaPre();

        private RgbaPre() {
            this.alphaMask = 255;
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            int i2 = i & 255;
            if (i2 == 255 || i2 == 0) {
                return (i >>> 8) | (i << 24);
            }
            int i3 = i >>> 24;
            int i4 = (i >> 16) & 255;
            int i5 = (i >> 8) & 255;
            return i2 | ((((i3 << 8) - i3) / i2) << 24) | ((((i4 << 8) - i4) / i2) << 16) | ((((i5 << 8) - i5) / i2) << 8);
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            if ((i >> 24) == -1) {
                return (i << 8) | (i >>> 24);
            }
            int i2 = i >>> 24;
            int i3 = (i >> 16) & 255;
            int i4 = (i >> 8) & 255;
            int i5 = (i2 >> 7) + i2;
            return i2 | ((((i & 255) * i5) >> 8) << 8) | (((i3 * i5) >> 8) << 24) | (((i4 * i5) >> 8) << 16);
        }
    }

    /* loaded from: classes16.dex */
    public static class Rgbx extends PixelConverter {
        public static final PixelConverter instance = new Rgbx();

        private Rgbx() {
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            return (i >> 8) | (-16777216);
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return i << 8;
        }
    }

    /* loaded from: classes16.dex */
    public static class Ushort4444Argb extends PixelConverter {
        public static final PixelConverter instance = new Ushort4444Argb();

        private Ushort4444Argb() {
            this.alphaMask = 61440;
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            int i2 = i << 12;
            int i3 = i << 8;
            int i4 = i << 4;
            return (((i << 16) | i2) & (-16777216)) | ((i2 | i3) & 16711680) | ((i3 | i4) & 65280) | (((i << 0) | i4) & 255);
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            int i2 = (i >> 8) & 240;
            return ((i >> 16) & 61440) | ((i >> 12) & 3840) | i2 | ((i >> 4) & 15);
        }
    }

    /* loaded from: classes16.dex */
    public static class Ushort555Rgb extends PixelConverter {
        public static final PixelConverter instance = new Ushort555Rgb();

        private Ushort555Rgb() {
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            int i2 = (i >> 10) & 31;
            int i3 = (i2 >> 2) | (i2 << 3);
            int i4 = (i >> 5) & 31;
            int i5 = (i4 >> 2) | (i4 << 3);
            int i6 = i & 31;
            return (i3 << 16) | (-16777216) | (i5 << 8) | (i6 >> 2) | (i6 << 3);
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return ((i >> 9) & 31744) | ((i >> 6) & 992) | ((i >> 3) & 31);
        }
    }

    /* loaded from: classes16.dex */
    public static class Ushort555Rgbx extends PixelConverter {
        public static final PixelConverter instance = new Ushort555Rgbx();

        private Ushort555Rgbx() {
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            int i2 = (i >> 11) & 31;
            int i3 = (i2 >> 2) | (i2 << 3);
            int i4 = (i >> 6) & 31;
            int i5 = (i4 >> 2) | (i4 << 3);
            int i6 = (i >> 1) & 31;
            return (i3 << 16) | (-16777216) | (i5 << 8) | (i6 >> 2) | (i6 << 3);
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return ((i >> 8) & BufferedImage.DCM_565_RED_MASK) | ((i >> 5) & 1984) | ((i >> 2) & 62);
        }
    }

    /* loaded from: classes16.dex */
    public static class Ushort565Rgb extends PixelConverter {
        public static final PixelConverter instance = new Ushort565Rgb();

        private Ushort565Rgb() {
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            int i2 = (i >> 11) & 31;
            int i3 = (i2 >> 2) | (i2 << 3);
            int i4 = (i >> 5) & 63;
            int i5 = (i4 >> 4) | (i4 << 2);
            int i6 = i & 31;
            return (i3 << 16) | (-16777216) | (i5 << 8) | (i6 >> 2) | (i6 << 3);
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return ((i >> 8) & BufferedImage.DCM_565_RED_MASK) | ((i >> 5) & BufferedImage.DCM_565_GRN_MASK) | ((i >> 3) & 31);
        }
    }

    /* loaded from: classes16.dex */
    public static class UshortGray extends ByteGray {
        static final double SHORT_MULT = 257.0d;
        static final double USHORT_BLU_MULT = 29.298000000000002d;
        static final double USHORT_GRN_MULT = 150.85899999999998d;
        static final double USHORT_RED_MULT = 76.843d;
        public static final PixelConverter instance = new UshortGray();

        private UshortGray() {
            super();
        }

        @Override // sun.awt.image.PixelConverter.ByteGray, sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            int i2 = i >> 8;
            return i2 | ((((65280 | i2) << 8) | i2) << 8);
        }

        @Override // sun.awt.image.PixelConverter.ByteGray, sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return (int) ((((i >> 16) & 255) * USHORT_RED_MULT) + (((i >> 8) & 255) * USHORT_GRN_MULT) + ((i & 255) * USHORT_BLU_MULT) + 0.5d);
        }
    }

    /* loaded from: classes16.dex */
    public static class Xbgr extends PixelConverter {
        public static final PixelConverter instance = new Xbgr();

        private Xbgr() {
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            return ((i & 255) << 16) | (-16777216) | (65280 & i) | ((i >> 16) & 255);
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return ((i & 255) << 16) | (65280 & i) | ((i >> 16) & 255);
        }
    }

    /* loaded from: classes16.dex */
    public static class Xrgb extends PixelConverter {
        public static final PixelConverter instance = new Xrgb();

        private Xrgb() {
        }

        @Override // sun.awt.image.PixelConverter
        public int pixelToRgb(int i, ColorModel colorModel) {
            return (-16777216) | i;
        }

        @Override // sun.awt.image.PixelConverter
        public int rgbToPixel(int i, ColorModel colorModel) {
            return i;
        }
    }

    public final int getAlphaMask() {
        return this.alphaMask;
    }

    public int pixelToRgb(int i, ColorModel colorModel) {
        return i;
    }

    public int rgbToPixel(int i, ColorModel colorModel) {
        int i2;
        int i3;
        Object dataElements = colorModel.getDataElements(i, null);
        int transferType = colorModel.getTransferType();
        if (transferType != 0) {
            if (transferType != 1 && transferType != 2) {
                return transferType != 3 ? i : ((int[]) dataElements)[0];
            }
            short[] sArr = (short[]) dataElements;
            return (sArr[0] & 65535) | (sArr.length > 1 ? sArr[1] << 16 : 0);
        }
        byte[] bArr = (byte[]) dataElements;
        int length = bArr.length;
        if (length != 1) {
            if (length != 2) {
                i3 = (length != 3 ? bArr[3] << 24 : 0) | ((bArr[2] & 255) << 16);
            } else {
                i3 = 0;
            }
            i2 = i3 | ((bArr[1] & 255) << 8);
        } else {
            i2 = 0;
        }
        return (bArr[0] & 255) | i2;
    }
}
