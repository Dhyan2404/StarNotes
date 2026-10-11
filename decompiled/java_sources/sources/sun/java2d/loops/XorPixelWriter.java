package sun.java2d.loops;

import java.awt.image.ColorModel;
import java.awt.image.WritableRaster;

/* loaded from: classes16.dex */
abstract class XorPixelWriter extends PixelWriter {
    protected ColorModel dstCM;

    /* loaded from: classes16.dex */
    public static class ByteData extends XorPixelWriter {
        byte[] xorData;

        public ByteData(Object obj, Object obj2) {
            this.xorData = (byte[]) obj;
            xorPixel(obj2);
            this.xorData = (byte[]) obj2;
        }

        @Override // sun.java2d.loops.PixelWriter
        public /* bridge */ /* synthetic */ void setRaster(WritableRaster writableRaster) {
            super.setRaster(writableRaster);
        }

        @Override // sun.java2d.loops.XorPixelWriter, sun.java2d.loops.PixelWriter
        public /* bridge */ /* synthetic */ void writePixel(int i, int i2) {
            super.writePixel(i, i2);
        }

        @Override // sun.java2d.loops.XorPixelWriter
        public void xorPixel(Object obj) {
            byte[] bArr = (byte[]) obj;
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = (byte) (bArr[i] ^ this.xorData[i]);
            }
        }
    }

    /* loaded from: classes16.dex */
    public static class DoubleData extends XorPixelWriter {
        long[] xorData;

        public DoubleData(Object obj, Object obj2) {
            double[] dArr = (double[]) obj;
            double[] dArr2 = (double[]) obj2;
            this.xorData = new long[dArr.length];
            for (int i = 0; i < dArr.length; i++) {
                this.xorData[i] = Double.doubleToLongBits(dArr[i]) ^ Double.doubleToLongBits(dArr2[i]);
            }
        }

        @Override // sun.java2d.loops.PixelWriter
        public /* bridge */ /* synthetic */ void setRaster(WritableRaster writableRaster) {
            super.setRaster(writableRaster);
        }

        @Override // sun.java2d.loops.XorPixelWriter, sun.java2d.loops.PixelWriter
        public /* bridge */ /* synthetic */ void writePixel(int i, int i2) {
            super.writePixel(i, i2);
        }

        @Override // sun.java2d.loops.XorPixelWriter
        public void xorPixel(Object obj) {
            double[] dArr = (double[]) obj;
            for (int i = 0; i < dArr.length; i++) {
                dArr[i] = Double.longBitsToDouble(Double.doubleToLongBits(dArr[i]) ^ this.xorData[i]);
            }
        }
    }

    /* loaded from: classes16.dex */
    public static class FloatData extends XorPixelWriter {
        int[] xorData;

        public FloatData(Object obj, Object obj2) {
            float[] fArr = (float[]) obj;
            float[] fArr2 = (float[]) obj2;
            this.xorData = new int[fArr.length];
            for (int i = 0; i < fArr.length; i++) {
                this.xorData[i] = Float.floatToIntBits(fArr[i]) ^ Float.floatToIntBits(fArr2[i]);
            }
        }

        @Override // sun.java2d.loops.PixelWriter
        public /* bridge */ /* synthetic */ void setRaster(WritableRaster writableRaster) {
            super.setRaster(writableRaster);
        }

        @Override // sun.java2d.loops.XorPixelWriter, sun.java2d.loops.PixelWriter
        public /* bridge */ /* synthetic */ void writePixel(int i, int i2) {
            super.writePixel(i, i2);
        }

        @Override // sun.java2d.loops.XorPixelWriter
        public void xorPixel(Object obj) {
            float[] fArr = (float[]) obj;
            for (int i = 0; i < fArr.length; i++) {
                fArr[i] = Float.intBitsToFloat(Float.floatToIntBits(fArr[i]) ^ this.xorData[i]);
            }
        }
    }

    /* loaded from: classes16.dex */
    public static class IntData extends XorPixelWriter {
        int[] xorData;

        public IntData(Object obj, Object obj2) {
            this.xorData = (int[]) obj;
            xorPixel(obj2);
            this.xorData = (int[]) obj2;
        }

        @Override // sun.java2d.loops.PixelWriter
        public /* bridge */ /* synthetic */ void setRaster(WritableRaster writableRaster) {
            super.setRaster(writableRaster);
        }

        @Override // sun.java2d.loops.XorPixelWriter, sun.java2d.loops.PixelWriter
        public /* bridge */ /* synthetic */ void writePixel(int i, int i2) {
            super.writePixel(i, i2);
        }

        @Override // sun.java2d.loops.XorPixelWriter
        public void xorPixel(Object obj) {
            int[] iArr = (int[]) obj;
            for (int i = 0; i < iArr.length; i++) {
                iArr[i] = iArr[i] ^ this.xorData[i];
            }
        }
    }

    /* loaded from: classes16.dex */
    public static class ShortData extends XorPixelWriter {
        short[] xorData;

        public ShortData(Object obj, Object obj2) {
            this.xorData = (short[]) obj;
            xorPixel(obj2);
            this.xorData = (short[]) obj2;
        }

        @Override // sun.java2d.loops.PixelWriter
        public /* bridge */ /* synthetic */ void setRaster(WritableRaster writableRaster) {
            super.setRaster(writableRaster);
        }

        @Override // sun.java2d.loops.XorPixelWriter, sun.java2d.loops.PixelWriter
        public /* bridge */ /* synthetic */ void writePixel(int i, int i2) {
            super.writePixel(i, i2);
        }

        @Override // sun.java2d.loops.XorPixelWriter
        public void xorPixel(Object obj) {
            short[] sArr = (short[]) obj;
            for (int i = 0; i < sArr.length; i++) {
                sArr[i] = (short) (sArr[i] ^ this.xorData[i]);
            }
        }
    }

    @Override // sun.java2d.loops.PixelWriter
    public void writePixel(int i, int i2) {
        Object dataElements = this.dstRast.getDataElements(i, i2, null);
        xorPixel(dataElements);
        this.dstRast.setDataElements(i, i2, dataElements);
    }

    public abstract void xorPixel(Object obj);
}
