package java.awt;

import java.awt.color.ColorSpace;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.awt.image.ColorModel;
import java.beans.ConstructorProperties;
import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class Color implements Paint, Serializable {
    public static final Color BLACK;
    public static final Color BLUE;
    public static final Color CYAN;
    public static final Color DARK_GRAY;
    private static final double FACTOR = 0.7d;
    public static final Color GRAY;
    public static final Color GREEN;
    public static final Color LIGHT_GRAY;
    public static final Color MAGENTA;
    public static final Color ORANGE;
    public static final Color PINK;
    public static final Color RED;
    public static final Color TRANSPARENT;
    public static final Color WHITE;
    public static final Color YELLOW;
    public static final Color black;
    public static final Color blue;
    public static final Color cyan;
    public static final Color darkGray;
    public static final Color gray;
    public static final Color green;
    public static final Color lightGray;
    public static final Color magenta;
    public static final Color orange;
    public static final Color pink;
    public static final Color red;
    private static final long serialVersionUID = 118526816881161077L;
    public static final Color white;
    public static final Color yellow;

    /* renamed from: cs */
    private ColorSpace f97722cs;
    private float falpha;
    private float[] frgbvalue;
    private float[] fvalue;
    int value;

    static {
        Color color = new Color(255, 255, 255);
        white = color;
        WHITE = color;
        Color color2 = new Color(192, 192, 192);
        lightGray = color2;
        LIGHT_GRAY = color2;
        Color color3 = new Color(128, 128, 128);
        gray = color3;
        GRAY = color3;
        Color color4 = new Color(64, 64, 64);
        darkGray = color4;
        DARK_GRAY = color4;
        Color color5 = new Color(0, 0, 0);
        black = color5;
        BLACK = color5;
        Color color6 = new Color(255, 0, 0);
        red = color6;
        RED = color6;
        Color color7 = new Color(255, 175, 175);
        pink = color7;
        PINK = color7;
        Color color8 = new Color(255, 200, 0);
        orange = color8;
        ORANGE = color8;
        Color color9 = new Color(255, 255, 0);
        yellow = color9;
        YELLOW = color9;
        Color color10 = new Color(0, 255, 0);
        green = color10;
        GREEN = color10;
        Color color11 = new Color(255, 0, 255);
        magenta = color11;
        MAGENTA = color11;
        Color color12 = new Color(0, 255, 255);
        cyan = color12;
        CYAN = color12;
        Color color13 = new Color(0, 0, 255);
        blue = color13;
        BLUE = color13;
        TRANSPARENT = new Color(0, 0, 0, 0);
        Toolkit.loadLibraries();
        if (GraphicsEnvironment.isHeadless()) {
            return;
        }
        initIDs();
    }

    public Color(int i, int i2, int i3) {
        this(i, i2, i3, 255);
    }

    public static int HSBtoRGB(float f, float f2, float f3) {
        int i;
        int i2;
        int i3;
        if (f2 != 0.0f) {
            float floor = (f - ((float) Math.floor(f))) * 6.0f;
            float floor2 = floor - ((float) Math.floor(floor));
            float f4 = (1.0f - f2) * f3;
            float f5 = (1.0f - (f2 * floor2)) * f3;
            float f6 = (1.0f - (f2 * (1.0f - floor2))) * f3;
            int i4 = (int) floor;
            if (i4 == 0) {
                i = (int) ((f3 * 255.0f) + 0.5f);
                i2 = (int) ((f6 * 255.0f) + 0.5f);
            } else {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 == 3) {
                            i = (int) ((f4 * 255.0f) + 0.5f);
                            i2 = (int) ((f5 * 255.0f) + 0.5f);
                        } else if (i4 == 4) {
                            i = (int) ((f6 * 255.0f) + 0.5f);
                            i2 = (int) ((f4 * 255.0f) + 0.5f);
                        } else if (i4 != 5) {
                            i = 0;
                        } else {
                            i = (int) ((f3 * 255.0f) + 0.5f);
                            i2 = (int) ((f4 * 255.0f) + 0.5f);
                            i3 = (int) ((f5 * 255.0f) + 0.5f);
                        }
                        i3 = (int) ((f3 * 255.0f) + 0.5f);
                    } else {
                        i = (int) ((f4 * 255.0f) + 0.5f);
                        i2 = (int) ((f3 * 255.0f) + 0.5f);
                        i3 = (int) ((f6 * 255.0f) + 0.5f);
                    }
                    return (i << 16) | (-16777216) | (i2 << 8) | (i3 << 0);
                }
                i = (int) ((f5 * 255.0f) + 0.5f);
                i2 = (int) ((f3 * 255.0f) + 0.5f);
            }
            i3 = (int) ((f4 * 255.0f) + 0.5f);
            return (i << 16) | (-16777216) | (i2 << 8) | (i3 << 0);
        }
        i = (int) ((f3 * 255.0f) + 0.5f);
        i2 = i;
        i3 = i2;
        return (i << 16) | (-16777216) | (i2 << 8) | (i3 << 0);
    }

    public static float[] RGBtoHSB(int i, int i2, int i3, float[] fArr) {
        if (fArr == null) {
            fArr = new float[3];
        }
        int i4 = i > i2 ? i : i2;
        if (i3 > i4) {
            i4 = i3;
        }
        int i5 = i < i2 ? i : i2;
        if (i3 < i5) {
            i5 = i3;
        }
        float f = i4;
        float f2 = f / 255.0f;
        float f3 = 0.0f;
        float f4 = i4 != 0 ? (i4 - i5) / f : 0.0f;
        if (f4 != 0.0f) {
            float f5 = i4 - i5;
            float f6 = (i4 - i) / f5;
            float f7 = (i4 - i2) / f5;
            float f8 = (i4 - i3) / f5;
            float f9 = (i == i4 ? f8 - f7 : i2 == i4 ? (f6 + 2.0f) - f8 : (f7 + 4.0f) - f6) / 6.0f;
            f3 = f9 < 0.0f ? f9 + 1.0f : f9;
        }
        fArr[0] = f3;
        fArr[1] = f4;
        fArr[2] = f2;
        return fArr;
    }

    public static Color decode(String str) throws NumberFormatException {
        int intValue = Integer.decode(str).intValue();
        return new Color((intValue >> 16) & 255, (intValue >> 8) & 255, intValue & 255);
    }

    public static Color getColor(String str) {
        return getColor(str, (Color) null);
    }

    public static Color getHSBColor(float f, float f2, float f3) {
        return new Color(HSBtoRGB(f, f2, f3));
    }

    private static void initIDs() {
    }

    private static void testColorValueRange(int i, int i2, int i3, int i4) {
        boolean z;
        String str = "";
        if (i4 < 0 || i4 > 255) {
            str = " Alpha";
            z = true;
        } else {
            z = false;
        }
        if (i < 0 || i > 255) {
            str = str + " Red";
            z = true;
        }
        if (i2 < 0 || i2 > 255) {
            str = str + " Green";
            z = true;
        }
        if (i3 < 0 || i3 > 255) {
            str = str + " Blue";
            z = true;
        }
        if (!z) {
            return;
        }
        throw new IllegalArgumentException("Color parameter outside of expected range:" + str);
    }

    public Color brighter() {
        int red2 = getRed();
        int green2 = getGreen();
        int blue2 = getBlue();
        int alpha = getAlpha();
        if (red2 == 0 && green2 == 0 && blue2 == 0) {
            return new Color(3, 3, 3, alpha);
        }
        if (red2 > 0 && red2 < 3) {
            red2 = 3;
        }
        if (green2 > 0 && green2 < 3) {
            green2 = 3;
        }
        if (blue2 > 0 && blue2 < 3) {
            blue2 = 3;
        }
        return new Color(Math.min((int) (red2 / 0.7d), 255), Math.min((int) (green2 / 0.7d), 255), Math.min((int) (blue2 / 0.7d), 255), alpha);
    }

    @Override // java.awt.Paint
    public synchronized PaintContext createContext(ColorModel colorModel, Rectangle rectangle, Rectangle2D rectangle2D, AffineTransform affineTransform, RenderingHints renderingHints) {
        return new ColorPaintContext(getRGB(), colorModel);
    }

    public Color darker() {
        return new Color(Math.max((int) (getRed() * 0.7d), 0), Math.max((int) (getGreen() * 0.7d), 0), Math.max((int) (getBlue() * 0.7d), 0), getAlpha());
    }

    public boolean equals(Object obj) {
        return (obj instanceof Color) && ((Color) obj).getRGB() == getRGB();
    }

    public int getAlpha() {
        return (getRGB() >> 24) & 255;
    }

    public int getBlue() {
        return (getRGB() >> 0) & 255;
    }

    public float[] getColorComponents(float[] fArr) {
        float[] fArr2 = this.fvalue;
        if (fArr2 == null) {
            return getRGBColorComponents(fArr);
        }
        int length = fArr2.length;
        if (fArr == null) {
            fArr = new float[length];
        }
        for (int i = 0; i < length; i++) {
            fArr[i] = this.fvalue[i];
        }
        return fArr;
    }

    public ColorSpace getColorSpace() {
        if (this.f97722cs == null) {
            this.f97722cs = ColorSpace.getInstance(1000);
        }
        return this.f97722cs;
    }

    public float[] getComponents(float[] fArr) {
        float[] fArr2 = this.fvalue;
        if (fArr2 == null) {
            return getRGBComponents(fArr);
        }
        int length = fArr2.length;
        if (fArr == null) {
            fArr = new float[length + 1];
        }
        for (int i = 0; i < length; i++) {
            fArr[i] = this.fvalue[i];
        }
        fArr[length] = this.falpha;
        return fArr;
    }

    public int getGreen() {
        return (getRGB() >> 8) & 255;
    }

    public int getRGB() {
        return this.value;
    }

    public float[] getRGBColorComponents(float[] fArr) {
        if (fArr == null) {
            fArr = new float[3];
        }
        float[] fArr2 = this.frgbvalue;
        if (fArr2 == null) {
            fArr[0] = getRed() / 255.0f;
            fArr[1] = getGreen() / 255.0f;
            fArr[2] = getBlue() / 255.0f;
        } else {
            fArr[0] = fArr2[0];
            fArr[1] = fArr2[1];
            fArr[2] = fArr2[2];
        }
        return fArr;
    }

    public float[] getRGBComponents(float[] fArr) {
        if (fArr == null) {
            fArr = new float[4];
        }
        float[] fArr2 = this.frgbvalue;
        if (fArr2 == null) {
            fArr[0] = getRed() / 255.0f;
            fArr[1] = getGreen() / 255.0f;
            fArr[2] = getBlue() / 255.0f;
            fArr[3] = getAlpha() / 255.0f;
        } else {
            fArr[0] = fArr2[0];
            fArr[1] = fArr2[1];
            fArr[2] = fArr2[2];
            fArr[3] = this.falpha;
        }
        return fArr;
    }

    public int getRed() {
        return (getRGB() >> 16) & 255;
    }

    @Override // java.awt.Transparency
    public int getTransparency() {
        int alpha = getAlpha();
        if (alpha == 255) {
            return 1;
        }
        return alpha == 0 ? 2 : 3;
    }

    public int hashCode() {
        return this.value;
    }

    public String toString() {
        return getClass().getName() + "[r=" + getRed() + ",g=" + getGreen() + ",b=" + getBlue() + IteratorUtils.f104924b;
    }

    @ConstructorProperties({"red", "green", "blue", "alpha"})
    public Color(int i, int i2, int i3, int i4) {
        this.frgbvalue = null;
        this.fvalue = null;
        this.falpha = 0.0f;
        this.f97722cs = null;
        this.value = ((i4 & 255) << 24) | ((i & 255) << 16) | ((i2 & 255) << 8) | ((i3 & 255) << 0);
        testColorValueRange(i, i2, i3, i4);
    }

    public static Color getColor(String str, Color color) {
        Integer integer = Integer.getInteger(str);
        if (integer == null) {
            return color;
        }
        int intValue = integer.intValue();
        return new Color((intValue >> 16) & 255, (intValue >> 8) & 255, intValue & 255);
    }

    public static Color getColor(String str, int i) {
        Integer integer = Integer.getInteger(str);
        if (integer != null) {
            i = integer.intValue();
        }
        return new Color((i >> 16) & 255, (i >> 8) & 255, (i >> 0) & 255);
    }

    private static void testColorValueRange(float f, float f2, float f3, float f4) {
        boolean z;
        double d = f4;
        String str = "";
        if (d < 0.0d || d > 1.0d) {
            str = " Alpha";
            z = true;
        } else {
            z = false;
        }
        double d2 = f;
        if (d2 < 0.0d || d2 > 1.0d) {
            str = str + " Red";
            z = true;
        }
        double d3 = f2;
        if (d3 < 0.0d || d3 > 1.0d) {
            str = str + " Green";
            z = true;
        }
        double d4 = f3;
        if (d4 < 0.0d || d4 > 1.0d) {
            str = str + " Blue";
            z = true;
        }
        if (!z) {
            return;
        }
        throw new IllegalArgumentException("Color parameter outside of expected range:" + str);
    }

    public float[] getColorComponents(ColorSpace colorSpace, float[] fArr) {
        if (this.f97722cs == null) {
            this.f97722cs = ColorSpace.getInstance(1000);
        }
        float[] fArr2 = this.fvalue;
        if (fArr2 == null) {
            fArr2 = new float[]{getRed() / 255.0f, getGreen() / 255.0f, getBlue() / 255.0f};
        }
        float[] fromCIEXYZ = colorSpace.fromCIEXYZ(this.f97722cs.toCIEXYZ(fArr2));
        if (fArr == null) {
            return fromCIEXYZ;
        }
        for (int i = 0; i < fromCIEXYZ.length; i++) {
            fArr[i] = fromCIEXYZ[i];
        }
        return fArr;
    }

    public float[] getComponents(ColorSpace colorSpace, float[] fArr) {
        if (this.f97722cs == null) {
            this.f97722cs = ColorSpace.getInstance(1000);
        }
        float[] fArr2 = this.fvalue;
        if (fArr2 == null) {
            fArr2 = new float[]{getRed() / 255.0f, getGreen() / 255.0f, getBlue() / 255.0f};
        }
        float[] fromCIEXYZ = colorSpace.fromCIEXYZ(this.f97722cs.toCIEXYZ(fArr2));
        if (fArr == null) {
            fArr = new float[fromCIEXYZ.length + 1];
        }
        for (int i = 0; i < fromCIEXYZ.length; i++) {
            fArr[i] = fromCIEXYZ[i];
        }
        if (this.fvalue == null) {
            fArr[fromCIEXYZ.length] = getAlpha() / 255.0f;
        } else {
            fArr[fromCIEXYZ.length] = this.falpha;
        }
        return fArr;
    }

    public Color(int i) {
        this.frgbvalue = null;
        this.fvalue = null;
        this.falpha = 0.0f;
        this.f97722cs = null;
        this.value = i | (-16777216);
    }

    public Color(int i, boolean z) {
        this.frgbvalue = null;
        this.fvalue = null;
        this.falpha = 0.0f;
        this.f97722cs = null;
        if (z) {
            this.value = i;
        } else {
            this.value = i | (-16777216);
        }
    }

    public Color(float f, float f2, float f3) {
        this((int) ((f * 255.0f) + 0.5d), (int) ((f2 * 255.0f) + 0.5d), (int) ((255.0f * f3) + 0.5d));
        testColorValueRange(f, f2, f3, 1.0f);
        this.frgbvalue = r1;
        float[] fArr = {f, f2, f3};
        this.falpha = 1.0f;
        this.fvalue = fArr;
    }

    public Color(float f, float f2, float f3, float f4) {
        this((int) ((f * 255.0f) + 0.5d), (int) ((f2 * 255.0f) + 0.5d), (int) ((f3 * 255.0f) + 0.5d), (int) ((255.0f * f4) + 0.5d));
        this.frgbvalue = r0;
        float[] fArr = {f, f2, f3};
        this.falpha = f4;
        this.fvalue = fArr;
    }

    public Color(ColorSpace colorSpace, float[] fArr, float f) {
        this.frgbvalue = null;
        this.fvalue = null;
        this.falpha = 0.0f;
        this.f97722cs = null;
        int numComponents = colorSpace.getNumComponents();
        this.fvalue = new float[numComponents];
        String str = "";
        boolean z = false;
        for (int i = 0; i < numComponents; i++) {
            float f2 = fArr[i];
            if (f2 >= 0.0d && f2 <= 1.0d) {
                this.fvalue[i] = f2;
            } else {
                str = str + "Component " + i + " ";
                z = true;
            }
        }
        double d = f;
        if (d >= 0.0d && d <= 1.0d) {
            this.falpha = f;
        } else {
            str = str + "Alpha";
            z = true;
        }
        if (!z) {
            float[] rgb = colorSpace.toRGB(this.fvalue);
            this.frgbvalue = rgb;
            this.f97722cs = colorSpace;
            this.value = ((((int) (this.falpha * 255.0f)) & 255) << 24) | ((((int) (rgb[0] * 255.0f)) & 255) << 16) | ((((int) (rgb[1] * 255.0f)) & 255) << 8) | ((((int) (rgb[2] * 255.0f)) & 255) << 0);
            return;
        }
        throw new IllegalArgumentException("Color parameter outside of expected range: " + str);
    }
}
