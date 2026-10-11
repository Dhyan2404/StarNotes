package org.apache.poi.xssf.usermodel;

import java.awt.Color;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Units;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRegularTextRun;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSolidColorFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextFont;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextNormalAutofit;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextStrikeType;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextUnderlineType;

/* loaded from: classes13.dex */
public class XSSFTextRun {

    /* renamed from: _p */
    private final XSSFTextParagraph f111833_p;

    /* renamed from: _r */
    private final CTRegularTextRun f111834_r;

    public XSSFTextRun(CTRegularTextRun cTRegularTextRun, XSSFTextParagraph xSSFTextParagraph) {
        this.f111834_r = cTRegularTextRun;
        this.f111833_p = xSSFTextParagraph;
    }

    public double getCharacterSpacing() {
        CTTextCharacterProperties rPr = getRPr();
        if (rPr.isSetSpc()) {
            return Units.toPoints(POIXMLUnits.parseLength(rPr.xgetSpc()));
        }
        return 0.0d;
    }

    public Color getFontColor() {
        CTTextCharacterProperties rPr = getRPr();
        if (rPr.isSetSolidFill()) {
            CTSolidColorFillProperties solidFill = rPr.getSolidFill();
            if (solidFill.isSetSrgbClr()) {
                byte[] val = solidFill.getSrgbClr().getVal();
                return new Color(val[0] & 255, val[1] & 255, val[2] & 255);
            }
        }
        return new Color(0, 0, 0);
    }

    public String getFontFamily() {
        CTTextFont latin = getRPr().getLatin();
        return latin != null ? latin.getTypeface() : XSSFFont.DEFAULT_FONT_NAME;
    }

    public double getFontSize() {
        CTTextNormalAutofit normAutofit = getParentParagraph().getParentShape().getTxBody().getBodyPr().getNormAutofit();
        return (getRPr().isSetSz() ? r6.getSz() * 0.01d : 11.0d) * (normAutofit != null ? ((Double) normAutofit.getFontScale()).doubleValue() / 100000.0d : 1.0d);
    }

    public XSSFTextParagraph getParentParagraph() {
        return this.f111833_p;
    }

    public byte getPitchAndFamily() {
        CTTextFont latin = getRPr().getLatin();
        if (latin != null) {
            return latin.getPitchFamily();
        }
        return (byte) 0;
    }

    public CTTextCharacterProperties getRPr() {
        boolean isSetRPr = this.f111834_r.isSetRPr();
        CTRegularTextRun cTRegularTextRun = this.f111834_r;
        return isSetRPr ? cTRegularTextRun.getRPr() : cTRegularTextRun.addNewRPr();
    }

    public String getText() {
        return this.f111834_r.getT();
    }

    public TextCap getTextCap() {
        return getRPr().isSetCap() ? TextCap.values()[r1.getCap().intValue() - 1] : TextCap.NONE;
    }

    public CTRegularTextRun getXmlObject() {
        return this.f111834_r;
    }

    public boolean isBold() {
        CTTextCharacterProperties rPr = getRPr();
        if (rPr.isSetB()) {
            return rPr.getB();
        }
        return false;
    }

    public boolean isItalic() {
        CTTextCharacterProperties rPr = getRPr();
        if (rPr.isSetI()) {
            return rPr.getI();
        }
        return false;
    }

    public boolean isStrikethrough() {
        CTTextCharacterProperties rPr = getRPr();
        return rPr.isSetStrike() && rPr.getStrike() != STTextStrikeType.NO_STRIKE;
    }

    public boolean isSubscript() {
        CTTextCharacterProperties rPr = getRPr();
        return rPr.isSetBaseline() && POIXMLUnits.parsePercent(rPr.xgetBaseline()) < 0;
    }

    public boolean isSuperscript() {
        CTTextCharacterProperties rPr = getRPr();
        return rPr.isSetBaseline() && POIXMLUnits.parsePercent(rPr.xgetBaseline()) > 0;
    }

    public boolean isUnderline() {
        CTTextCharacterProperties rPr = getRPr();
        return rPr.isSetU() && rPr.getU() != STTextUnderlineType.NONE;
    }

    public void setBaselineOffset(double d) {
        getRPr().setBaseline(Integer.valueOf(((int) d) * 1000));
    }

    public void setBold(boolean z) {
        getRPr().setB(z);
    }

    public void setCharacterSpacing(double d) {
        CTTextCharacterProperties rPr = getRPr();
        if (d != 0.0d) {
            rPr.setSpc(Integer.valueOf((int) (d * 100.0d)));
        } else if (rPr.isSetSpc()) {
            rPr.unsetSpc();
        }
    }

    public void setFont(String str) {
        setFontFamily(str, (byte) -1, (byte) -1, false);
    }

    public void setFontColor(Color color) {
        CTTextCharacterProperties rPr = getRPr();
        CTSolidColorFillProperties solidFill = rPr.isSetSolidFill() ? rPr.getSolidFill() : rPr.addNewSolidFill();
        (solidFill.isSetSrgbClr() ? solidFill.getSrgbClr() : solidFill.addNewSrgbClr()).setVal(new byte[]{(byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue()});
        if (solidFill.isSetHslClr()) {
            solidFill.unsetHslClr();
        }
        if (solidFill.isSetPrstClr()) {
            solidFill.unsetPrstClr();
        }
        if (solidFill.isSetSchemeClr()) {
            solidFill.unsetSchemeClr();
        }
        if (solidFill.isSetScrgbClr()) {
            solidFill.unsetScrgbClr();
        }
        if (solidFill.isSetSysClr()) {
            solidFill.unsetSysClr();
        }
    }

    public void setFontFamily(String str, byte b, byte b2, boolean z) {
        CTTextCharacterProperties rPr = getRPr();
        if (str == null) {
            if (rPr.isSetLatin()) {
                rPr.unsetLatin();
            }
            if (rPr.isSetCs()) {
                rPr.unsetCs();
            }
            if (rPr.isSetSym()) {
                rPr.unsetSym();
                return;
            }
            return;
        }
        if (z) {
            (rPr.isSetSym() ? rPr.getSym() : rPr.addNewSym()).setTypeface(str);
            return;
        }
        CTTextFont latin = rPr.isSetLatin() ? rPr.getLatin() : rPr.addNewLatin();
        latin.setTypeface(str);
        if (b != -1) {
            latin.setCharset(b);
        }
        if (b2 != -1) {
            latin.setPitchFamily(b2);
        }
    }

    public void setFontSize(double d) {
        CTTextCharacterProperties rPr = getRPr();
        if (d == -1.0d) {
            if (rPr.isSetSz()) {
                rPr.unsetSz();
            }
        } else {
            if (d >= 1.0d) {
                rPr.setSz((int) (d * 100.0d));
                return;
            }
            throw new IllegalArgumentException("Minimum font size is 1pt but was " + d);
        }
    }

    public void setItalic(boolean z) {
        getRPr().setI(z);
    }

    public void setStrikethrough(boolean z) {
        getRPr().setStrike(z ? STTextStrikeType.SNG_STRIKE : STTextStrikeType.NO_STRIKE);
    }

    public void setSubscript(boolean z) {
        setBaselineOffset(z ? -25.0d : 0.0d);
    }

    public void setSuperscript(boolean z) {
        setBaselineOffset(z ? 30.0d : 0.0d);
    }

    public void setText(String str) {
        this.f111834_r.setT(str);
    }

    public void setUnderline(boolean z) {
        getRPr().setU(z ? STTextUnderlineType.SNG : STTextUnderlineType.NONE);
    }

    public String toString() {
        return IteratorUtils.f104923a + getClass() + IteratorUtils.f104924b + getText();
    }
}
