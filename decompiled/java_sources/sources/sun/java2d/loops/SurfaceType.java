package sun.java2d.loops;

import java.awt.image.ColorModel;
import java.util.HashMap;
import sun.awt.image.PixelConverter;

/* loaded from: classes16.dex */
public final class SurfaceType {
    public static final SurfaceType Any;
    public static final SurfaceType Any3Byte;
    public static final SurfaceType Any4Byte;
    public static final SurfaceType AnyByte;
    public static final SurfaceType AnyByteBinary;
    public static final SurfaceType AnyColor;
    public static final SurfaceType AnyDcm;
    public static final SurfaceType AnyInt;
    public static final SurfaceType AnyPaint;
    public static final SurfaceType AnyShort;
    public static final SurfaceType ByteBinary1Bit;
    public static final SurfaceType ByteBinary2Bit;
    public static final SurfaceType ByteBinary4Bit;
    public static final SurfaceType ByteGray;
    public static final SurfaceType ByteIndexed;
    public static final SurfaceType ByteIndexedBm;
    public static final SurfaceType ByteIndexedOpaque;
    public static final SurfaceType Custom;
    public static final String DESC_3BYTE_BGR = "3 Byte BGR";
    public static final String DESC_3BYTE_RGB = "3 Byte RGB";
    public static final String DESC_4BYTE_ABGR = "4 Byte ABGR";
    public static final String DESC_4BYTE_ABGR_PRE = "4 Byte ABGR Premultiplied";
    public static final String DESC_ANY = "Any Surface";
    public static final String DESC_ANY_3BYTE = "Any 3 Byte Component";
    public static final String DESC_ANY_4BYTE = "Any 4 Byte Component";
    public static final String DESC_ANY_BYTE = "Any Discrete Byte";
    public static final String DESC_ANY_COLOR = "Single Color";
    public static final String DESC_ANY_INT = "Any Discrete Integer";
    public static final String DESC_ANY_INT_DCM = "Any Integer DCM";
    public static final String DESC_ANY_PAINT = "Paint Object";
    public static final String DESC_ANY_SHORT = "Any Discrete Short";
    public static final String DESC_BYTE_BINARY = "Packed Binary Bitmap";
    public static final String DESC_BYTE_BINARY_1BIT = "Packed Binary 1-bit Bitmap";
    public static final String DESC_BYTE_BINARY_2BIT = "Packed Binary 2-bit Bitmap";
    public static final String DESC_BYTE_BINARY_4BIT = "Packed Binary 4-bit Bitmap";
    public static final String DESC_BYTE_GRAY = "8-bit Gray";
    public static final String DESC_BYTE_INDEXED = "8-bit Indexed";
    public static final String DESC_BYTE_INDEXED_BM = "8-bit Indexed (Bitmask)";
    public static final String DESC_BYTE_INDEXED_OPAQUE = "8-bit Indexed (Opaque)";
    public static final String DESC_GRADIENT_PAINT = "Gradient Paint";
    public static final String DESC_INDEX12_GRAY = "12-bit Palettized Gray";
    public static final String DESC_INDEX8_GRAY = "8-bit Palettized Gray";
    public static final String DESC_INT_ARGB = "Integer ARGB";
    public static final String DESC_INT_ARGB_BM = "Int ARGB (Bitmask)";
    public static final String DESC_INT_ARGB_PRE = "Integer ARGB Premultiplied";
    public static final String DESC_INT_BGR = "Integer BGR";
    public static final String DESC_INT_BGRx = "Integer BGRx";
    public static final String DESC_INT_RGB = "Integer RGB";
    public static final String DESC_INT_RGBx = "Integer RGBx";
    public static final String DESC_LINEAR_GRADIENT_PAINT = "Linear Gradient Paint";
    public static final String DESC_OPAQUE_COLOR = "Opaque Color";
    public static final String DESC_OPAQUE_GRADIENT_PAINT = "Opaque Gradient Paint";
    public static final String DESC_OPAQUE_LINEAR_GRADIENT_PAINT = "Opaque Linear Gradient Paint";
    public static final String DESC_OPAQUE_RADIAL_GRADIENT_PAINT = "Opaque Radial Gradient Paint";
    public static final String DESC_OPAQUE_TEXTURE_PAINT = "Opaque Texture Paint";
    public static final String DESC_RADIAL_GRADIENT_PAINT = "Radial Gradient Paint";
    public static final String DESC_TEXTURE_PAINT = "Texture Paint";
    public static final String DESC_USHORT_4444_ARGB = "Short 4444 ARGB";
    public static final String DESC_USHORT_555_RGB = "Short 555 RGB";
    public static final String DESC_USHORT_555_RGBx = "Short 555 RGBx";
    public static final String DESC_USHORT_565_RGB = "Short 565 RGB";
    public static final String DESC_USHORT_GRAY = "16-bit Gray";
    public static final String DESC_USHORT_INDEXED = "16-bit Indexed";
    public static final SurfaceType FourByteAbgr;
    public static final SurfaceType FourByteAbgrPre;
    public static final SurfaceType GradientPaint;
    public static final SurfaceType Index12Gray;
    public static final SurfaceType Index8Gray;
    public static final SurfaceType IntArgb;
    public static final SurfaceType IntArgbBm;
    public static final SurfaceType IntArgbPre;
    public static final SurfaceType IntBgr;
    public static final SurfaceType IntBgrx;
    public static final SurfaceType IntRgb;
    public static final SurfaceType IntRgbx;
    public static final SurfaceType LinearGradientPaint;
    public static final SurfaceType OpaqueColor;
    public static final SurfaceType OpaqueGradientPaint;
    public static final SurfaceType OpaqueLinearGradientPaint;
    public static final SurfaceType OpaqueRadialGradientPaint;
    public static final SurfaceType OpaqueTexturePaint;
    public static final SurfaceType RadialGradientPaint;
    public static final SurfaceType TexturePaint;
    public static final SurfaceType ThreeByteBgr;
    public static final SurfaceType ThreeByteRgb;
    public static final SurfaceType Ushort4444Argb;
    public static final SurfaceType Ushort555Rgb;
    public static final SurfaceType Ushort555Rgbx;
    public static final SurfaceType Ushort565Rgb;
    public static final SurfaceType UshortGray;
    public static final SurfaceType UshortIndexed;
    private static HashMap<String, Integer> surfaceUIDMap = new HashMap<>(100);
    private static int unusedUID = 1;
    private String desc;
    private SurfaceType next;
    protected PixelConverter pixelConverter;
    private int uniqueID;

    static {
        SurfaceType surfaceType = new SurfaceType(null, DESC_ANY, PixelConverter.instance);
        Any = surfaceType;
        SurfaceType deriveSubType = surfaceType.deriveSubType(DESC_ANY_INT);
        AnyInt = deriveSubType;
        SurfaceType deriveSubType2 = surfaceType.deriveSubType(DESC_ANY_SHORT);
        AnyShort = deriveSubType2;
        SurfaceType deriveSubType3 = surfaceType.deriveSubType(DESC_ANY_BYTE);
        AnyByte = deriveSubType3;
        SurfaceType deriveSubType4 = surfaceType.deriveSubType(DESC_BYTE_BINARY);
        AnyByteBinary = deriveSubType4;
        SurfaceType deriveSubType5 = surfaceType.deriveSubType(DESC_ANY_3BYTE);
        Any3Byte = deriveSubType5;
        SurfaceType deriveSubType6 = surfaceType.deriveSubType(DESC_ANY_4BYTE);
        Any4Byte = deriveSubType6;
        SurfaceType deriveSubType7 = deriveSubType.deriveSubType(DESC_ANY_INT_DCM);
        AnyDcm = deriveSubType7;
        Custom = surfaceType;
        PixelConverter pixelConverter = PixelConverter.Xrgb.instance;
        IntRgb = deriveSubType7.deriveSubType(DESC_INT_RGB, pixelConverter);
        IntArgb = deriveSubType7.deriveSubType(DESC_INT_ARGB, PixelConverter.Argb.instance);
        IntArgbPre = deriveSubType7.deriveSubType(DESC_INT_ARGB_PRE, PixelConverter.ArgbPre.instance);
        PixelConverter pixelConverter2 = PixelConverter.Xbgr.instance;
        IntBgr = deriveSubType7.deriveSubType(DESC_INT_BGR, pixelConverter2);
        ThreeByteBgr = deriveSubType5.deriveSubType(DESC_3BYTE_BGR, pixelConverter);
        FourByteAbgr = deriveSubType6.deriveSubType(DESC_4BYTE_ABGR, PixelConverter.Rgba.instance);
        FourByteAbgrPre = deriveSubType6.deriveSubType(DESC_4BYTE_ABGR_PRE, PixelConverter.RgbaPre.instance);
        Ushort565Rgb = deriveSubType2.deriveSubType(DESC_USHORT_565_RGB, PixelConverter.Ushort565Rgb.instance);
        Ushort555Rgb = deriveSubType2.deriveSubType(DESC_USHORT_555_RGB, PixelConverter.Ushort555Rgb.instance);
        Ushort555Rgbx = deriveSubType2.deriveSubType(DESC_USHORT_555_RGBx, PixelConverter.Ushort555Rgbx.instance);
        Ushort4444Argb = deriveSubType2.deriveSubType(DESC_USHORT_4444_ARGB, PixelConverter.Ushort4444Argb.instance);
        UshortIndexed = deriveSubType2.deriveSubType(DESC_USHORT_INDEXED);
        ByteGray = deriveSubType3.deriveSubType(DESC_BYTE_GRAY, PixelConverter.ByteGray.instance);
        UshortGray = deriveSubType2.deriveSubType(DESC_USHORT_GRAY, PixelConverter.UshortGray.instance);
        ByteBinary1Bit = deriveSubType4.deriveSubType(DESC_BYTE_BINARY_1BIT);
        ByteBinary2Bit = deriveSubType4.deriveSubType(DESC_BYTE_BINARY_2BIT);
        ByteBinary4Bit = deriveSubType4.deriveSubType(DESC_BYTE_BINARY_4BIT);
        SurfaceType deriveSubType8 = deriveSubType3.deriveSubType(DESC_BYTE_INDEXED);
        ByteIndexed = deriveSubType8;
        IntRgbx = deriveSubType7.deriveSubType(DESC_INT_RGBx, PixelConverter.Rgbx.instance);
        IntBgrx = deriveSubType7.deriveSubType(DESC_INT_BGRx, PixelConverter.Bgrx.instance);
        ThreeByteRgb = deriveSubType5.deriveSubType(DESC_3BYTE_RGB, pixelConverter2);
        IntArgbBm = deriveSubType7.deriveSubType(DESC_INT_ARGB_BM, PixelConverter.ArgbBm.instance);
        SurfaceType deriveSubType9 = deriveSubType8.deriveSubType(DESC_BYTE_INDEXED_BM);
        ByteIndexedBm = deriveSubType9;
        SurfaceType deriveSubType10 = deriveSubType9.deriveSubType(DESC_BYTE_INDEXED_OPAQUE);
        ByteIndexedOpaque = deriveSubType10;
        Index8Gray = deriveSubType10.deriveSubType(DESC_INDEX8_GRAY);
        Index12Gray = surfaceType.deriveSubType(DESC_INDEX12_GRAY);
        SurfaceType deriveSubType11 = surfaceType.deriveSubType(DESC_ANY_PAINT);
        AnyPaint = deriveSubType11;
        SurfaceType deriveSubType12 = deriveSubType11.deriveSubType(DESC_ANY_COLOR);
        AnyColor = deriveSubType12;
        OpaqueColor = deriveSubType12.deriveSubType(DESC_OPAQUE_COLOR);
        SurfaceType deriveSubType13 = deriveSubType11.deriveSubType(DESC_GRADIENT_PAINT);
        GradientPaint = deriveSubType13;
        OpaqueGradientPaint = deriveSubType13.deriveSubType(DESC_OPAQUE_GRADIENT_PAINT);
        SurfaceType deriveSubType14 = deriveSubType11.deriveSubType(DESC_LINEAR_GRADIENT_PAINT);
        LinearGradientPaint = deriveSubType14;
        OpaqueLinearGradientPaint = deriveSubType14.deriveSubType(DESC_OPAQUE_LINEAR_GRADIENT_PAINT);
        SurfaceType deriveSubType15 = deriveSubType11.deriveSubType(DESC_RADIAL_GRADIENT_PAINT);
        RadialGradientPaint = deriveSubType15;
        OpaqueRadialGradientPaint = deriveSubType15.deriveSubType(DESC_OPAQUE_RADIAL_GRADIENT_PAINT);
        SurfaceType deriveSubType16 = deriveSubType11.deriveSubType(DESC_TEXTURE_PAINT);
        TexturePaint = deriveSubType16;
        OpaqueTexturePaint = deriveSubType16.deriveSubType(DESC_OPAQUE_TEXTURE_PAINT);
    }

    private SurfaceType(SurfaceType surfaceType, String str, PixelConverter pixelConverter) {
        this.next = surfaceType;
        this.desc = str;
        this.uniqueID = makeUniqueID(str);
        this.pixelConverter = pixelConverter;
    }

    public static final synchronized int makeUniqueID(String str) {
        int intValue;
        synchronized (SurfaceType.class) {
            Integer num = surfaceUIDMap.get(str);
            if (num == null) {
                int i = unusedUID;
                if (i > 255) {
                    throw new InternalError("surface type id overflow");
                }
                unusedUID = i + 1;
                num = Integer.valueOf(i);
                surfaceUIDMap.put(str, num);
            }
            intValue = num.intValue();
        }
        return intValue;
    }

    public SurfaceType deriveSubType(String str) {
        return new SurfaceType(this, str);
    }

    public boolean equals(Object obj) {
        return (obj instanceof SurfaceType) && ((SurfaceType) obj).uniqueID == this.uniqueID;
    }

    public int getAlphaMask() {
        return this.pixelConverter.getAlphaMask();
    }

    public String getDescriptor() {
        return this.desc;
    }

    public PixelConverter getPixelConverter() {
        return this.pixelConverter;
    }

    public SurfaceType getSuperType() {
        return this.next;
    }

    public int getUniqueID() {
        return this.uniqueID;
    }

    public int hashCode() {
        return this.desc.hashCode();
    }

    public int pixelFor(int i, ColorModel colorModel) {
        return this.pixelConverter.rgbToPixel(i, colorModel);
    }

    public int rgbFor(int i, ColorModel colorModel) {
        return this.pixelConverter.pixelToRgb(i, colorModel);
    }

    public String toString() {
        return this.desc;
    }

    public SurfaceType deriveSubType(String str, PixelConverter pixelConverter) {
        return new SurfaceType(this, str, pixelConverter);
    }

    private SurfaceType(SurfaceType surfaceType, String str) {
        this.next = surfaceType;
        this.desc = str;
        this.uniqueID = makeUniqueID(str);
        this.pixelConverter = surfaceType.pixelConverter;
    }
}
