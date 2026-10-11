package org.apache.poi.xslf.usermodel;

import androidx.core.text.util.LocalePreferences;
import java.awt.Color;
import javax.xml.namespace.QName;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.AbstractColorStyle;
import org.apache.poi.sl.usermodel.ColorStyle;
import org.apache.poi.sl.usermodel.PresetColor;
import org.apache.poi.util.Internal;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFontReference;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHslColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveFixedPercentage;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSolidColorFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSystemColor;

@Internal
/* loaded from: classes13.dex */
public class XSLFColor {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) XSLFColor.class);
    private static final QName VAL_ATTR = new QName("val");
    private final Color _color;
    private final CTSchemeColor _phClr;
    private final XSLFSheet _sheet;
    private final XmlObject _xmlObject;

    /* loaded from: classes13.dex */
    public static class XSLFColorStyle extends AbstractColorStyle {
        private final Color color;
        private final CTSchemeColor phClr;
        private final XmlObject xmlObject;

        public XSLFColorStyle(XmlObject xmlObject, Color color, CTSchemeColor cTSchemeColor) {
            this.xmlObject = xmlObject;
            this.color = color;
            this.phClr = cTSchemeColor;
        }

        @Override // org.apache.poi.sl.usermodel.ColorStyle
        public int getAlpha() {
            return XSLFColor.getRawValue(this.phClr, this.xmlObject, "alpha");
        }

        @Override // org.apache.poi.sl.usermodel.ColorStyle
        public Color getColor() {
            return this.color;
        }

        @Override // org.apache.poi.sl.usermodel.ColorStyle
        public int getHueMod() {
            return XSLFColor.getRawValue(this.phClr, this.xmlObject, "hueMod");
        }

        @Override // org.apache.poi.sl.usermodel.ColorStyle
        public int getHueOff() {
            return XSLFColor.getRawValue(this.phClr, this.xmlObject, "hueOff");
        }

        @Override // org.apache.poi.sl.usermodel.ColorStyle
        public int getLumMod() {
            return XSLFColor.getRawValue(this.phClr, this.xmlObject, "lumMod");
        }

        @Override // org.apache.poi.sl.usermodel.ColorStyle
        public int getLumOff() {
            return XSLFColor.getRawValue(this.phClr, this.xmlObject, "lumOff");
        }

        @Override // org.apache.poi.sl.usermodel.ColorStyle
        public int getSatMod() {
            return XSLFColor.getRawValue(this.phClr, this.xmlObject, "satMod");
        }

        @Override // org.apache.poi.sl.usermodel.ColorStyle
        public int getSatOff() {
            return XSLFColor.getRawValue(this.phClr, this.xmlObject, "satOff");
        }

        @Override // org.apache.poi.sl.usermodel.ColorStyle
        public int getShade() {
            return XSLFColor.getRawValue(this.phClr, this.xmlObject, "shade");
        }

        @Override // org.apache.poi.sl.usermodel.ColorStyle
        public int getTint() {
            return XSLFColor.getRawValue(this.phClr, this.xmlObject, "tint");
        }
    }

    public XSLFColor(XmlObject xmlObject, XSLFTheme xSLFTheme, CTSchemeColor cTSchemeColor, XSLFSheet xSLFSheet) {
        this._xmlObject = xmlObject;
        this._phClr = cTSchemeColor;
        this._sheet = xSLFSheet;
        this._color = toColor(xmlObject, xSLFTheme);
    }

    private int getPercentageValue(String str) {
        int rawValue = getRawValue(this._phClr, this._xmlObject, str);
        return rawValue == -1 ? rawValue : rawValue / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getRawValue(CTSchemeColor cTSchemeColor, XmlObject xmlObject, String str) {
        String attributeText;
        XmlObject[] xmlObjectArr = {xmlObject, cTSchemeColor};
        for (int i = 0; i < 2; i++) {
            XmlObject xmlObject2 = xmlObjectArr[i];
            if (xmlObject2 != null) {
                XmlCursor newCursor = xmlObject2.newCursor();
                try {
                    if ((newCursor.toChild(XSSFRelation.NS_DRAWINGML, str) || (newCursor.toFirstChild() && newCursor.toChild(XSSFRelation.NS_DRAWINGML, str))) && (attributeText = newCursor.getAttributeText(VAL_ATTR)) != null && !"".equals(attributeText)) {
                        int parseInt = Integer.parseInt(attributeText);
                        newCursor.close();
                        return parseInt;
                    }
                    newCursor.close();
                } finally {
                }
            }
        }
        return -1;
    }

    private static boolean isInt(float f) {
        double d = f * 255.0d;
        return Math.abs(d - Math.rint(d)) < 1.0E-5d;
    }

    private static XmlObject nextObject(XmlObject xmlObject, XmlCursor xmlCursor, int i) {
        if (i == 0) {
            return xmlObject;
        }
        if (i != 1) {
            if (xmlCursor.toNextSibling()) {
                return xmlCursor.getObject();
            }
            return null;
        }
        if (xmlCursor.toFirstChild()) {
            return xmlCursor.getObject();
        }
        return null;
    }

    private Color toColor(CTHslColor cTHslColor) {
        return DrawPaint.HSL2RGB(cTHslColor.getHue2() / 60000.0d, POIXMLUnits.parsePercent(cTHslColor.xgetSat2()) / 1000.0d, POIXMLUnits.parsePercent(cTHslColor.xgetLum2()) / 1000.0d, 1.0d);
    }

    public int getAlpha() {
        return getPercentageValue("alpha");
    }

    public int getAlphaMod() {
        return getPercentageValue("alphaMod");
    }

    public int getAlphaOff() {
        return getPercentageValue("alphaOff");
    }

    public int getBlue() {
        return getPercentageValue("blue");
    }

    public int getBlueMod() {
        return getPercentageValue("blueMod");
    }

    public int getBlueOff() {
        return getPercentageValue("blueOff");
    }

    public Color getColor() {
        return DrawPaint.applyColorTransform(getColorStyle());
    }

    public ColorStyle getColorStyle() {
        return new XSLFColorStyle(this._xmlObject, this._color, this._phClr);
    }

    public int getGreen() {
        return getPercentageValue("green");
    }

    public int getGreenMod() {
        return getPercentageValue("greenMod");
    }

    public int getGreenOff() {
        return getPercentageValue("greenOff");
    }

    public int getHue() {
        int rawValue = getRawValue(this._phClr, this._xmlObject, "hue");
        return rawValue == -1 ? rawValue : rawValue / 60000;
    }

    public int getHueMod() {
        return getPercentageValue("hueMod");
    }

    public int getHueOff() {
        return getPercentageValue("hueOff");
    }

    public int getLum() {
        return getPercentageValue("lum");
    }

    public int getLumMod() {
        return getPercentageValue("lumMod");
    }

    public int getLumOff() {
        return getPercentageValue("lumOff");
    }

    public int getRed() {
        return getPercentageValue("red");
    }

    public int getRedMod() {
        return getPercentageValue("redMod");
    }

    public int getRedOff() {
        return getPercentageValue("redOff");
    }

    public int getSat() {
        return getPercentageValue(LocalePreferences.FirstDayOfWeek.SATURDAY);
    }

    public int getSatMod() {
        return getPercentageValue("satMod");
    }

    public int getSatOff() {
        return getPercentageValue("satOff");
    }

    public int getShade() {
        return getPercentageValue("shade");
    }

    public int getTint() {
        return getPercentageValue("tint");
    }

    @Internal
    public XmlObject getXmlObject() {
        return this._xmlObject;
    }

    @Internal
    public void setColor(Color color) {
        XmlObject xmlObject = this._xmlObject;
        if (!(xmlObject instanceof CTSolidColorFillProperties)) {
            LOGGER.atError().log("XSLFColor.setColor currently only supports CTSolidColorFillProperties");
            return;
        }
        CTSolidColorFillProperties cTSolidColorFillProperties = (CTSolidColorFillProperties) xmlObject;
        if (cTSolidColorFillProperties.isSetSrgbClr()) {
            cTSolidColorFillProperties.unsetSrgbClr();
        }
        if (cTSolidColorFillProperties.isSetScrgbClr()) {
            cTSolidColorFillProperties.unsetScrgbClr();
        }
        if (cTSolidColorFillProperties.isSetHslClr()) {
            cTSolidColorFillProperties.unsetHslClr();
        }
        if (cTSolidColorFillProperties.isSetPrstClr()) {
            cTSolidColorFillProperties.unsetPrstClr();
        }
        if (cTSolidColorFillProperties.isSetSchemeClr()) {
            cTSolidColorFillProperties.unsetSchemeClr();
        }
        if (cTSolidColorFillProperties.isSetSysClr()) {
            cTSolidColorFillProperties.unsetSysClr();
        }
        CTPositiveFixedPercentage cTPositiveFixedPercentage = null;
        float[] rGBComponents = color.getRGBComponents(null);
        boolean z = rGBComponents.length == 4 && rGBComponents[3] < 1.0f;
        if (isInt(rGBComponents[0]) && isInt(rGBComponents[1]) && isInt(rGBComponents[2])) {
            CTSRgbColor addNewSrgbClr = cTSolidColorFillProperties.addNewSrgbClr();
            addNewSrgbClr.setVal(new byte[]{(byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue()});
            if (z) {
                cTPositiveFixedPercentage = addNewSrgbClr.addNewAlpha();
            }
        } else {
            CTScRgbColor addNewScrgbClr = cTSolidColorFillProperties.addNewScrgbClr();
            double[] RGB2SCRGB = DrawPaint.RGB2SCRGB(color);
            addNewScrgbClr.setR(Integer.valueOf((int) Math.rint(RGB2SCRGB[0] * 100000.0d)));
            addNewScrgbClr.setG(Integer.valueOf((int) Math.rint(RGB2SCRGB[1] * 100000.0d)));
            addNewScrgbClr.setB(Integer.valueOf((int) Math.rint(RGB2SCRGB[2] * 100000.0d)));
            if (z) {
                cTPositiveFixedPercentage = addNewScrgbClr.addNewAlpha();
            }
        }
        if (cTPositiveFixedPercentage != null) {
            cTPositiveFixedPercentage.setVal(Integer.valueOf((int) Math.rint(rGBComponents[3] * 100000.0f)));
        }
    }

    private Color toColor(CTPresetColor cTPresetColor) {
        PresetColor valueOfOoxmlId = PresetColor.valueOfOoxmlId(cTPresetColor.getVal().toString());
        if (valueOfOoxmlId != null) {
            return valueOfOoxmlId.color;
        }
        return null;
    }

    private Color toColor(CTSchemeColor cTSchemeColor, XSLFTheme xSLFTheme) {
        String stringEnumAbstractBase = cTSchemeColor.getVal().toString();
        CTSchemeColor cTSchemeColor2 = this._phClr;
        if (cTSchemeColor2 != null) {
            stringEnumAbstractBase = cTSchemeColor2.getVal().toString();
        }
        CTColor cTColor = xSLFTheme == null ? null : xSLFTheme.getCTColor(this._sheet.mapSchemeColor(stringEnumAbstractBase));
        if (cTColor != null) {
            return toColor(cTColor, (XSLFTheme) null);
        }
        return null;
    }

    private Color toColor(CTScRgbColor cTScRgbColor) {
        return DrawPaint.SCRGB2RGB(POIXMLUnits.parsePercent(cTScRgbColor.xgetR()) / 100000.0d, POIXMLUnits.parsePercent(cTScRgbColor.xgetG()) / 100000.0d, POIXMLUnits.parsePercent(cTScRgbColor.xgetB()) / 100000.0d);
    }

    private Color toColor(CTSRgbColor cTSRgbColor) {
        byte[] val = cTSRgbColor.getVal();
        return new Color(val[0] & 255, val[1] & 255, val[2] & 255);
    }

    private Color toColor(CTSystemColor cTSystemColor) {
        Color color;
        if (cTSystemColor.isSetLastClr()) {
            byte[] lastClr = cTSystemColor.getLastClr();
            return new Color(lastClr[0] & 255, lastClr[1] & 255, lastClr[2] & 255);
        }
        PresetColor valueOfOoxmlId = PresetColor.valueOfOoxmlId(cTSystemColor.getVal().toString());
        return (valueOfOoxmlId == null || (color = valueOfOoxmlId.color) == null) ? Color.black : color;
    }

    private Color toColor(XmlObject xmlObject, XSLFTheme xSLFTheme) {
        Color color = null;
        if (xmlObject == null) {
            CTSchemeColor cTSchemeColor = this._phClr;
            if (cTSchemeColor == null) {
                return null;
            }
            return toColor(cTSchemeColor, xSLFTheme);
        }
        XmlCursor newCursor = xmlObject.newCursor();
        int i = 0;
        while (color == null) {
            try {
                XmlObject nextObject = nextObject(xmlObject, newCursor, i);
                if (nextObject == null) {
                    break;
                }
                if (nextObject instanceof CTHslColor) {
                    color = toColor((CTHslColor) nextObject);
                } else if (nextObject instanceof CTPresetColor) {
                    color = toColor((CTPresetColor) nextObject);
                } else if (nextObject instanceof CTSchemeColor) {
                    color = toColor((CTSchemeColor) nextObject, xSLFTheme);
                } else if (nextObject instanceof CTScRgbColor) {
                    color = toColor((CTScRgbColor) nextObject);
                } else if (nextObject instanceof CTSRgbColor) {
                    color = toColor((CTSRgbColor) nextObject);
                } else if (nextObject instanceof CTSystemColor) {
                    color = toColor((CTSystemColor) nextObject);
                } else if (!(nextObject instanceof CTFontReference) && i > 0) {
                    throw new IllegalArgumentException("Unexpected color choice: " + nextObject.getClass());
                }
                i++;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (newCursor != null) {
                        try {
                            newCursor.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        if (newCursor != null) {
            newCursor.close();
        }
        return color;
    }
}
