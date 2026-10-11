package sun.font;

/* loaded from: classes16.dex */
public final class Type1GlyphMapper extends CharToGlyphMapper {
    Type1Font font;
    FontScaler scaler;

    public Type1GlyphMapper(Type1Font type1Font) {
        this.font = type1Font;
        initMapper();
    }

    private void initMapper() {
        FontScaler scaler = this.font.getScaler();
        this.scaler = scaler;
        try {
            this.missingGlyph = scaler.getMissingGlyphCode();
        } catch (FontScalerException unused) {
            FontScaler nullScaler = FontScaler.getNullScaler();
            this.scaler = nullScaler;
            try {
                this.missingGlyph = nullScaler.getMissingGlyphCode();
            } catch (FontScalerException unused2) {
                this.missingGlyph = 0;
            }
        }
    }

    @Override // sun.font.CharToGlyphMapper
    public boolean canDisplay(char c) {
        try {
            return this.scaler.getGlyphCode(c) != this.missingGlyph;
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.canDisplay(c);
        }
    }

    @Override // sun.font.CharToGlyphMapper
    public int charToGlyph(char c) {
        try {
            return this.scaler.getGlyphCode(c);
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.charToGlyph(c);
        }
    }

    @Override // sun.font.CharToGlyphMapper
    public void charsToGlyphs(int i, char[] cArr, int[] iArr) {
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
            iArr[i2] = charToGlyph(i3);
            if (i3 >= 65536) {
                i2++;
            }
            i2++;
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
            iArr[i2] = charToGlyph(i3);
            if (i3 >= 768) {
                if (FontUtilities.isComplexCharCode(i3)) {
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
    public int getMissingGlyphCode() {
        return this.missingGlyph;
    }

    @Override // sun.font.CharToGlyphMapper
    public int getNumGlyphs() {
        try {
            return this.scaler.getNumGlyphs();
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.getNumGlyphs();
        }
    }

    @Override // sun.font.CharToGlyphMapper
    public int charToGlyph(int i) {
        if (i >= 0 && i <= 65535) {
            try {
                return this.scaler.getGlyphCode((char) i);
            } catch (FontScalerException unused) {
                this.scaler = FontScaler.getNullScaler();
                return this.charToGlyph(i);
            }
        }
        return this.missingGlyph;
    }

    @Override // sun.font.CharToGlyphMapper
    public void charsToGlyphs(int i, int[] iArr, int[] iArr2) {
        for (int i2 = 0; i2 < i; i2++) {
            iArr2[i2] = charToGlyph(iArr[i2]);
        }
    }
}
