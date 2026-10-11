package sun.font;

/* loaded from: classes16.dex */
public abstract class CharToGlyphMapper {
    public static final int HI_SURROGATE_END = 56319;
    public static final int HI_SURROGATE_START = 55296;
    public static final int INVISIBLE_GLYPHS = 65534;
    public static final int INVISIBLE_GLYPH_ID = 65535;
    public static final int LO_SURROGATE_END = 57343;
    public static final int LO_SURROGATE_START = 56320;
    public static final int UNINITIALIZED_GLYPH = -1;
    public static final int VSS_END = 918015;
    public static final int VSS_START = 917760;
    public static final int VS_END = 65039;
    public static final int VS_START = 65024;
    protected int missingGlyph = -1;

    public static boolean isVariationSelector(int i) {
        return (i >= 917760 && i <= 918015) || (i >= 65024 && i <= 65039);
    }

    public boolean canDisplay(char c) {
        return charToGlyph(c) != this.missingGlyph;
    }

    public int charToGlyph(char c) {
        int[] iArr = new int[1];
        charsToGlyphs(1, new char[]{c}, iArr);
        return iArr[0];
    }

    public int charToVariationGlyph(int i, int i2) {
        return charToGlyph(i);
    }

    public abstract void charsToGlyphs(int i, char[] cArr, int[] iArr);

    public abstract void charsToGlyphs(int i, int[] iArr, int[] iArr2);

    public abstract boolean charsToGlyphsNS(int i, char[] cArr, int[] iArr);

    public int getMissingGlyphCode() {
        return this.missingGlyph;
    }

    public abstract int getNumGlyphs();

    public int charToGlyph(int i) {
        int[] iArr = new int[1];
        charsToGlyphs(1, new int[]{i}, iArr);
        return iArr[0];
    }

    public boolean canDisplay(int i) {
        return charToGlyph(i) != this.missingGlyph;
    }
}
