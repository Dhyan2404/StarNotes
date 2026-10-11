package org.apache.poi.hslf.usermodel;

import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.common.usermodel.fonts.FontFamily;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.common.usermodel.fonts.FontPitch;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.style.TextStyles;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'ARIAL' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes12.dex */
public final class HSLFFontInfoPredefined implements FontInfo {
    private static final /* synthetic */ HSLFFontInfoPredefined[] $VALUES;
    public static final HSLFFontInfoPredefined ARIAL;
    public static final HSLFFontInfoPredefined COURIER_NEW;
    public static final HSLFFontInfoPredefined TIMES_NEW_ROMAN;
    public static final HSLFFontInfoPredefined WINGDINGS;
    private FontCharset charset;
    private FontFamily family;
    private FontPitch pitch;
    private String typeface;

    static {
        FontCharset fontCharset = FontCharset.ANSI;
        FontPitch fontPitch = FontPitch.VARIABLE;
        HSLFFontInfoPredefined hSLFFontInfoPredefined = new HSLFFontInfoPredefined("ARIAL", 0, HSSFFont.FONT_ARIAL, fontCharset, fontPitch, FontFamily.FF_SWISS);
        ARIAL = hSLFFontInfoPredefined;
        HSLFFontInfoPredefined hSLFFontInfoPredefined2 = new HSLFFontInfoPredefined("TIMES_NEW_ROMAN", 1, TextStyles.FONT_LATIN, fontCharset, fontPitch, FontFamily.FF_ROMAN);
        TIMES_NEW_ROMAN = hSLFFontInfoPredefined2;
        HSLFFontInfoPredefined hSLFFontInfoPredefined3 = new HSLFFontInfoPredefined("COURIER_NEW", 2, "Courier New", fontCharset, FontPitch.FIXED, FontFamily.FF_MODERN);
        COURIER_NEW = hSLFFontInfoPredefined3;
        HSLFFontInfoPredefined hSLFFontInfoPredefined4 = new HSLFFontInfoPredefined("WINGDINGS", 3, "Wingdings", FontCharset.SYMBOL, fontPitch, FontFamily.FF_DONTCARE);
        WINGDINGS = hSLFFontInfoPredefined4;
        $VALUES = new HSLFFontInfoPredefined[]{hSLFFontInfoPredefined, hSLFFontInfoPredefined2, hSLFFontInfoPredefined3, hSLFFontInfoPredefined4};
    }

    private HSLFFontInfoPredefined(String str, int i, String str2, FontCharset fontCharset, FontPitch fontPitch, FontFamily fontFamily) {
        this.typeface = str2;
        this.charset = fontCharset;
        this.pitch = fontPitch;
        this.family = fontFamily;
    }

    public static HSLFFontInfoPredefined valueOf(String str) {
        return (HSLFFontInfoPredefined) Enum.valueOf(HSLFFontInfoPredefined.class, str);
    }

    public static HSLFFontInfoPredefined[] values() {
        return (HSLFFontInfoPredefined[]) $VALUES.clone();
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontCharset getCharset() {
        return this.charset;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontFamily getFamily() {
        return this.family;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontPitch getPitch() {
        return this.pitch;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public String getTypeface() {
        return this.typeface;
    }
}
