package sun.font;

import java.nio.ByteBuffer;
import java.util.Locale;
import sun.font.CMap;

/* loaded from: classes16.dex */
public class TrueTypeGlyphMapper extends CharToGlyphMapper {
    static final char JA_YEN = 165;
    static final char REVERSE_SOLIDUS = '\\';
    static final boolean isJAlocale = Locale.JAPAN.equals(Locale.getDefault());
    CMap cmap;
    TrueTypeFont font;
    int numGlyphs;

    public TrueTypeGlyphMapper(TrueTypeFont trueTypeFont) {
        this.font = trueTypeFont;
        try {
            this.cmap = CMap.initialize(trueTypeFont);
        } catch (Exception unused) {
            this.cmap = null;
        }
        if (this.cmap == null) {
            handleBadCMAP();
        }
        this.missingGlyph = 0;
        ByteBuffer tableBuffer = trueTypeFont.getTableBuffer(TrueTypeFont.maxpTag);
        if (tableBuffer == null || tableBuffer.capacity() < 6) {
            handleBadCMAP();
        } else {
            this.numGlyphs = tableBuffer.getChar(4);
        }
    }

    private char getGlyphFromCMAP(int i) {
        try {
            char glyph = this.cmap.getGlyph(i);
            if (glyph >= this.numGlyphs && glyph < 65534) {
                if (FontUtilities.isLogging()) {
                    FontUtilities.logWarning(this.font + " out of range glyph id=" + Integer.toHexString(glyph) + " for char " + Integer.toHexString(i));
                }
                return (char) this.missingGlyph;
            }
            return glyph;
        } catch (Exception unused) {
            this.handleBadCMAP();
            return (char) this.missingGlyph;
        }
    }

    private void handleBadCMAP() {
        if (FontUtilities.isLogging()) {
            FontUtilities.logSevere("Null Cmap for " + this.font + "substituting for this font");
        }
        SunFontManager.getInstance().deRegisterBadFont(this.font);
        this.cmap = CMap.theNullCmap;
    }

    private char remapJAChar(char c) {
        return c == '\\' ? JA_YEN : c;
    }

    private int remapJAIntChar(int i) {
        if (i == 92) {
            return 165;
        }
        return i;
    }

    @Override // sun.font.CharToGlyphMapper
    public int charToGlyph(char c) {
        return getGlyphFromCMAP(c);
    }

    @Override // sun.font.CharToGlyphMapper
    public int charToVariationGlyph(int i, int i2) {
        return getGlyphFromCMAP(i, i2);
    }

    @Override // sun.font.CharToGlyphMapper
    public void charsToGlyphs(int i, int[] iArr, int[] iArr2) {
        for (int i2 = 0; i2 < i; i2++) {
            iArr2[i2] = getGlyphFromCMAP(iArr[i2]);
        }
    }

    @Override // sun.font.CharToGlyphMapper
    public boolean charsToGlyphsNS(int i, char[] cArr, int[] iArr) {
        int i2 = 0;
        while (i2 < i) {
            char c = cArr[i2];
            int i3 = c;
            if (c >= 55296) {
                i3 = c;
                if (c <= 56319) {
                    i3 = c;
                    if (i2 < i - 1) {
                        int i4 = i2 + 1;
                        char c2 = cArr[i4];
                        i3 = c;
                        if (c2 >= 56320) {
                            i3 = c;
                            if (c2 <= 57343) {
                                iArr[i4] = 65535;
                                i3 = ((((c - 55296) * 1024) + c2) - 56320) + 65536;
                            }
                        }
                    }
                }
            }
            iArr[i2] = getGlyphFromCMAP(i3);
            if (i3 >= 768) {
                if (FontUtilities.isComplexCharCode(i3) || CharToGlyphMapper.isVariationSelector(i3)) {
                    return true;
                }
                if (i3 >= 65536) {
                    i2++;
                }
            }
            i2++;
        }
        return false;
    }

    @Override // sun.font.CharToGlyphMapper
    public int getNumGlyphs() {
        return this.numGlyphs;
    }

    public boolean hasSupplementaryChars() {
        CMap cMap = this.cmap;
        return (cMap instanceof CMap.CMapFormat8) || (cMap instanceof CMap.CMapFormat10) || (cMap instanceof CMap.CMapFormat12);
    }

    @Override // sun.font.CharToGlyphMapper
    public int charToGlyph(int i) {
        return getGlyphFromCMAP(i);
    }

    @Override // sun.font.CharToGlyphMapper
    public void charsToGlyphs(int i, char[] cArr, int[] iArr) {
        int i2;
        char c;
        int i3 = 0;
        while (i3 < i) {
            char c2 = cArr[i3];
            if (c2 >= 55296 && c2 <= 56319 && i3 < i - 1 && (c = cArr[(i2 = i3 + 1)]) >= 56320 && c <= 57343) {
                iArr[i3] = getGlyphFromCMAP(((((c2 - 55296) * 1024) + c) - 56320) + 65536);
                iArr[i2] = 65535;
                i3 = i2;
            } else {
                iArr[i3] = getGlyphFromCMAP(c2);
            }
            i3++;
        }
    }

    private char getGlyphFromCMAP(int i, int i2) {
        if (i2 == 0) {
            return getGlyphFromCMAP(i);
        }
        try {
            char variationGlyph = this.cmap.getVariationGlyph(i, i2);
            if (variationGlyph >= this.numGlyphs && variationGlyph < 65534) {
                if (FontUtilities.isLogging()) {
                    FontUtilities.logWarning(this.font + " out of range glyph id=" + Integer.toHexString(variationGlyph) + " for char " + Integer.toHexString(i) + " for vs " + Integer.toHexString(i2));
                }
                return (char) this.missingGlyph;
            }
            return variationGlyph;
        } catch (Exception unused) {
            this.handleBadCMAP();
            return (char) this.missingGlyph;
        }
    }
}
