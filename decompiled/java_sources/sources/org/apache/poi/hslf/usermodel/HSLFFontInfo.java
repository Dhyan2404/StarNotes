package org.apache.poi.hslf.usermodel;

import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.util.ArrayList;
import java.util.List;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.common.usermodel.fonts.FontFamily;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.common.usermodel.fonts.FontPitch;
import org.apache.poi.hslf.record.FontEmbeddedData;
import org.apache.poi.hslf.record.FontEntityAtom;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public class HSLFFontInfo implements FontInfo {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private FontCharset charset;
    private final List<FontEmbeddedData> facets;
    private FontFamily family;
    private FontEntityAtom fontEntityAtom;
    private int index;
    private boolean isSubsetted;
    private boolean isSubstitutable;
    private FontPitch pitch;
    private FontRenderType renderType;
    private String typeface;
    private static final BitField FLAGS_EMBED_SUBSETTED = BitFieldFactory.getInstance(1);
    private static final BitField FLAGS_RENDER_FONTTYPE = BitFieldFactory.getInstance(7);
    private static final BitField FLAGS_NO_FONT_SUBSTITUTION = BitFieldFactory.getInstance(8);

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFFontInfo$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194571 {

        /* renamed from: $SwitchMap$org$apache$poi$hslf$usermodel$HSLFFontInfo$FontRenderType */
        static final /* synthetic */ int[] f111383x3a86dd2c;

        static {
            int[] iArr = new int[FontRenderType.values().length];
            f111383x3a86dd2c = iArr;
            try {
                iArr[FontRenderType.device.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111383x3a86dd2c[FontRenderType.raster.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111383x3a86dd2c[FontRenderType.truetype.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum FontRenderType {
        raster,
        device,
        truetype
    }

    public HSLFFontInfo(String str) {
        this.index = -1;
        this.typeface = OcrValues.ENGINE_UNDEFINED;
        this.charset = FontCharset.ANSI;
        this.renderType = FontRenderType.truetype;
        this.family = FontFamily.FF_SWISS;
        this.pitch = FontPitch.VARIABLE;
        this.isSubstitutable = true;
        this.facets = new ArrayList();
        setTypeface(str);
    }

    public void addFacet(FontEmbeddedData fontEmbeddedData) {
        this.facets.add(fontEmbeddedData);
    }

    public FontEntityAtom createRecord() {
        FontEntityAtom fontEntityAtom = new FontEntityAtom();
        this.fontEntityAtom = fontEntityAtom;
        fontEntityAtom.setFontIndex(getIndex().intValue() << 4);
        fontEntityAtom.setFontName(getTypeface());
        fontEntityAtom.setCharSet(getCharset().getNativeId());
        fontEntityAtom.setFontFlags(isEmbedSubsetted() ? (byte) 1 : (byte) 0);
        int i = C194571.f111383x3a86dd2c[this.renderType.ordinal()];
        fontEntityAtom.setFontType(FLAGS_NO_FONT_SUBSTITUTION.setBoolean(i != 1 ? i != 2 ? FLAGS_RENDER_FONTTYPE.setValue(0, 4) : FLAGS_RENDER_FONTTYPE.setValue(0, 2) : FLAGS_RENDER_FONTTYPE.setValue(0, 1), isFontSubstitutable()));
        fontEntityAtom.setPitchAndFamily(FontPitch.getNativeId(this.pitch, this.family));
        return fontEntityAtom;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontCharset getCharset() {
        return this.charset;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public List<FontEmbeddedData> getFacets() {
        return this.facets;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontFamily getFamily() {
        return this.family;
    }

    @Internal
    public FontEntityAtom getFontEntityAtom() {
        return this.fontEntityAtom;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public Integer getIndex() {
        return Integer.valueOf(this.index);
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontPitch getPitch() {
        return this.pitch;
    }

    public FontRenderType getRenderType() {
        return this.renderType;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public String getTypeface() {
        return this.typeface;
    }

    public boolean isEmbedSubsetted() {
        return this.isSubsetted;
    }

    public boolean isFontSubstitutable() {
        return this.isSubstitutable;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public void setCharset(FontCharset fontCharset) {
        if (fontCharset == null) {
            fontCharset = FontCharset.ANSI;
        }
        this.charset = fontCharset;
    }

    public void setEmbedSubsetted(boolean z) {
        this.isSubsetted = z;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public void setFamily(FontFamily fontFamily) {
        if (fontFamily == null) {
            fontFamily = FontFamily.FF_SWISS;
        }
        this.family = fontFamily;
    }

    public void setFontSubstitutable(boolean z) {
        this.isSubstitutable = z;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public void setIndex(int i) {
        this.index = i;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public void setPitch(FontPitch fontPitch) {
        if (fontPitch == null) {
            fontPitch = FontPitch.VARIABLE;
        }
        this.pitch = fontPitch;
    }

    public void setRenderType(FontRenderType fontRenderType) {
        if (fontRenderType == null) {
            fontRenderType = FontRenderType.truetype;
        }
        this.renderType = fontRenderType;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public void setTypeface(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("typeface can't be null nor empty");
        }
        this.typeface = str;
    }

    public HSLFFontInfo(FontEntityAtom fontEntityAtom) {
        this.index = -1;
        this.typeface = OcrValues.ENGINE_UNDEFINED;
        this.charset = FontCharset.ANSI;
        FontRenderType fontRenderType = FontRenderType.truetype;
        this.renderType = fontRenderType;
        this.family = FontFamily.FF_SWISS;
        this.pitch = FontPitch.VARIABLE;
        this.isSubstitutable = true;
        this.facets = new ArrayList();
        this.fontEntityAtom = fontEntityAtom;
        setIndex(fontEntityAtom.getFontIndex());
        setTypeface(fontEntityAtom.getFontName());
        setCharset(FontCharset.valueOf(fontEntityAtom.getCharSet()));
        int value = FLAGS_RENDER_FONTTYPE.getValue(fontEntityAtom.getFontType());
        if (value == 1) {
            setRenderType(FontRenderType.raster);
        } else if (value != 2) {
            setRenderType(fontRenderType);
        } else {
            setRenderType(FontRenderType.device);
        }
        byte pitchAndFamily = (byte) fontEntityAtom.getPitchAndFamily();
        setPitch(FontPitch.valueOfPitchFamily(pitchAndFamily));
        setFamily(FontFamily.valueOfPitchFamily(pitchAndFamily));
        setEmbedSubsetted(FLAGS_EMBED_SUBSETTED.isSet(fontEntityAtom.getFontFlags()));
        setFontSubstitutable(!FLAGS_NO_FONT_SUBSTITUTION.isSet(fontEntityAtom.getFontType()));
    }

    public HSLFFontInfo(FontInfo fontInfo) {
        this.index = -1;
        this.typeface = OcrValues.ENGINE_UNDEFINED;
        this.charset = FontCharset.ANSI;
        this.renderType = FontRenderType.truetype;
        this.family = FontFamily.FF_SWISS;
        this.pitch = FontPitch.VARIABLE;
        this.isSubstitutable = true;
        this.facets = new ArrayList();
        setTypeface(fontInfo.getTypeface());
        setCharset(fontInfo.getCharset());
        setFamily(fontInfo.getFamily());
        setPitch(fontInfo.getPitch());
        if (fontInfo instanceof HSLFFontInfo) {
            HSLFFontInfo hSLFFontInfo = (HSLFFontInfo) fontInfo;
            setRenderType(hSLFFontInfo.getRenderType());
            setEmbedSubsetted(hSLFFontInfo.isEmbedSubsetted());
            setFontSubstitutable(hSLFFontInfo.isFontSubstitutable());
        }
    }
}
