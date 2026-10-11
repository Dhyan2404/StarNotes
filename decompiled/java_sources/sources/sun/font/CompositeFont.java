package sun.font;

import android.graphics.Typeface;
import com.onyx.harfbuzz.graphics.HBTypeface;

/* loaded from: classes16.dex */
public final class CompositeFont extends Font2D {
    String[] componentFileNames;
    String[] componentNames;
    private PhysicalFont[] components;
    private boolean[] deferredInitialisation;
    int[] exclusionRanges;
    int[] maxIndices;
    int numMetricsSlots;
    int numSlots;
    int numGlyphs = 0;
    int localeSlot = -1;
    boolean isStdComposite = true;

    public CompositeFont(String str, String[] strArr, String[] strArr2, int i, int[] iArr, int[] iArr2, boolean z, SunFontManager sunFontManager) {
        this.handle = new Font2DHandle(this);
        this.fullName = str;
        this.componentFileNames = strArr;
        this.componentNames = strArr2;
        if (strArr2 == null) {
            this.numSlots = strArr.length;
        } else {
            this.numSlots = strArr2.length;
        }
        int i2 = this.numSlots;
        this.numSlots = i2 > 254 ? 254 : i2;
        this.numMetricsSlots = i;
        this.exclusionRanges = iArr;
        this.maxIndices = iArr2;
        if (sunFontManager.getEUDCFont() != null) {
            int i3 = this.numMetricsSlots;
            int i4 = this.numSlots;
            int i5 = i4 - i3;
            int i6 = i4 + 1;
            this.numSlots = i6;
            if (this.componentNames != null) {
                String[] strArr3 = new String[i6];
                this.componentNames = strArr3;
                System.arraycopy(strArr2, 0, strArr3, 0, i3);
                this.componentNames[i3] = sunFontManager.getEUDCFont().getFontName(null);
                System.arraycopy(strArr2, i3, this.componentNames, i3 + 1, i5);
            }
            if (this.componentFileNames != null) {
                String[] strArr4 = new String[this.numSlots];
                this.componentFileNames = strArr4;
                System.arraycopy(strArr, 0, strArr4, 0, i3);
                System.arraycopy(strArr, i3, this.componentFileNames, i3 + 1, i5);
            }
            PhysicalFont[] physicalFontArr = new PhysicalFont[this.numSlots];
            this.components = physicalFontArr;
            physicalFontArr[i3] = sunFontManager.getEUDCFont();
            this.deferredInitialisation = new boolean[this.numSlots];
            if (z) {
                for (int i7 = 0; i7 < this.numSlots - 1; i7++) {
                    this.deferredInitialisation[i7] = true;
                }
            }
        } else {
            int i8 = this.numSlots;
            this.components = new PhysicalFont[i8];
            this.deferredInitialisation = new boolean[i8];
            if (z) {
                for (int i9 = 0; i9 < this.numSlots; i9++) {
                    this.deferredInitialisation[i9] = true;
                }
            }
        }
        this.fontRank = 2;
        int indexOf = this.fullName.indexOf(46);
        if (indexOf > 0) {
            this.familyName = this.fullName.substring(0, indexOf);
            int i10 = indexOf + 1;
            if (i10 < this.fullName.length()) {
                String substring = this.fullName.substring(i10);
                if ("plain".equals(substring)) {
                    this.style = 0;
                    return;
                }
                if ("bold".equals(substring)) {
                    this.style = 1;
                    return;
                } else if ("italic".equals(substring)) {
                    this.style = 2;
                    return;
                } else {
                    if ("bolditalic".equals(substring)) {
                        this.style = 3;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        this.familyName = this.fullName;
    }

    private void doDeferredInitialisation(int i) {
        String str;
        if (this.deferredInitialisation[i]) {
            SunFontManager sunFontManager = SunFontManager.getInstance();
            synchronized (sunFontManager) {
                if (this.componentNames == null) {
                    this.componentNames = new String[this.numSlots];
                }
                PhysicalFont[] physicalFontArr = this.components;
                if (physicalFontArr[i] == null) {
                    String[] strArr = this.componentFileNames;
                    if (strArr != null && (str = strArr[i]) != null) {
                        physicalFontArr[i] = sunFontManager.initialiseDeferredFont(str);
                    }
                    PhysicalFont[] physicalFontArr2 = this.components;
                    if (physicalFontArr2[i] == null) {
                        physicalFontArr2[i] = sunFontManager.getDefaultPhysicalFont();
                    }
                    String fontName = this.components[i].getFontName(null);
                    String[] strArr2 = this.componentNames;
                    String str2 = strArr2[i];
                    if (str2 == null) {
                        strArr2[i] = fontName;
                    } else if (!str2.equalsIgnoreCase(fontName)) {
                        try {
                            this.components[i] = (PhysicalFont) sunFontManager.findFont2D(this.componentNames[i], this.style, 1);
                        } catch (ClassCastException unused) {
                            this.components[i] = sunFontManager.getDefaultPhysicalFont();
                        }
                    }
                }
                this.deferredInitialisation[i] = false;
            }
        }
    }

    @Override // sun.font.Font2D
    public boolean canDisplay(char c) {
        return getMapper().canDisplay(c);
    }

    @Override // sun.font.Font2D
    public FontStrike createStrike(FontStrikeDesc fontStrikeDesc) {
        return new CompositeStrike(this, fontStrikeDesc);
    }

    @Override // sun.font.Font2D
    public HBTypeface getHBTypeface() {
        return getSlotFont(0).getHBTypeface();
    }

    @Override // sun.font.Font2D
    public HBTypeface getHBTypefaceForGlyph(int i) {
        return getSlotFont(i >>> 24).getHBTypeface();
    }

    @Override // sun.font.Font2D
    public CharToGlyphMapper getMapper() {
        if (this.mapper == null) {
            this.mapper = new CompositeGlyphMapper(this);
        }
        return this.mapper;
    }

    @Override // sun.font.Font2D
    public int getMissingGlyphCode() {
        return getMapper().getMissingGlyphCode();
    }

    @Override // sun.font.Font2D
    public int getNumGlyphs() {
        if (this.numGlyphs == 0) {
            this.numGlyphs = getMapper().getNumGlyphs();
        }
        return this.numGlyphs;
    }

    public int getNumSlots() {
        return this.numSlots;
    }

    public PhysicalFont getSlotFont(int i) {
        if (this.deferredInitialisation[i]) {
            doDeferredInitialisation(i);
        }
        SunFontManager sunFontManager = SunFontManager.getInstance();
        try {
            PhysicalFont physicalFont = this.components[i];
            if (physicalFont != null) {
                return physicalFont;
            }
            try {
                PhysicalFont physicalFont2 = (PhysicalFont) sunFontManager.findFont2D(this.componentNames[i], this.style, 1);
                this.components[i] = physicalFont2;
                return physicalFont2;
            } catch (ClassCastException unused) {
                return sunFontManager.getDefaultPhysicalFont();
            }
        } catch (Exception unused2) {
            return sunFontManager.getDefaultPhysicalFont();
        }
    }

    @Override // sun.font.Font2D
    public void getStyleMetrics(float f, float[] fArr, int i) {
        PhysicalFont slotFont = getSlotFont(0);
        if (slotFont == null) {
            super.getStyleMetrics(f, fArr, i);
        } else {
            slotFont.getStyleMetrics(f, fArr, i);
        }
    }

    @Override // sun.font.Font2D
    public Typeface getTypeface() {
        return getSlotFont(0).getTypeface();
    }

    @Override // sun.font.Font2D
    public Typeface getTypefaceForGlyph(int i) {
        return getSlotFont(i >>> 24).getTypeface();
    }

    @Override // sun.font.Font2D
    public int getValidatedGlyphCode(int i) {
        int i2 = i >>> 24;
        if (i2 >= this.numSlots) {
            return getMapper().getMissingGlyphCode();
        }
        PhysicalFont slotFont = getSlotFont(i2);
        return slotFont.getValidatedGlyphCode(16777215 & i) == slotFont.getMissingGlyphCode() ? getMapper().getMissingGlyphCode() : i;
    }

    @Override // sun.font.Font2D
    public boolean hasSupplementaryChars() {
        for (int i = 0; i < this.numSlots; i++) {
            if (getSlotFont(i).hasSupplementaryChars()) {
                return true;
            }
        }
        return false;
    }

    public boolean isExcludedChar(int i, int i2) {
        int[] iArr;
        if (this.exclusionRanges != null && (iArr = this.maxIndices) != null && i < this.numMetricsSlots) {
            int i3 = iArr[i];
            for (int i4 = i > 0 ? iArr[i - 1] : 0; i3 > i4; i4 += 2) {
                int[] iArr2 = this.exclusionRanges;
                if (i2 >= iArr2[i4] && i2 <= iArr2[i4 + 1]) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isStdComposite() {
        return this.isStdComposite;
    }

    public void replaceComponentFont(PhysicalFont physicalFont, PhysicalFont physicalFont2) {
        if (this.components == null) {
            return;
        }
        for (int i = 0; i < this.numSlots; i++) {
            PhysicalFont[] physicalFontArr = this.components;
            if (physicalFontArr[i] == physicalFont) {
                physicalFontArr[i] = physicalFont2;
                String[] strArr = this.componentNames;
                if (strArr != null) {
                    strArr[i] = physicalFont2.getFontName(null);
                }
            }
        }
    }

    public String toString() {
        String lineSeparator = System.lineSeparator();
        String str = "";
        for (int i = 0; i < this.numSlots; i++) {
            str = str + "    Slot[" + i + "]=" + getSlotFont(i) + lineSeparator;
        }
        return "** Composite Font: Family=" + this.familyName + " Name=" + this.fullName + " style=" + this.style + lineSeparator + str;
    }

    @Override // sun.font.Font2D
    public boolean useAAForPtSize(int i) {
        if (this.localeSlot == -1) {
            int i2 = this.numMetricsSlots;
            if (i2 == 1 && !isStdComposite()) {
                i2 = this.numSlots;
            }
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                if (getSlotFont(i3).supportsEncoding(null)) {
                    this.localeSlot = i3;
                    break;
                }
                i3++;
            }
            if (this.localeSlot == -1) {
                this.localeSlot = 0;
            }
        }
        return getSlotFont(this.localeSlot).useAAForPtSize(i);
    }

    @Override // sun.font.Font2D
    public HBTypeface getHBTypeface(int i) {
        return getSlotFont(getMapper().charToGlyph(i) >>> 24).getHBTypeface();
    }

    @Override // sun.font.Font2D
    public Typeface getTypeface(int i) {
        return getSlotFont(getMapper().charToGlyph(i) >>> 24).getTypeface();
    }

    public CompositeFont(PhysicalFont[] physicalFontArr) {
        this.handle = new Font2DHandle(this);
        PhysicalFont physicalFont = physicalFontArr[0];
        this.fullName = physicalFont.fullName;
        this.familyName = physicalFont.familyName;
        this.style = physicalFont.style;
        this.numMetricsSlots = 1;
        int length = physicalFontArr.length;
        this.numSlots = length;
        PhysicalFont[] physicalFontArr2 = new PhysicalFont[length];
        this.components = physicalFontArr2;
        System.arraycopy(physicalFontArr, 0, physicalFontArr2, 0, length);
        this.deferredInitialisation = new boolean[this.numSlots];
    }

    public CompositeFont(PhysicalFont physicalFont, CompositeFont compositeFont) {
        this.handle = new Font2DHandle(this);
        this.fullName = physicalFont.fullName;
        this.familyName = physicalFont.familyName;
        this.style = physicalFont.style;
        this.numMetricsSlots = 1;
        this.numSlots = compositeFont.numSlots + 1;
        synchronized (FontManagerFactory.getInstance()) {
            PhysicalFont[] physicalFontArr = new PhysicalFont[this.numSlots];
            this.components = physicalFontArr;
            physicalFontArr[0] = physicalFont;
            System.arraycopy(compositeFont.components, 0, physicalFontArr, 1, compositeFont.numSlots);
            if (compositeFont.componentNames != null) {
                String[] strArr = new String[this.numSlots];
                this.componentNames = strArr;
                strArr[0] = physicalFont.fullName;
                System.arraycopy(compositeFont.componentNames, 0, strArr, 1, compositeFont.numSlots);
            }
            if (compositeFont.componentFileNames != null) {
                String[] strArr2 = new String[this.numSlots];
                this.componentFileNames = strArr2;
                strArr2[0] = null;
                System.arraycopy(compositeFont.componentFileNames, 0, strArr2, 1, compositeFont.numSlots);
            }
            boolean[] zArr = new boolean[this.numSlots];
            this.deferredInitialisation = zArr;
            zArr[0] = false;
            System.arraycopy(compositeFont.deferredInitialisation, 0, zArr, 1, compositeFont.numSlots);
        }
    }
}
