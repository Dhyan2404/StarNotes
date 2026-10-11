package sun.font;

import android.graphics.Typeface;
import com.onyx.harfbuzz.graphics.HBTypeface;
import java.awt.Font;
import java.awt.font.FontRenderContext;
import java.awt.geom.AffineTransform;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes16.dex */
public abstract class Font2D {
    public static final int DEFAULT_RANK = 4;
    public static final int FONT_CONFIG_RANK = 2;
    public static final int FWEIGHT_BOLD = 700;
    public static final int FWEIGHT_NORMAL = 400;
    public static final int FWIDTH_NORMAL = 5;
    public static final int JRE_RANK = 2;
    public static final int NATIVE_RANK = 5;
    public static final int TTF_RANK = 3;
    public static final int TYPE1_RANK = 4;
    public static final int UNKNOWN_RANK = 6;
    protected FontFamily family;
    protected String familyName;
    protected String fullName;
    public Font2DHandle handle;
    protected CharToGlyphMapper mapper;
    private boolean useWeak;
    public static final String[] boldNames = {"bold", "demibold", "demi-bold", "demi bold", "negreta", "demi"};
    public static final String[] italicNames = {"italic", "cursiva", "oblique", "inclined"};
    public static final String[] boldItalicNames = {"bolditalic", "bold-italic", "bold italic", "boldoblique", "bold-oblique", "bold oblique", "demibold italic", "negreta cursiva", "demi oblique"};
    public static final FontRenderContext DEFAULT_FRC = new FontRenderContext((AffineTransform) null, false, false);
    protected int style = 0;
    protected int fontRank = 4;
    protected ConcurrentHashMap<FontStrikeDesc, Reference<FontStrike>> strikeCache = new ConcurrentHashMap<>();
    protected Reference<FontStrike> lastFontStrike = new WeakReference(null);
    private int strikeCacheMax = 0;

    public boolean canDisplay(char c) {
        return getMapper().canDisplay(c);
    }

    public boolean canDoStyle(int i) {
        return i == this.style;
    }

    public int charToGlyph(int i) {
        return getMapper().charToGlyph(i);
    }

    public int charToVariationGlyph(int i, int i2) {
        return getMapper().charToVariationGlyph(i, i2);
    }

    public abstract FontStrike createStrike(FontStrikeDesc fontStrikeDesc);

    public byte getBaselineFor(char c) {
        return (byte) 0;
    }

    public String getFamilyName(Locale locale) {
        return this.familyName;
    }

    public void getFontMetrics(Font font, AffineTransform affineTransform, Object obj, Object obj2, float[] fArr) {
        StrikeMetrics fontMetrics = getStrike(font, affineTransform, FontStrikeDesc.getAAHintIntVal(obj, this, font.getSize()), FontStrikeDesc.getFMHintIntVal(obj2)).getFontMetrics();
        fArr[0] = fontMetrics.getAscent();
        fArr[1] = fontMetrics.getDescent();
        fArr[2] = fontMetrics.getLeading();
        fArr[3] = fontMetrics.getMaxAdvance();
        getStyleMetrics(font.getSize2D(), fArr, 4);
    }

    public String getFontName(Locale locale) {
        return this.fullName;
    }

    public HBTypeface getHBTypeface() {
        throw new UnsupportedOperationException();
    }

    public HBTypeface getHBTypefaceForGlyph(int i) {
        return getHBTypeface();
    }

    public float getItalicAngle(Font font, AffineTransform affineTransform, Object obj, Object obj2) {
        StrikeMetrics fontMetrics = getStrike(font, affineTransform, FontStrikeDesc.getAAHintIntVal(obj, this, 12), FontStrikeDesc.getFMHintIntVal(obj2)).getFontMetrics();
        float f = fontMetrics.ascentY;
        if (f != 0.0f) {
            float f2 = fontMetrics.ascentX;
            if (f2 != 0.0f) {
                return f2 / (-f);
            }
        }
        return 0.0f;
    }

    public abstract CharToGlyphMapper getMapper();

    public int getMissingGlyphCode() {
        return getMapper().getMissingGlyphCode();
    }

    public int getNumGlyphs() {
        return getMapper().getNumGlyphs();
    }

    public long getPlatformNativeFontPtr() {
        return 0L;
    }

    public String getPostscriptName() {
        return this.fullName;
    }

    public int getRank() {
        return this.fontRank;
    }

    public FontStrike getStrike(Font font) {
        FontStrike fontStrike = this.lastFontStrike.get();
        return fontStrike != null ? fontStrike : getStrike(font, DEFAULT_FRC);
    }

    public int getStyle() {
        return this.style;
    }

    public void getStyleMetrics(float f, float[] fArr, int i) {
        fArr[i] = (-fArr[0]) / 2.5f;
        int i2 = i + 1;
        float f2 = f / 12.0f;
        fArr[i2] = f2;
        fArr[i + 2] = f2 / 1.5f;
        fArr[i + 3] = fArr[i2];
    }

    public byte[] getTableBytes(int i) {
        return null;
    }

    public Typeface getTypeface() {
        throw new UnsupportedOperationException();
    }

    public Typeface getTypefaceForGlyph(int i) {
        return getTypeface();
    }

    public long getUnitsPerEm() {
        return 2048L;
    }

    public int getValidatedGlyphCode(int i) {
        return (i < 0 || i >= getMapper().getNumGlyphs()) ? getMapper().getMissingGlyphCode() : i;
    }

    public int getWeight() {
        return (this.style & 1) != 0 ? 700 : 400;
    }

    public int getWidth() {
        return 5;
    }

    public boolean hasSupplementaryChars() {
        return false;
    }

    public void setRank(int i) {
        this.fontRank = i;
    }

    public void setStyle() {
        String lowerCase = this.fullName.toLowerCase();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = boldItalicNames;
            if (i2 >= strArr.length) {
                int i3 = 0;
                while (true) {
                    String[] strArr2 = italicNames;
                    if (i3 >= strArr2.length) {
                        while (true) {
                            String[] strArr3 = boldNames;
                            if (i >= strArr3.length) {
                                return;
                            }
                            if (lowerCase.indexOf(strArr3[i]) != -1) {
                                this.style = 1;
                                return;
                            }
                            i++;
                        }
                    } else {
                        if (lowerCase.indexOf(strArr2[i3]) != -1) {
                            this.style = 2;
                            return;
                        }
                        i3++;
                    }
                }
            } else {
                if (lowerCase.indexOf(strArr[i2]) != -1) {
                    this.style = 3;
                    return;
                }
                i2++;
            }
        }
    }

    public void setUseWeakRefs(boolean z, int i) {
        this.useWeak = z;
        if (!z || i <= 0) {
            i = 0;
        }
        this.strikeCacheMax = i;
    }

    public boolean supportsEncoding(String str) {
        return false;
    }

    public void updateLastStrikeRef(FontStrike fontStrike) {
        this.lastFontStrike.clear();
        if (this.useWeak) {
            this.lastFontStrike = new WeakReference(fontStrike);
        } else {
            this.lastFontStrike = new SoftReference(fontStrike);
        }
    }

    public boolean useAAForPtSize(int i) {
        return true;
    }

    public boolean canDisplay(int i) {
        return getMapper().canDisplay(i);
    }

    public HBTypeface getHBTypeface(int i) {
        return getHBTypeface();
    }

    public Typeface getTypeface(int i) {
        return getTypeface();
    }

    public FontStrike getStrike(Font font, AffineTransform affineTransform, int i, int i2) {
        double size2D = font.getSize2D();
        AffineTransform affineTransform2 = (AffineTransform) affineTransform.clone();
        affineTransform2.scale(size2D, size2D);
        if (font.isTransformed()) {
            affineTransform2.concatenate(font.getTransform());
        }
        if (affineTransform2.getTranslateX() != 0.0d || affineTransform2.getTranslateY() != 0.0d) {
            affineTransform2.setTransform(affineTransform2.getScaleX(), affineTransform2.getShearY(), affineTransform2.getShearX(), affineTransform2.getScaleY(), 0.0d, 0.0d);
        }
        return getStrike(new FontStrikeDesc(affineTransform, affineTransform2, font.getStyle(), i, i2), false);
    }

    public void getFontMetrics(Font font, FontRenderContext fontRenderContext, float[] fArr) {
        StrikeMetrics fontMetrics = getStrike(font, fontRenderContext).getFontMetrics();
        fArr[0] = fontMetrics.getAscent();
        fArr[1] = fontMetrics.getDescent();
        fArr[2] = fontMetrics.getLeading();
        fArr[3] = fontMetrics.getMaxAdvance();
    }

    public FontStrike getStrike(Font font, AffineTransform affineTransform, AffineTransform affineTransform2, int i, int i2) {
        return getStrike(new FontStrikeDesc(affineTransform, affineTransform2, font.getStyle(), i, i2), false);
    }

    public FontStrike getStrike(Font font, FontRenderContext fontRenderContext) {
        AffineTransform transform = fontRenderContext.getTransform();
        double size2D = font.getSize2D();
        transform.scale(size2D, size2D);
        if (font.isTransformed()) {
            transform.concatenate(font.getTransform());
            if (transform.getTranslateX() != 0.0d || transform.getTranslateY() != 0.0d) {
                transform.setTransform(transform.getScaleX(), transform.getShearY(), transform.getShearX(), transform.getScaleY(), 0.0d, 0.0d);
            }
        }
        return getStrike(new FontStrikeDesc(fontRenderContext.getTransform(), transform, font.getStyle(), FontStrikeDesc.getAAHintIntVal(this, font, fontRenderContext), FontStrikeDesc.getFMHintIntVal(fontRenderContext.getFractionalMetricsHint())), false);
    }

    public FontStrike getStrike(FontStrikeDesc fontStrikeDesc) {
        return getStrike(fontStrikeDesc, true);
    }

    private FontStrike getStrike(FontStrikeDesc fontStrikeDesc, boolean z) {
        Reference<FontStrike> strikeRef;
        FontStrike fontStrike;
        FontStrike fontStrike2 = this.lastFontStrike.get();
        if (fontStrike2 != null && fontStrikeDesc.equals(fontStrike2.desc)) {
            return fontStrike2;
        }
        Reference<FontStrike> reference = this.strikeCache.get(fontStrikeDesc);
        if (reference != null && (fontStrike = reference.get()) != null) {
            updateLastStrikeRef(fontStrike);
            StrikeCache.refStrike(fontStrike);
            return fontStrike;
        }
        if (z) {
            fontStrikeDesc = new FontStrikeDesc(fontStrikeDesc);
        }
        FontStrike createStrike = createStrike(fontStrikeDesc);
        int type = fontStrikeDesc.glyphTx.getType();
        if (!this.useWeak && type != 32 && ((type & 16) == 0 || this.strikeCache.size() <= 10)) {
            strikeRef = StrikeCache.getStrikeRef(createStrike, this.useWeak);
        } else {
            strikeRef = StrikeCache.getStrikeRef(createStrike, true);
        }
        this.strikeCache.put(fontStrikeDesc, strikeRef);
        updateLastStrikeRef(createStrike);
        StrikeCache.refStrike(createStrike);
        return createStrike;
    }
}
