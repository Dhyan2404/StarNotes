package java.awt.image;

import java.awt.Point;
import java.awt.color.ColorSpace;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Hashtable;
import sun.awt.image.BufImgSurfaceData;

/* loaded from: classes5.dex */
public class IndexColorModel extends ColorModel {
    private static final int CACHESIZE = 40;
    private boolean allgrayopaque;
    private BufImgSurfaceData.ICMColorData colorData;
    private int[] lookupcache;
    private int map_size;
    private int pixel_mask;
    private int[] rgb;
    private int transparent_index;
    private BigInteger validBits;
    private static int[] opaqueBits = {8, 8, 8};
    private static int[] alphaBits = {8, 8, 8, 8};

    static {
        ColorModel.loadLibraries();
        initIDs();
    }

    public IndexColorModel(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        super(i, opaqueBits, ColorSpace.getInstance(1000), false, false, 1, ColorModel.getDefaultTransferType(i));
        this.transparent_index = -1;
        this.colorData = null;
        this.lookupcache = new int[40];
        if (i >= 1 && i <= 16) {
            setRGBs(i2, bArr, bArr2, bArr3, null);
            calculatePixelMask();
            return;
        }
        throw new IllegalArgumentException("Number of bits must be between 1 and 16.");
    }

    private int calcRealMapSize(int i, int i2) {
        return Math.max(Math.max(1 << i, i2), 256);
    }

    private final void calculatePixelMask() {
        int i = this.pixel_bits;
        if (i == 3) {
            i = 4;
        } else if (i > 4 && i < 8) {
            i = 8;
        }
        this.pixel_mask = (1 << i) - 1;
    }

    private BigInteger getAllValid() {
        int i = (this.map_size + 7) / 8;
        byte[] bArr = new byte[i];
        Arrays.fill(bArr, (byte) -1);
        bArr[0] = (byte) (255 >>> ((i * 8) - this.map_size));
        return new BigInteger(1, bArr);
    }

    private static void initIDs() {
    }

    private Object installpixel(Object obj, int i) {
        byte[] bArr;
        Object obj2;
        short[] sArr;
        int[] iArr;
        int i2 = this.transferType;
        if (i2 == 0) {
            if (obj == null) {
                bArr = new byte[1];
                obj2 = bArr;
            } else {
                bArr = (byte[]) obj;
                obj2 = obj;
            }
            bArr[0] = (byte) i;
        } else if (i2 == 1) {
            if (obj == null) {
                sArr = new short[1];
                obj2 = sArr;
            } else {
                sArr = (short[]) obj;
                obj2 = obj;
            }
            sArr[0] = (short) i;
        } else {
            if (i2 != 3) {
                throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
            }
            if (obj == null) {
                iArr = new int[1];
                obj2 = iArr;
            } else {
                iArr = (int[]) obj;
                obj2 = obj;
            }
            iArr[0] = i;
        }
        return obj2;
    }

    private void setRGBs(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (i >= 1) {
            this.map_size = i;
            this.rgb = new int[calcRealMapSize(this.pixel_bits, i)];
            boolean z = true;
            int i2 = 1;
            int i3 = 255;
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = bArr[i4] & 255;
                int i6 = bArr2[i4] & 255;
                int i7 = bArr3[i4] & 255;
                z = z && i5 == i6 && i6 == i7;
                if (bArr4 != null && (i3 = bArr4[i4] & 255) != 255) {
                    if (i3 == 0) {
                        if (i2 == 1) {
                            i2 = 2;
                        }
                        if (this.transparent_index < 0) {
                            this.transparent_index = i4;
                        }
                    } else {
                        i2 = 3;
                    }
                    z = false;
                }
                this.rgb[i4] = (i5 << 16) | (i3 << 24) | (i6 << 8) | i7;
            }
            this.allgrayopaque = z;
            setTransparency(i2);
            return;
        }
        throw new IllegalArgumentException("Map size (" + i + ") must be >= 1");
    }

    private void setTransparency(int i) {
        if (this.transparency != i) {
            this.transparency = i;
            if (i == 1) {
                this.supportsAlpha = false;
                this.numComponents = 3;
                this.nBits = opaqueBits;
            } else {
                this.supportsAlpha = true;
                this.numComponents = 4;
                this.nBits = alphaBits;
            }
        }
    }

    private void setTransparentPixel(int i) {
        if (i < 0 || i >= this.map_size) {
            return;
        }
        int[] iArr = this.rgb;
        iArr[i] = iArr[i] & 16777215;
        this.transparent_index = i;
        this.allgrayopaque = false;
        if (this.transparency == 1) {
            setTransparency(2);
        }
    }

    public BufferedImage convertToIntDiscrete(Raster raster, boolean z) {
        int i;
        if (!isCompatibleRaster(raster)) {
            throw new IllegalArgumentException("This raster is not compatiblewith this IndexColorModel.");
        }
        ColorModel rGBdefault = (z || (i = this.transparency) == 3) ? ColorModel.getRGBdefault() : i == 2 ? new DirectColorModel(25, 16711680, 65280, 255, 16777216) : new DirectColorModel(24, 16711680, 65280, 255);
        int width = raster.getWidth();
        int height = raster.getHeight();
        WritableRaster createCompatibleWritableRaster = rGBdefault.createCompatibleWritableRaster(width, height);
        int minX = raster.getMinX();
        int minY = raster.getMinY();
        Object obj = null;
        int i2 = 0;
        while (i2 < height) {
            Object dataElements = raster.getDataElements(minX, minY, width, 1, obj);
            int[] intArray = dataElements instanceof int[] ? (int[]) dataElements : DataBuffer.toIntArray(dataElements);
            for (int i3 = 0; i3 < width; i3++) {
                intArray[i3] = this.rgb[intArray[i3] & this.pixel_mask];
            }
            createCompatibleWritableRaster.setDataElements(0, i2, width, 1, intArray);
            i2++;
            minY++;
            obj = dataElements;
        }
        return new BufferedImage(rGBdefault, createCompatibleWritableRaster, false, (Hashtable<?, ?>) null);
    }

    @Override // java.awt.image.ColorModel
    public SampleModel createCompatibleSampleModel(int i, int i2) {
        int[] iArr = {0};
        int i3 = this.pixel_bits;
        return (i3 == 1 || i3 == 2 || i3 == 4) ? new MultiPixelPackedSampleModel(this.transferType, i, i2, this.pixel_bits) : new ComponentSampleModel(this.transferType, i, i2, 1, i, iArr);
    }

    @Override // java.awt.image.ColorModel
    public WritableRaster createCompatibleWritableRaster(int i, int i2) {
        int i3 = this.pixel_bits;
        if (i3 == 1 || i3 == 2 || i3 == 4) {
            return Raster.createPackedRaster(0, i, i2, 1, i3, (Point) null);
        }
        if (i3 <= 8) {
            return Raster.createInterleavedRaster(0, i, i2, 1, null);
        }
        if (i3 <= 16) {
            return Raster.createInterleavedRaster(1, i, i2, 1, null);
        }
        throw new UnsupportedOperationException("This method is not supported  for pixel bits > 16.");
    }

    @Override // java.awt.image.ColorModel
    public void finalize() {
    }

    @Override // java.awt.image.ColorModel
    public final int getAlpha(int i) {
        return (this.rgb[this.pixel_mask & i] >> 24) & 255;
    }

    public final void getAlphas(byte[] bArr) {
        for (int i = 0; i < this.map_size; i++) {
            bArr[i] = (byte) (this.rgb[i] >> 24);
        }
    }

    @Override // java.awt.image.ColorModel
    public final int getBlue(int i) {
        return this.rgb[this.pixel_mask & i] & 255;
    }

    public final void getBlues(byte[] bArr) {
        for (int i = 0; i < this.map_size; i++) {
            bArr[i] = (byte) this.rgb[i];
        }
    }

    @Override // java.awt.image.ColorModel
    public int[] getComponentSize() {
        if (this.nBits == null) {
            if (this.supportsAlpha) {
                int[] iArr = new int[4];
                this.nBits = iArr;
                iArr[3] = 8;
            } else {
                this.nBits = new int[3];
            }
            int[] iArr2 = this.nBits;
            iArr2[2] = 8;
            iArr2[1] = 8;
            iArr2[0] = 8;
        }
        return (int[]) this.nBits.clone();
    }

    @Override // java.awt.image.ColorModel
    public int[] getComponents(int i, int[] iArr, int i2) {
        if (iArr == null) {
            iArr = new int[this.numComponents + i2];
        }
        iArr[i2 + 0] = getRed(i);
        iArr[i2 + 1] = getGreen(i);
        iArr[i2 + 2] = getBlue(i);
        if (this.supportsAlpha && iArr.length - i2 > 3) {
            iArr[i2 + 3] = getAlpha(i);
        }
        return iArr;
    }

    @Override // java.awt.image.ColorModel
    public int getDataElement(int[] iArr, int i) {
        Object dataElements = getDataElements((this.supportsAlpha ? iArr[i + 3] << 24 : -16777216) | (iArr[i + 0] << 16) | (iArr[i + 1] << 8) | iArr[i + 2], null);
        int i2 = this.transferType;
        if (i2 == 0) {
            return ((byte[]) dataElements)[0] & 255;
        }
        if (i2 == 1) {
            return ((short[]) dataElements)[0];
        }
        if (i2 == 3) {
            return ((int[]) dataElements)[0];
        }
        throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
    }

    @Override // java.awt.image.ColorModel
    public synchronized Object getDataElements(int i, Object obj) {
        BigInteger bigInteger;
        int i2;
        int i3;
        int i4;
        int i5 = (i >> 16) & 255;
        int i6 = (i >> 8) & 255;
        int i7 = i & 255;
        int i8 = i >>> 24;
        int i9 = 38;
        int i10 = 0;
        while (true) {
            if (i9 < 0) {
                break;
            }
            int[] iArr = this.lookupcache;
            int i11 = iArr[i9];
            if (i11 == 0) {
                i10 = i11;
                break;
            }
            if (i == iArr[i9 + 1]) {
                return installpixel(obj, ~i11);
            }
            i9 -= 2;
            i10 = i11;
        }
        if (this.allgrayopaque) {
            int i12 = (i5 * 77) + (i6 * 150) + (i7 * 29) + 128;
            int i13 = 256;
            int i14 = i12 / 256;
            int i15 = 0;
            while (true) {
                if (i15 >= this.map_size) {
                    break;
                }
                int i16 = this.rgb[i15];
                if (i16 != 0) {
                    int i17 = (i16 & 255) - i14;
                    if (i17 < 0) {
                        i17 = -i17;
                    }
                    if (i17 >= i13) {
                        continue;
                    } else {
                        if (i17 == 0) {
                            i10 = i15;
                            break;
                        }
                        i10 = i15;
                        i13 = i17;
                    }
                }
                i15++;
            }
        } else {
            int i18 = Integer.MAX_VALUE;
            if (this.transparency == 1) {
                int[] iArr2 = this.rgb;
                int i19 = 0;
                while (true) {
                    if (i19 >= this.map_size) {
                        break;
                    }
                    int i20 = iArr2[i19];
                    if (i20 == i && i20 != 0) {
                        i18 = 0;
                        i10 = i19;
                        break;
                    }
                    i19++;
                }
                if (i18 != 0) {
                    for (int i21 = 0; i21 < this.map_size; i21++) {
                        int i22 = iArr2[i21];
                        if (i22 != 0 && (i4 = (i3 = ((i22 >> 16) & 255) - i5) * i3) < i18) {
                            int i23 = ((i22 >> 8) & 255) - i6;
                            int i24 = i4 + (i23 * i23);
                            if (i24 < i18) {
                                int i25 = (i22 & 255) - i7;
                                int i26 = i24 + (i25 * i25);
                                if (i26 < i18) {
                                    i10 = i21;
                                    i18 = i26;
                                }
                            }
                        }
                    }
                }
            } else if (i8 != 0 || (i2 = this.transparent_index) < 0) {
                int[] iArr3 = this.rgb;
                int i27 = Integer.MAX_VALUE;
                int i28 = i10;
                i10 = 0;
                while (true) {
                    if (i10 >= this.map_size) {
                        i10 = i28;
                        break;
                    }
                    int i29 = iArr3[i10];
                    if (i29 == i) {
                        BigInteger bigInteger2 = this.validBits;
                        if (bigInteger2 == null || bigInteger2.testBit(i10)) {
                            break;
                        }
                    } else {
                        int i30 = ((i29 >> 16) & 255) - i5;
                        int i31 = i30 * i30;
                        if (i31 < i27) {
                            int i32 = ((i29 >> 8) & 255) - i6;
                            int i33 = i31 + (i32 * i32);
                            if (i33 < i27) {
                                int i34 = (i29 & 255) - i7;
                                int i35 = i33 + (i34 * i34);
                                if (i35 < i27) {
                                    int i36 = (i29 >>> 24) - i8;
                                    int i37 = i35 + (i36 * i36);
                                    if (i37 < i27 && ((bigInteger = this.validBits) == null || bigInteger.testBit(i10))) {
                                        i28 = i10;
                                        i27 = i37;
                                    }
                                }
                            }
                        }
                    }
                    i10++;
                }
            } else {
                i10 = i2;
            }
        }
        int[] iArr4 = this.lookupcache;
        System.arraycopy(iArr4, 2, iArr4, 0, 38);
        int[] iArr5 = this.lookupcache;
        iArr5[39] = i;
        iArr5[38] = ~i10;
        return installpixel(obj, i10);
    }

    @Override // java.awt.image.ColorModel
    public final int getGreen(int i) {
        return (this.rgb[this.pixel_mask & i] >> 8) & 255;
    }

    public final void getGreens(byte[] bArr) {
        for (int i = 0; i < this.map_size; i++) {
            bArr[i] = (byte) (this.rgb[i] >> 8);
        }
    }

    public final int getMapSize() {
        return this.map_size;
    }

    @Override // java.awt.image.ColorModel
    public final int getRGB(int i) {
        return this.rgb[this.pixel_mask & i];
    }

    public final void getRGBs(int[] iArr) {
        System.arraycopy(this.rgb, 0, iArr, 0, this.map_size);
    }

    @Override // java.awt.image.ColorModel
    public final int getRed(int i) {
        return (this.rgb[this.pixel_mask & i] >> 16) & 255;
    }

    public final void getReds(byte[] bArr) {
        for (int i = 0; i < this.map_size; i++) {
            bArr[i] = (byte) (this.rgb[i] >> 16);
        }
    }

    @Override // java.awt.image.ColorModel, java.awt.Transparency
    public int getTransparency() {
        return this.transparency;
    }

    public final int getTransparentPixel() {
        return this.transparent_index;
    }

    public BigInteger getValidPixels() {
        BigInteger bigInteger = this.validBits;
        return bigInteger == null ? getAllValid() : bigInteger;
    }

    @Override // java.awt.image.ColorModel
    public boolean isCompatibleRaster(Raster raster) {
        return raster.getTransferType() == this.transferType && raster.getNumBands() == 1 && (1 << raster.getSampleModel().getSampleSize(0)) >= this.map_size;
    }

    @Override // java.awt.image.ColorModel
    public boolean isCompatibleSampleModel(SampleModel sampleModel) {
        return ((sampleModel instanceof ComponentSampleModel) || (sampleModel instanceof MultiPixelPackedSampleModel)) && sampleModel.getTransferType() == this.transferType && sampleModel.getNumBands() == 1;
    }

    public boolean isValid(int i) {
        BigInteger bigInteger;
        return i >= 0 && i < this.map_size && ((bigInteger = this.validBits) == null || bigInteger.testBit(i));
    }

    @Override // java.awt.image.ColorModel
    public String toString() {
        return new String("IndexColorModel: #pixelBits = " + this.pixel_bits + " numComponents = " + this.numComponents + " color space = " + this.colorSpace + " transparency = " + this.transparency + " transIndex   = " + this.transparent_index + " has alpha = " + this.supportsAlpha + " isAlphaPre = " + this.isAlphaPremultiplied);
    }

    public boolean isValid() {
        return this.validBits == null;
    }

    @Override // java.awt.image.ColorModel
    public int[] getComponents(Object obj, int[] iArr, int i) {
        int i2;
        int i3 = this.transferType;
        if (i3 == 0) {
            i2 = ((byte[]) obj)[0] & 255;
        } else if (i3 == 1) {
            i2 = ((short[]) obj)[0] & 65535;
        } else if (i3 == 3) {
            i2 = ((int[]) obj)[0];
        } else {
            throw new UnsupportedOperationException("This method has not been implemented for transferType " + this.transferType);
        }
        return getComponents(i2, iArr, i);
    }

    public IndexColorModel(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, int i3) {
        super(i, opaqueBits, ColorSpace.getInstance(1000), false, false, 1, ColorModel.getDefaultTransferType(i));
        this.transparent_index = -1;
        this.colorData = null;
        this.lookupcache = new int[40];
        if (i >= 1 && i <= 16) {
            setRGBs(i2, bArr, bArr2, bArr3, null);
            setTransparentPixel(i3);
            calculatePixelMask();
            return;
        }
        throw new IllegalArgumentException("Number of bits must be between 1 and 16.");
    }

    private void setRGBs(int i, int[] iArr, int i2, boolean z) {
        this.map_size = i;
        this.rgb = new int[calcRealMapSize(this.pixel_bits, i)];
        BigInteger bigInteger = this.validBits;
        boolean z2 = true;
        int i3 = 1;
        int i4 = 0;
        while (i4 < i) {
            if (bigInteger == null || bigInteger.testBit(i4)) {
                int i5 = iArr[i2];
                int i6 = (i5 >> 8) & 255;
                z2 = z2 && ((i5 >> 16) & 255) == i6 && i6 == (i5 & 255);
                if (z) {
                    int i7 = i5 >>> 24;
                    if (i7 != 255) {
                        if (i7 == 0) {
                            if (i3 == 1) {
                                i3 = 2;
                            }
                            if (this.transparent_index < 0) {
                                this.transparent_index = i4;
                            }
                        } else {
                            i3 = 3;
                        }
                        z2 = false;
                    }
                } else {
                    i5 |= -16777216;
                }
                this.rgb[i4] = i5;
            }
            i4++;
            i2++;
        }
        this.allgrayopaque = z2;
        setTransparency(i3);
    }

    public IndexColorModel(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(i, alphaBits, ColorSpace.getInstance(1000), true, false, 3, ColorModel.getDefaultTransferType(i));
        this.transparent_index = -1;
        this.colorData = null;
        this.lookupcache = new int[40];
        if (i >= 1 && i <= 16) {
            setRGBs(i2, bArr, bArr2, bArr3, bArr4);
            calculatePixelMask();
            return;
        }
        throw new IllegalArgumentException("Number of bits must be between 1 and 16.");
    }

    @Override // java.awt.image.ColorModel
    public Object getDataElements(int[] iArr, int i, Object obj) {
        int i2 = (iArr[i + 0] << 16) | (iArr[i + 1] << 8) | iArr[i + 2];
        return getDataElements(this.supportsAlpha ? (iArr[i + 3] << 24) | i2 : (-16777216) & i2, obj);
    }

    public IndexColorModel(int i, int i2, byte[] bArr, int i3, boolean z) {
        this(i, i2, bArr, i3, z, -1);
        if (i < 1 || i > 16) {
            throw new IllegalArgumentException("Number of bits must be between 1 and 16.");
        }
    }

    public IndexColorModel(int i, int i2, byte[] bArr, int i3, boolean z, int i4) {
        super(i, opaqueBits, ColorSpace.getInstance(1000), false, false, 1, ColorModel.getDefaultTransferType(i));
        int i5;
        int i6;
        this.transparent_index = -1;
        this.colorData = null;
        this.lookupcache = new int[40];
        if (i < 1 || i > 16) {
            throw new IllegalArgumentException("Number of bits must be between 1 and 16.");
        }
        if (i2 >= 1) {
            this.map_size = i2;
            this.rgb = new int[calcRealMapSize(i, i2)];
            int i7 = i3;
            boolean z2 = true;
            int i8 = 1;
            int i9 = 0;
            int i10 = 255;
            while (i9 < i2) {
                int i11 = i7 + 1;
                int i12 = bArr[i7] & 255;
                int i13 = i11 + 1;
                int i14 = bArr[i11] & 255;
                int i15 = i13 + 1;
                int i16 = bArr[i13] & 255;
                z2 = z2 && i12 == i14 && i14 == i16;
                if (z) {
                    i6 = i15 + 1;
                    i5 = bArr[i15] & 255;
                    if (i5 != 255) {
                        if (i5 == 0) {
                            i8 = i8 == 1 ? 2 : i8;
                            if (this.transparent_index < 0) {
                                this.transparent_index = i9;
                            }
                        } else {
                            i8 = 3;
                        }
                        z2 = false;
                    }
                } else {
                    i5 = i10;
                    i6 = i15;
                }
                this.rgb[i9] = (i12 << 16) | (i5 << 24) | (i14 << 8) | i16;
                i9++;
                i7 = i6;
                i10 = i5;
            }
            this.allgrayopaque = z2;
            setTransparency(i8);
            setTransparentPixel(i4);
            calculatePixelMask();
            return;
        }
        throw new IllegalArgumentException("Map size (" + i2 + ") must be >= 1");
    }

    public IndexColorModel(int i, int i2, int[] iArr, int i3, boolean z, int i4, int i5) {
        super(i, opaqueBits, ColorSpace.getInstance(1000), false, false, 1, i5);
        this.transparent_index = -1;
        this.colorData = null;
        this.lookupcache = new int[40];
        if (i < 1 || i > 16) {
            throw new IllegalArgumentException("Number of bits must be between 1 and 16.");
        }
        if (i2 < 1) {
            throw new IllegalArgumentException("Map size (" + i2 + ") must be >= 1");
        }
        if (i5 != 0 && i5 != 1) {
            throw new IllegalArgumentException("transferType must be eitherDataBuffer.TYPE_BYTE or DataBuffer.TYPE_USHORT");
        }
        setRGBs(i2, iArr, i3, z);
        setTransparentPixel(i4);
        calculatePixelMask();
    }

    public IndexColorModel(int i, int i2, int[] iArr, int i3, int i4, BigInteger bigInteger) {
        super(i, alphaBits, ColorSpace.getInstance(1000), true, false, 3, i4);
        this.transparent_index = -1;
        this.colorData = null;
        this.lookupcache = new int[40];
        if (i < 1 || i > 16) {
            throw new IllegalArgumentException("Number of bits must be between 1 and 16.");
        }
        if (i2 < 1) {
            throw new IllegalArgumentException("Map size (" + i2 + ") must be >= 1");
        }
        if (i4 != 0 && i4 != 1) {
            throw new IllegalArgumentException("transferType must be eitherDataBuffer.TYPE_BYTE or DataBuffer.TYPE_USHORT");
        }
        if (bigInteger != null) {
            int i5 = 0;
            while (true) {
                if (i5 >= i2) {
                    break;
                }
                if (!bigInteger.testBit(i5)) {
                    this.validBits = bigInteger;
                    break;
                }
                i5++;
            }
        }
        setRGBs(i2, iArr, i3, true);
        calculatePixelMask();
    }
}
