package org.apache.poi.convert.xwpf.property;

import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.style.UnitValue;
import org.apache.poi.xwpf.usermodel.UnderlinePatterns;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STVerticalAlignRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLanguage;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STEm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STThemeColor;

/* loaded from: classes12.dex */
public interface IRunPropertyFetcher extends BordersFetcher {
    CTLanguage getCTLang();

    UnitValue getCharacterSpacing();

    String getColor();

    CTEm getEm();

    STEm.Enum getEmphasisMark();

    String getFontFamily(FontGroup fontGroup);

    UnitValue getFontSize(FontGroup fontGroup);

    Integer getKerning();

    String getLang();

    CTFonts getRFonts();

    CTHpsMeasure getSz();

    CTHpsMeasure getSzCs();

    String getTextHighlightColor();

    UnitValue getTextScale();

    default byte[] getThemeColor(String str) {
        return null;
    }

    UnderlinePatterns getUnderline();

    String getUnderlineColor();

    STThemeColor.Enum getUnderlineThemeColorEnum();

    STVerticalAlignRun.Enum getVerticalAlignment();

    Boolean isBold();

    Boolean isCapitalized();

    Boolean isDoubleStrikeThrough();

    Boolean isEmbossed();

    Boolean isHighlighted();

    Boolean isImprinted();

    Boolean isItalic();

    Boolean isShadowed();

    Boolean isSmallCaps();

    Boolean isStrikeThrough();

    Boolean isVanish();
}
