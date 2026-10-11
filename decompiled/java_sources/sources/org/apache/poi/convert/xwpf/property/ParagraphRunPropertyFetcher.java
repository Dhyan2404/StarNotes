package org.apache.poi.convert.xwpf.property;

import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.style.UnitValue;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.UnderlinePatterns;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STVerticalAlignRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLanguage;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTUnderline;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTVerticalAlignRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STEm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STHexColor;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STThemeColor;

/* loaded from: classes12.dex */
public class ParagraphRunPropertyFetcher extends AbstractRunPropertyFetcher {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private CTParaRPr rpr;

    public ParagraphRunPropertyFetcher(CTParaRPr cTParaRPr) {
        this.rpr = cTParaRPr;
        if (cTParaRPr == null) {
            throw new NullPointerException("rpr is null");
        }
    }

    private CTUnderline getCTUnderline(boolean z) {
        if (this.rpr.sizeOfUArray() > 0) {
            return this.rpr.getUArray(0);
        }
        if (z) {
            return this.rpr.addNewU();
        }
        return null;
    }

    public CTBorder getCTBorder(boolean z) {
        CTBorder bdrArray = this.rpr.sizeOfBdrArray() > 0 ? this.rpr.getBdrArray(0) : null;
        return (z && bdrArray == null) ? this.rpr.addNewBdr() : bdrArray;
    }

    @Override // org.apache.poi.convert.xwpf.property.BordersFetcher
    public CTBorder[] getCTBorders() {
        if (this.rpr.sizeOfBdrArray() <= 0) {
            return null;
        }
        return this.rpr.getBdrArray();
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public CTLanguage getCTLang() {
        if (this.rpr.sizeOfLangArray() > 0) {
            return this.rpr.getLangArray(0);
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public UnitValue getCharacterSpacing() {
        if (this.rpr.sizeOfSpacingArray() == 0) {
            return null;
        }
        return UnitValue.fromPX(Units.pointsToPixel(Units.toDXA(POIXMLUnits.parseLength(this.rpr.getSpacingArray(0).xgetVal())) / 20.0d));
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public String getColor() {
        STHexColor xgetVal;
        if (this.rpr.sizeOfColorArray() <= 0 || (xgetVal = this.rpr.getColorArray(0).xgetVal()) == null) {
            return null;
        }
        return xgetVal.getStringValue();
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public CTEm getEm() {
        if (this.rpr.sizeOfEmArray() > 0) {
            return this.rpr.getEmArray(0);
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public STEm.Enum getEmphasisMark() {
        STEm.Enum val;
        CTEm emArray = this.rpr.sizeOfEmArray() > 0 ? this.rpr.getEmArray(0) : null;
        return (WordToHtmlUtils.isNull(emArray) || (val = emArray.getVal()) == null) ? STEm.NONE : val;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Integer getKerning() {
        if (this.rpr.sizeOfKernArray() == 0) {
            return null;
        }
        return Integer.valueOf((int) POIXMLUnits.parseLength(this.rpr.getKernArray(0).xgetVal()));
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public String getLang() {
        if (this.rpr.sizeOfLangArray() == 0) {
            return null;
        }
        return this.rpr.getLangArray(0).getVal();
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public CTFonts getRFonts() {
        if (this.rpr.sizeOfRFontsArray() > 0) {
            return this.rpr.getRFontsArray(0);
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public CTHpsMeasure getSz() {
        if (this.rpr.sizeOfSzArray() > 0) {
            return this.rpr.getSzArray(0);
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public CTHpsMeasure getSzCs() {
        if (this.rpr.sizeOfSzCsArray() > 0) {
            return this.rpr.getSzCsArray(0);
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public String getTextHighlightColor() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public UnitValue getTextScale() {
        int parsePercent;
        if (this.rpr.sizeOfWArray() == 0 || (parsePercent = POIXMLUnits.parsePercent(this.rpr.getWArray(0).xgetVal())) == 0) {
            return null;
        }
        return UnitValue.fromNum(parsePercent / 100000.0d);
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public UnderlinePatterns getUnderline() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public String getUnderlineColor() {
        Object color = getCTUnderline(true).getColor();
        if (color == null) {
            return "auto";
        }
        if (color instanceof String) {
            return (String) color;
        }
        byte[] bArr = (byte[]) color;
        return HexDump.toHex(bArr[0]) + HexDump.toHex(bArr[1]) + HexDump.toHex(bArr[2]);
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public STThemeColor.Enum getUnderlineThemeColorEnum() {
        CTUnderline cTUnderline = getCTUnderline(false);
        return cTUnderline != null ? cTUnderline.getThemeColor() : STThemeColor.NONE;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public STVerticalAlignRun.Enum getVerticalAlignment() {
        CTVerticalAlignRun vertAlignArray = this.rpr.sizeOfVertAlignArray() > 0 ? this.rpr.getVertAlignArray(0) : null;
        if (WordToHtmlUtils.isNull(vertAlignArray)) {
            return null;
        }
        return vertAlignArray.getVal();
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isBold() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isCapitalized() {
        if (this.rpr.sizeOfCapsArray() > 0) {
            return Boolean.valueOf(POIXMLUnits.parseOnOff(this.rpr.getCapsArray(0)));
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isDoubleStrikeThrough() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isEmbossed() {
        if (this.rpr.sizeOfEmbossArray() > 0) {
            return Boolean.valueOf(POIXMLUnits.parseOnOff(this.rpr.getEmbossArray(0)));
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isHighlighted() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isImprinted() {
        if (this.rpr.sizeOfImprintArray() > 0) {
            return Boolean.valueOf(POIXMLUnits.parseOnOff(this.rpr.getImprintArray(0)));
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isItalic() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isShadowed() {
        if (this.rpr.sizeOfShadowArray() > 0) {
            return Boolean.valueOf(POIXMLUnits.parseOnOff(this.rpr.getShadowArray(0)));
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isSmallCaps() {
        if (this.rpr.sizeOfSmallCapsArray() > 0) {
            return Boolean.valueOf(POIXMLUnits.parseOnOff(this.rpr.getSmallCapsArray(0)));
        }
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isStrikeThrough() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.IRunPropertyFetcher
    public Boolean isVanish() {
        return null;
    }
}
