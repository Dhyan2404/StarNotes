package sun.font;

/* loaded from: classes16.dex */
public class CompositeGlyphMapper extends CharToGlyphMapper {
    public static final int BLOCKSZ = 256;
    public static final int GLYPHMASK = 16777215;
    public static final int MAXUNICODE = 55296;
    public static final int NBLOCKS = 216;
    public static final int SLOTMASK = -16777216;
    CompositeFont font;
    int[][] glyphMaps;
    private boolean hasExcludes;
    CharToGlyphMapper[] slotMappers;

    public CompositeGlyphMapper(CompositeFont compositeFont) {
        this.font = compositeFont;
        initMapper();
        this.hasExcludes = (compositeFont.exclusionRanges == null || compositeFont.maxIndices == null) ? false : true;
    }

    private int convertToGlyph(int i) {
        CharToGlyphMapper slotMapper;
        int charToGlyph;
        int i2 = 0;
        while (true) {
            CompositeFont compositeFont = this.font;
            if (i2 >= compositeFont.numSlots) {
                return this.missingGlyph;
            }
            if ((!this.hasExcludes || !compositeFont.isExcludedChar(i2, i)) && (charToGlyph = (slotMapper = getSlotMapper(i2)).charToGlyph(i)) != slotMapper.getMissingGlyphCode()) {
                int compositeGlyphCode = compositeGlyphCode(i2, charToGlyph);
                setCachedGlyphCode(i, compositeGlyphCode);
                return compositeGlyphCode;
            }
            i2++;
        }
    }

    private int getCachedGlyphCode(int i) {
        int[] iArr;
        if (i < 55296 && (iArr = this.glyphMaps[i >> 8]) != null) {
            return iArr[i & 255];
        }
        return -1;
    }

    private CharToGlyphMapper getSlotMapper(int i) {
        CharToGlyphMapper charToGlyphMapper = this.slotMappers[i];
        if (charToGlyphMapper != null) {
            return charToGlyphMapper;
        }
        CharToGlyphMapper mapper = this.font.getSlotFont(i).getMapper();
        this.slotMappers[i] = mapper;
        return mapper;
    }

    private void initMapper() {
        if (this.missingGlyph == -1) {
            if (this.glyphMaps == null) {
                this.glyphMaps = new int[216];
            }
            CompositeFont compositeFont = this.font;
            this.slotMappers = new CharToGlyphMapper[compositeFont.numSlots];
            int missingGlyphCode = compositeFont.getSlotFont(0).getMissingGlyphCode();
            this.missingGlyph = missingGlyphCode;
            this.missingGlyph = compositeGlyphCode(0, missingGlyphCode);
        }
    }

    private void setCachedGlyphCode(int i, int i2) {
        if (i >= 55296) {
            return;
        }
        int i3 = i >> 8;
        int[][] iArr = this.glyphMaps;
        if (iArr[i3] == null) {
            iArr[i3] = new int[256];
            for (int i4 = 0; i4 < 256; i4++) {
                this.glyphMaps[i3][i4] = -1;
            }
        }
        this.glyphMaps[i3][i & 255] = i2;
    }

    @Override // sun.font.CharToGlyphMapper
    public int charToGlyph(int i) {
        int cachedGlyphCode = getCachedGlyphCode(i);
        return cachedGlyphCode == -1 ? convertToGlyph(i) : cachedGlyphCode;
    }

    @Override // sun.font.CharToGlyphMapper
    public void charsToGlyphs(int i, char[] cArr, int[] iArr) {
        int i2;
        char c;
        int i3 = 0;
        while (i3 < i) {
            char c2 = cArr[i3];
            if (c2 >= 55296 && c2 <= 56319 && i3 < i - 1 && (c = cArr[(i2 = i3 + 1)]) >= 56320 && c <= 57343) {
                int i4 = ((((c2 - 55296) * 1024) + c) - 56320) + 65536;
                int cachedGlyphCode = getCachedGlyphCode(i4);
                iArr[i3] = cachedGlyphCode;
                if (cachedGlyphCode == -1) {
                    iArr[i3] = convertToGlyph(i4);
                }
                iArr[i2] = 65535;
                i3 = i2;
            } else {
                int cachedGlyphCode2 = getCachedGlyphCode(c2);
                iArr[i3] = cachedGlyphCode2;
                if (cachedGlyphCode2 == -1) {
                    iArr[i3] = convertToGlyph(c2);
                }
            }
            i3++;
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
            int cachedGlyphCode = getCachedGlyphCode(i3);
            iArr[i2] = cachedGlyphCode;
            if (cachedGlyphCode == -1) {
                iArr[i2] = convertToGlyph(i3);
            }
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

    public int compositeGlyphCode(int i, int i2) {
        return (i << 24) | (16777215 & i2);
    }

    @Override // sun.font.CharToGlyphMapper
    public int getNumGlyphs() {
        CharToGlyphMapper charToGlyphMapper = this.slotMappers[0];
        if (charToGlyphMapper == null) {
            charToGlyphMapper = this.font.getSlotFont(0).getMapper();
            this.slotMappers[0] = charToGlyphMapper;
        }
        return 0 + charToGlyphMapper.getNumGlyphs();
    }

    public int charToGlyph(int i, int i2) {
        CharToGlyphMapper slotMapper;
        int charToGlyph;
        if (i2 >= 0 && (charToGlyph = (slotMapper = getSlotMapper(i2)).charToGlyph(i)) != slotMapper.getMissingGlyphCode()) {
            return compositeGlyphCode(i2, charToGlyph);
        }
        return charToGlyph(i);
    }

    @Override // sun.font.CharToGlyphMapper
    public int charToGlyph(char c) {
        int cachedGlyphCode = getCachedGlyphCode(c);
        return cachedGlyphCode == -1 ? convertToGlyph(c) : cachedGlyphCode;
    }

    @Override // sun.font.CharToGlyphMapper
    public void charsToGlyphs(int i, int[] iArr, int[] iArr2) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            int cachedGlyphCode = getCachedGlyphCode(i3);
            iArr2[i2] = cachedGlyphCode;
            if (cachedGlyphCode == -1) {
                iArr2[i2] = convertToGlyph(i3);
            }
        }
    }
}
