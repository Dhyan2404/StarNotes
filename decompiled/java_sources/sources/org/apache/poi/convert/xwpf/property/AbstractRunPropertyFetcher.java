package org.apache.poi.convert.xwpf.property;

import java.math.BigDecimal;
import java.math.RoundingMode;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.style.UnitValue;
import org.apache.poi.util.Units;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STHint;

/* loaded from: classes12.dex */
public abstract class AbstractRunPropertyFetcher implements IRunPropertyFetcher {

    /* renamed from: org.apache.poi.convert.xwpf.property.AbstractRunPropertyFetcher$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194291 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$convert$xwpf$property$Hint;

        static {
            int[] iArr = new int[Hint.values().length];
            $SwitchMap$org$apache$poi$convert$xwpf$property$Hint = iArr;
            try {
                iArr[Hint.EAST_ASIA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$convert$xwpf$property$Hint[Hint.HANSI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$convert$xwpf$property$Hint[Hint.CS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$convert$xwpf$property$Hint[Hint.ASCII.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$convert$xwpf$property$Hint[Hint.DEFAULT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[FontGroup.values().length];
            $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup = iArr2;
            try {
                iArr2[FontGroup.EAST_ASIAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.COMPLEX_SCRIPT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.LATIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[FontGroup.SYMBOL.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public String getFontFamily(FontGroup fontGroup) {
        Hint fontHint;
        CTFonts rFonts = getRFonts();
        if (WordToHtmlUtils.isNull(rFonts)) {
            return null;
        }
        String fontFromCTFontsByFontGroup = getFontFromCTFontsByFontGroup(fontGroup, rFonts);
        return (WordToHtmlUtils.isNotEmpty(fontFromCTFontsByFontGroup) || (fontHint = getFontHint(rFonts)) == Hint.NONE) ? fontFromCTFontsByFontGroup : getFontFromCTFontsByHint(fontHint, rFonts);
    }

    public String getFontFromCTFontsByFontGroup(FontGroup fontGroup, CTFonts cTFonts) {
        int i = C194291.$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup[fontGroup.ordinal()];
        if (i != 1) {
            return i != 2 ? cTFonts.getAscii() : cTFonts.getCs();
        }
        String eastAsia = cTFonts.getEastAsia();
        return WordToHtmlUtils.isEmpty(eastAsia) ? cTFonts.getHAnsi() : eastAsia;
    }

    public String getFontFromCTFontsByHint(Hint hint, CTFonts cTFonts) {
        int i = C194291.$SwitchMap$org$apache$poi$convert$xwpf$property$Hint[hint.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? cTFonts.getAscii() : cTFonts.getCs() : cTFonts.getHAnsi() : cTFonts.getEastAsia();
    }

    public Hint getFontHint(CTFonts cTFonts) {
        try {
            try {
                STHint xgetHint = cTFonts.xgetHint();
                return WordToHtmlUtils.isNull(xgetHint) ? Hint.NONE : Hint.getHint(xgetHint.getStringValue());
            } catch (Exception unused) {
                return Hint.NONE;
            }
        } catch (Exception unused2) {
            return Hint.getHint(XmlAnySimpleType.Factory.parse(cTFonts.xgetHint().toString()).getStringValue());
        }
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public UnitValue getFontSize(FontGroup fontGroup) {
        CTHpsMeasure sz;
        if (fontGroup == FontGroup.COMPLEX_SCRIPT) {
            sz = getSzCs();
            if (WordToHtmlUtils.isNull(sz)) {
                sz = getSz();
            }
        } else {
            sz = getSz();
            if (WordToHtmlUtils.isNull(sz)) {
                sz = getSzCs();
            }
        }
        if (WordToHtmlUtils.isNull(sz)) {
            return null;
        }
        return UnitValue.fromPT(BigDecimal.valueOf(Units.toPoints(POIXMLUnits.parseLength(sz.xgetVal()))).divide(BigDecimal.valueOf(4L), 1, RoundingMode.HALF_UP).doubleValue());
    }
}
