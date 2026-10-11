package java.awt.image;

import java.awt.InternalError;
import java.awt.Transparency;
import java.awt.color.ColorSpace;
import java.awt.color.ICC_ColorSpace;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import sun.java2d.cmm.CMSManager;
import sun.java2d.cmm.ColorTransform;
import sun.java2d.cmm.PCMM;

/* loaded from: classes5.dex */
public abstract class ColorModel implements Transparency, Cloneable {
    private static ColorModel RGBdefault;
    static Map<ICC_ColorSpace, byte[]> g16Tos8Map;
    static Map<ICC_ColorSpace, byte[]> g8Tos8Map;
    static byte[] l16Tos8;
    static byte[] l8Tos8;
    static Map<ICC_ColorSpace, short[]> lg16Toog16Map;
    static Map<ICC_ColorSpace, byte[]> lg16Toog8Map;
    private static boolean loaded;
    static short[] s8Tol16;
    static byte[] s8Tol8;
    ColorSpace colorSpace;
    int colorSpaceType;
    boolean isAlphaPremultiplied;
    boolean is_sRGB;
    int maxBits;
    int[] nBits;
    int numColorComponents;
    int numComponents;
    private long pData;
    protected int pixel_bits;
    boolean supportsAlpha;
    protected int transferType;
    int transparency;

    static {
        loadLibraries();
        initIDs();
        l8Tos8 = null;
        s8Tol8 = null;
        l16Tos8 = null;
        s8Tol16 = null;
        g8Tos8Map = null;
        lg16Toog8Map = null;
        g16Tos8Map = null;
        lg16Toog16Map = null;
    }

    public ColorModel(int i) {
        this.transparency = 3;
        this.supportsAlpha = true;
        this.isAlphaPremultiplied = false;
        this.numComponents = -1;
        this.numColorComponents = -1;
        this.colorSpace = ColorSpace.getInstance(1000);
        this.colorSpaceType = 5;
        this.is_sRGB = true;
        this.pixel_bits = i;
        if (i >= 1) {
            this.numComponents = 4;
            this.numColorComponents = 3;
            this.maxBits = i;
            this.transferType = getDefaultTransferType(i);
            return;
        }
        throw new IllegalArgumentException("Number of bits must be > 0");
    }

    public static int getDefaultTransferType(int i) {
        if (i <= 8) {
            return 0;
        }
        if (i <= 16) {
            return 1;
        }
        return i <= 32 ? 3 : 32;
    }

    public static byte[] getGray16TosRGB8LUT(ICC_ColorSpace iCC_ColorSpace) {
        byte[] bArr;
        if (isLinearGRAYspace(iCC_ColorSpace)) {
            return getLinearRGB16TosRGB8LUT();
        }
        Map<ICC_ColorSpace, byte[]> map = g16Tos8Map;
        if (map != null && (bArr = map.get(iCC_ColorSpace)) != null) {
            return bArr;
        }
        short[] sArr = new short[65536];
        int i = 0;
        for (int i2 = 0; i2 <= 65535; i2++) {
            sArr[i2] = (short) i2;
        }
        PCMM module = CMSManager.getModule();
        short[] colorConvert = module.createTransform(new ColorTransform[]{module.createTransform(iCC_ColorSpace.getProfile(), -1, 1), module.createTransform(((ICC_ColorSpace) ColorSpace.getInstance(1000)).getProfile(), -1, 2)}).colorConvert(sArr, (short[]) null);
        byte[] bArr2 = new byte[65536];
        int i3 = 2;
        while (i <= 65535) {
            bArr2[i] = (byte) (((colorConvert[i3] & 65535) * 0.0038910506f) + 0.5f);
            i++;
            i3 += 3;
        }
        if (g16Tos8Map == null) {
            g16Tos8Map = Collections.synchronizedMap(new WeakHashMap(2));
        }
        g16Tos8Map.put(iCC_ColorSpace, bArr2);
        return bArr2;
    }

    public static byte[] getGray8TosRGB8LUT(ICC_ColorSpace iCC_ColorSpace) {
        byte[] bArr;
        if (isLinearGRAYspace(iCC_ColorSpace)) {
            return getLinearRGB8TosRGB8LUT();
        }
        Map<ICC_ColorSpace, byte[]> map = g8Tos8Map;
        if (map != null && (bArr = map.get(iCC_ColorSpace)) != null) {
            return bArr;
        }
        byte[] bArr2 = new byte[256];
        int i = 0;
        for (int i2 = 0; i2 <= 255; i2++) {
            bArr2[i2] = (byte) i2;
        }
        PCMM module = CMSManager.getModule();
        byte[] colorConvert = module.createTransform(new ColorTransform[]{module.createTransform(iCC_ColorSpace.getProfile(), -1, 1), module.createTransform(((ICC_ColorSpace) ColorSpace.getInstance(1000)).getProfile(), -1, 2)}).colorConvert(bArr2, (byte[]) null);
        int i3 = 2;
        while (i <= 255) {
            bArr2[i] = colorConvert[i3];
            i++;
            i3 += 3;
        }
        if (g8Tos8Map == null) {
            g8Tos8Map = Collections.synchronizedMap(new WeakHashMap(2));
        }
        g8Tos8Map.put(iCC_ColorSpace, bArr2);
        return bArr2;
    }

    public static short[] getLinearGray16ToOtherGray16LUT(ICC_ColorSpace iCC_ColorSpace) {
        short[] sArr;
        Map<ICC_ColorSpace, short[]> map = lg16Toog16Map;
        if (map != null && (sArr = map.get(iCC_ColorSpace)) != null) {
            return sArr;
        }
        short[] sArr2 = new short[65536];
        for (int i = 0; i <= 65535; i++) {
            sArr2[i] = (short) i;
        }
        PCMM module = CMSManager.getModule();
        short[] colorConvert = module.createTransform(new ColorTransform[]{module.createTransform(((ICC_ColorSpace) ColorSpace.getInstance(1003)).getProfile(), -1, 1), module.createTransform(iCC_ColorSpace.getProfile(), -1, 2)}).colorConvert(sArr2, (short[]) null);
        if (lg16Toog16Map == null) {
            lg16Toog16Map = Collections.synchronizedMap(new WeakHashMap(2));
        }
        lg16Toog16Map.put(iCC_ColorSpace, colorConvert);
        return colorConvert;
    }

    public static byte[] getLinearGray16ToOtherGray8LUT(ICC_ColorSpace iCC_ColorSpace) {
        byte[] bArr;
        Map<ICC_ColorSpace, byte[]> map = lg16Toog8Map;
        if (map != null && (bArr = map.get(iCC_ColorSpace)) != null) {
            return bArr;
        }
        short[] sArr = new short[65536];
        for (int i = 0; i <= 65535; i++) {
            sArr[i] = (short) i;
        }
        PCMM module = CMSManager.getModule();
        short[] colorConvert = module.createTransform(new ColorTransform[]{module.createTransform(((ICC_ColorSpace) ColorSpace.getInstance(1003)).getProfile(), -1, 1), module.createTransform(iCC_ColorSpace.getProfile(), -1, 2)}).colorConvert(sArr, (short[]) null);
        byte[] bArr2 = new byte[65536];
        for (int i2 = 0; i2 <= 65535; i2++) {
            bArr2[i2] = (byte) (((colorConvert[i2] & 65535) * 0.0038910506f) + 0.5f);
        }
        if (lg16Toog8Map == null) {
            lg16Toog8Map = Collections.synchronizedMap(new WeakHashMap(2));
        }
        lg16Toog8Map.put(iCC_ColorSpace, bArr2);
        return bArr2;
    }

    public static byte[] getLinearRGB16TosRGB8LUT() {
        if (l16Tos8 == null) {
            l16Tos8 = new byte[65536];
            for (int i = 0; i <= 65535; i++) {
                float f = i / 65535.0f;
                l16Tos8[i] = (byte) Math.round((f <= 0.0031308f ? f * 12.92f : (((float) Math.pow(f, 0.4166666666666667d)) * 1.055f) - 0.055f) * 255.0f);
            }
        }
        return l16Tos8;
    }

    public static byte[] getLinearRGB8TosRGB8LUT() {
        if (l8Tos8 == null) {
            l8Tos8 = new byte[256];
            for (int i = 0; i <= 255; i++) {
                float f = i / 255.0f;
                l8Tos8[i] = (byte) Math.round((f <= 0.0031308f ? f * 12.92f : (((float) Math.pow(f, 0.4166666666666667d)) * 1.055f) - 0.055f) * 255.0f);
            }
        }
        return l8Tos8;
    }

    public static ColorModel getRGBdefault() {
        if (RGBdefault == null) {
            RGBdefault = new DirectColorModel(32, 16711680, 65280, 255, -16777216);
        }
        return RGBdefault;
    }

    public static short[] getsRGB8ToLinearRGB16LUT() {
        if (s8Tol16 == null) {
            s8Tol16 = new short[256];
            for (int i = 0; i <= 255; i++) {
                float f = i / 255.0f;
                s8Tol16[i] = (short) Math.round((f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4d)) * 65535.0f);
            }
        }
        return s8Tol16;
    }

    public static byte[] getsRGB8ToLinearRGB8LUT() {
        if (s8Tol8 == null) {
            s8Tol8 = new byte[256];
            for (int i = 0; i <= 255; i++) {
                float f = i / 255.0f;
                s8Tol8[i] = (byte) Math.round((f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4d)) * 255.0f);
            }
        }
        return s8Tol8;
    }

    private static void initIDs() {
    }

    public static boolean isLinearGRAYspace(ColorSpace colorSpace) {
        return colorSpace == CMSManager.GRAYspace;
    }

    public static boolean isLinearRGBspace(ColorSpace colorSpace) {
        return colorSpace == CMSManager.LINEAR_RGBspace;
    }

    public static void loadLibraries() {
        if (loaded) {
            return;
        }
        loaded = true;
    }

    public ColorModel coerceData(WritableRaster writableRaster, boolean z) {
        throw new UnsupportedOperationException("This method is not supported by this color model");
    }

    public SampleModel createCompatibleSampleModel(int i, int i2) {
        throw new UnsupportedOperationException("This method is not supported by this color model");
    }

    public WritableRaster createCompatibleWritableRaster(int i, int i2) {
        throw new UnsupportedOperationException("This method is not supported by this color model");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ColorModel)) {
            return false;
        }
        ColorModel colorModel = (ColorModel) obj;
        if (this == colorModel) {
            return true;
        }
        if (this.supportsAlpha != colorModel.hasAlpha() || this.isAlphaPremultiplied != colorModel.isAlphaPremultiplied() || this.pixel_bits != colorModel.getPixelSize() || this.transparency != colorModel.getTransparency() || this.numComponents != colorModel.getNumComponents()) {
            return false;
        }
        int[] componentSize = colorModel.getComponentSize();
        int[] iArr = this.nBits;
        if (iArr == null || componentSize == null) {
            return iArr == null && componentSize == null;
        }
        for (int i = 0; i < this.numComponents; i++) {
            if (this.nBits[i] != componentSize[i]) {
                return false;
            }
        }
        return true;
    }

    public void finalize() {
    }

    public abstract int getAlpha(int i);

    public int getAlpha(Object obj) {
        int i;
        int length;
        int i2 = this.transferType;
        if (i2 == 0) {
            byte[] bArr = (byte[]) obj;
            i = bArr[0] & 255;
            length = bArr.length;
        } else if (i2 == 1) {
            short[] sArr = (short[]) obj;
            i = sArr[0] & 65535;
            length = sArr.length;
        } else if (i2 == 3) {
            int[] iArr = (int[]) obj;
            i = iArr[0];
            length = iArr.length;
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        if (length == 1) {
            return getAlpha(i);
        }
        throw new UnsupportedOperationException("This method is not supported by this color model");
    }

    public WritableRaster getAlphaRaster(WritableRaster writableRaster) {
        return null;
    }

    public abstract int getBlue(int i);

    public int getBlue(Object obj) {
        int i;
        int length;
        int i2 = this.transferType;
        if (i2 == 0) {
            byte[] bArr = (byte[]) obj;
            i = bArr[0] & 255;
            length = bArr.length;
        } else if (i2 == 1) {
            short[] sArr = (short[]) obj;
            i = sArr[0] & 65535;
            length = sArr.length;
        } else if (i2 == 3) {
            int[] iArr = (int[]) obj;
            i = iArr[0];
            length = iArr.length;
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        if (length == 1) {
            return getBlue(i);
        }
        throw new UnsupportedOperationException("This method is not supported by this color model");
    }

    public final ColorSpace getColorSpace() {
        return this.colorSpace;
    }

    public int getComponentSize(int i) {
        int[] iArr = this.nBits;
        if (iArr != null) {
            return iArr[i];
        }
        throw new NullPointerException("Number of bits array is null.");
    }

    public int[] getComponents(int i, int[] iArr, int i2) {
        throw new UnsupportedOperationException("This method is not supported by this color model.");
    }

    public int getDataElement(int[] iArr, int i) {
        throw new UnsupportedOperationException("This method is not supported by this color model.");
    }

    public Object getDataElements(int i, Object obj) {
        throw new UnsupportedOperationException("This method is not supported by this color model.");
    }

    public abstract int getGreen(int i);

    public int getGreen(Object obj) {
        int i;
        int length;
        int i2 = this.transferType;
        if (i2 == 0) {
            byte[] bArr = (byte[]) obj;
            i = bArr[0] & 255;
            length = bArr.length;
        } else if (i2 == 1) {
            short[] sArr = (short[]) obj;
            i = sArr[0] & 65535;
            length = sArr.length;
        } else if (i2 == 3) {
            int[] iArr = (int[]) obj;
            i = iArr[0];
            length = iArr.length;
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        if (length == 1) {
            return getGreen(i);
        }
        throw new UnsupportedOperationException("This method is not supported by this color model");
    }

    public float[] getNormalizedComponents(int[] iArr, int i, float[] fArr, int i2) {
        if (this.colorSpace != null) {
            if (this.nBits != null) {
                int length = iArr.length - i;
                int i3 = this.numComponents;
                if (length >= i3) {
                    if (fArr == null) {
                        fArr = new float[i3 + i2];
                    }
                    int i4 = 0;
                    if (this.supportsAlpha && this.isAlphaPremultiplied) {
                        int i5 = this.numColorComponents;
                        float f = iArr[i + i5] / ((1 << r0[i5]) - 1);
                        if (f != 0.0f) {
                            while (i4 < this.numColorComponents) {
                                fArr[i2 + i4] = iArr[i + i4] / (((1 << this.nBits[i4]) - 1) * f);
                                i4++;
                            }
                        } else {
                            while (i4 < this.numColorComponents) {
                                fArr[i2 + i4] = 0.0f;
                                i4++;
                            }
                        }
                        fArr[i2 + this.numColorComponents] = f;
                    } else {
                        while (i4 < this.numComponents) {
                            fArr[i2 + i4] = iArr[i + i4] / ((1 << this.nBits[i4]) - 1);
                            i4++;
                        }
                    }
                    return fArr;
                }
                throw new IllegalArgumentException("Incorrect number of components.  Expecting " + this.numComponents);
            }
            throw new UnsupportedOperationException("This method is not supported.  Unable to determine #bits per component.");
        }
        throw new UnsupportedOperationException("This method is not supported by this color model.");
    }

    public int getNumColorComponents() {
        return this.numColorComponents;
    }

    public int getNumComponents() {
        return this.numComponents;
    }

    public int getPixelSize() {
        return this.pixel_bits;
    }

    public int getRGB(int i) {
        return (getBlue(i) << 0) | (getAlpha(i) << 24) | (getRed(i) << 16) | (getGreen(i) << 8);
    }

    public abstract int getRed(int i);

    public int getRed(Object obj) {
        int i;
        int length;
        int i2 = this.transferType;
        if (i2 == 0) {
            byte[] bArr = (byte[]) obj;
            i = bArr[0] & 255;
            length = bArr.length;
        } else if (i2 == 1) {
            short[] sArr = (short[]) obj;
            i = sArr[0] & 65535;
            length = sArr.length;
        } else if (i2 == 3) {
            int[] iArr = (int[]) obj;
            i = iArr[0];
            length = iArr.length;
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        if (length == 1) {
            return getRed(i);
        }
        throw new UnsupportedOperationException("This method is not supported by this color model");
    }

    public final int getTransferType() {
        return this.transferType;
    }

    @Override // java.awt.Transparency
    public int getTransparency() {
        return this.transparency;
    }

    public int[] getUnnormalizedComponents(float[] fArr, int i, int[] iArr, int i2) {
        int i3;
        if (this.colorSpace == null) {
            throw new UnsupportedOperationException("This method is not supported by this color model.");
        }
        if (this.nBits == null) {
            throw new UnsupportedOperationException("This method is not supported.  Unable to determine #bits per component.");
        }
        int length = fArr.length - i;
        int i4 = this.numComponents;
        if (length < i4) {
            throw new IllegalArgumentException("Incorrect number of components.  Expecting " + this.numComponents);
        }
        if (iArr == null) {
            iArr = new int[i4 + i2];
        }
        int i5 = 0;
        if (this.supportsAlpha && this.isAlphaPremultiplied) {
            float f = fArr[this.numColorComponents + i];
            while (true) {
                i3 = this.numColorComponents;
                if (i5 >= i3) {
                    break;
                }
                iArr[i2 + i5] = (int) ((fArr[i + i5] * ((1 << this.nBits[i5]) - 1) * f) + 0.5f);
                i5++;
            }
            iArr[i2 + i3] = (int) ((f * ((1 << this.nBits[i3]) - 1)) + 0.5f);
        } else {
            while (i5 < this.numComponents) {
                iArr[i2 + i5] = (int) ((fArr[i + i5] * ((1 << this.nBits[i5]) - 1)) + 0.5f);
                i5++;
            }
        }
        return iArr;
    }

    public final boolean hasAlpha() {
        return this.supportsAlpha;
    }

    public int hashCode() {
        int i = (this.supportsAlpha ? 2 : 3) + (this.isAlphaPremultiplied ? 4 : 5) + (this.pixel_bits * 6) + (this.transparency * 7) + (this.numComponents * 8);
        if (this.nBits != null) {
            for (int i2 = 0; i2 < this.numComponents; i2++) {
                i += this.nBits[i2] * (i2 + 9);
            }
        }
        return i;
    }

    public final boolean isAlphaPremultiplied() {
        return this.isAlphaPremultiplied;
    }

    public boolean isCompatibleRaster(Raster raster) {
        throw new UnsupportedOperationException("This method has not been implemented for this ColorModel.");
    }

    public boolean isCompatibleSampleModel(SampleModel sampleModel) {
        throw new UnsupportedOperationException("This method is not supported by this color model");
    }

    public String toString() {
        return new String("ColorModel: #pixelBits = " + this.pixel_bits + " numComponents = " + this.numComponents + " color space = " + this.colorSpace + " transparency = " + this.transparency + " has alpha = " + this.supportsAlpha + " isAlphaPre = " + this.isAlphaPremultiplied);
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ColorModel m72614clone() {
        try {
            return (ColorModel) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    public int[] getComponents(Object obj, int[] iArr, int i) {
        throw new UnsupportedOperationException("This method is not supported by this color model.");
    }

    public int getDataElement(float[] fArr, int i) {
        return getDataElement(getUnnormalizedComponents(fArr, i, null, 0), 0);
    }

    public Object getDataElements(int[] iArr, int i, Object obj) {
        throw new UnsupportedOperationException("This method has not been implemented for this color model.");
    }

    public Object getDataElements(float[] fArr, int i, Object obj) {
        return getDataElements(getUnnormalizedComponents(fArr, i, null, 0), 0, obj);
    }

    public int[] getComponentSize() {
        int[] iArr = this.nBits;
        if (iArr != null) {
            return (int[]) iArr.clone();
        }
        return null;
    }

    public int getRGB(Object obj) {
        return (getBlue(obj) << 0) | (getAlpha(obj) << 24) | (getRed(obj) << 16) | (getGreen(obj) << 8);
    }

    public ColorModel(int i, int[] iArr, ColorSpace colorSpace, boolean z, boolean z2, int i2, int i3) {
        this.transparency = 3;
        this.supportsAlpha = true;
        this.isAlphaPremultiplied = false;
        this.numComponents = -1;
        this.numColorComponents = -1;
        ColorSpace.getInstance(1000);
        this.colorSpaceType = 5;
        this.is_sRGB = true;
        this.colorSpace = colorSpace;
        this.colorSpaceType = colorSpace.getType();
        int numComponents = colorSpace.getNumComponents();
        this.numColorComponents = numComponents;
        int i4 = numComponents + (z ? 1 : 0);
        this.numComponents = i4;
        this.supportsAlpha = z;
        if (iArr.length < i4) {
            throw new IllegalArgumentException("Number of color/alpha components should be " + this.numComponents + " but length of bits array is " + iArr.length);
        }
        if (i2 >= 1 && i2 <= 3) {
            if (!z) {
                this.isAlphaPremultiplied = false;
                this.transparency = 1;
            } else {
                this.isAlphaPremultiplied = z2;
                this.transparency = i2;
            }
            this.nBits = (int[]) iArr.clone();
            this.pixel_bits = i;
            if (i > 0) {
                this.maxBits = 0;
                for (int i5 : iArr) {
                    if (i5 >= 0) {
                        if (this.maxBits < i5) {
                            this.maxBits = i5;
                        }
                    } else {
                        throw new IllegalArgumentException("Number of bits must be >= 0");
                    }
                }
                if (this.maxBits != 0) {
                    if (colorSpace != ColorSpace.getInstance(1000)) {
                        this.is_sRGB = false;
                    }
                    this.transferType = i3;
                    return;
                }
                throw new IllegalArgumentException("There must be at least one component with > 0 pixel bits.");
            }
            throw new IllegalArgumentException("Number of pixel bits must be > 0");
        }
        throw new IllegalArgumentException("Unknown transparency: " + i2);
    }

    public float[] getNormalizedComponents(Object obj, float[] fArr, int i) {
        return getNormalizedComponents(getComponents(obj, (int[]) null, 0), 0, fArr, i);
    }
}
