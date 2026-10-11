package org.apache.poi.xslf.usermodel;

import java.awt.Color;
import org.apache.poi.xslf.usermodel.XSLFPropertiesDelegate;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorMapping;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGradientStop;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGradientStopList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSolidColorFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.STColorSchemeIndex;

/* loaded from: classes13.dex */
public class XSLFColorDelegate {
    public static Color getAccentColor(XSLFSheet xSLFSheet, CTColorMapping cTColorMapping, int i) {
        String str;
        if (i < 1 || i > 6) {
            throw new IllegalArgumentException("accentIndex must be {1 ~ 6}");
        }
        STColorSchemeIndex.Enum r0 = null;
        if (xSLFSheet == null) {
            return null;
        }
        if (cTColorMapping != null) {
            switch (i) {
                case 1:
                    r0 = cTColorMapping.getAccent1();
                    break;
                case 2:
                    r0 = cTColorMapping.getAccent2();
                    break;
                case 3:
                    r0 = cTColorMapping.getAccent3();
                    break;
                case 4:
                    r0 = cTColorMapping.getAccent4();
                    break;
                case 5:
                    r0 = cTColorMapping.getAccent5();
                    break;
                case 6:
                    r0 = cTColorMapping.getAccent6();
                    break;
            }
        }
        if (r0 != null) {
            str = r0.toString();
        } else {
            str = "accent" + i;
        }
        CTColor cTColor = xSLFSheet.getTheme().getCTColor(str);
        return new XSLFColor(cTColor, xSLFSheet.getTheme(), cTColor.getSchemeClr(), xSLFSheet).getColor();
    }

    public static Color getColor(XSLFSheet xSLFSheet, CTShapeProperties cTShapeProperties) {
        if (cTShapeProperties == null) {
            return null;
        }
        Color color = getColor(xSLFSheet, XSLFPropertiesDelegate.getFillDelegate(cTShapeProperties));
        return color == null ? getColor(xSLFSheet, XSLFPropertiesDelegate.getFillDelegate(cTShapeProperties.getLn())) : color;
    }

    public static Color getColor(XSLFSheet xSLFSheet, CTTextCharacterProperties cTTextCharacterProperties) {
        if (cTTextCharacterProperties == null) {
            return null;
        }
        Color color = getColor(xSLFSheet, XSLFPropertiesDelegate.getFillDelegate(cTTextCharacterProperties));
        return color == null ? getColor(xSLFSheet, XSLFPropertiesDelegate.getFillDelegate(cTTextCharacterProperties.getLn())) : color;
    }

    public static Color getColor(XSLFSheet xSLFSheet, XSLFPropertiesDelegate.XSLFFillProperties xSLFFillProperties) {
        CTColor fgClr;
        CTGradientStopList gsLst;
        if (xSLFFillProperties != null && !xSLFFillProperties.isSetNoFill()) {
            if (xSLFFillProperties.isSetSolidFill()) {
                CTSolidColorFillProperties solidFill = xSLFFillProperties.getSolidFill();
                return new XSLFColor(solidFill, xSLFSheet.getTheme(), solidFill.getSchemeClr(), xSLFSheet).getColor();
            }
            if (xSLFFillProperties.isSetGradFill() && (gsLst = xSLFFillProperties.getGradFill().getGsLst()) != null && gsLst.sizeOfGsArray() > 0) {
                CTGradientStop gsArray = gsLst.getGsArray(0);
                return new XSLFColor(gsArray, xSLFSheet.getTheme(), gsArray.getSchemeClr(), xSLFSheet).getColor();
            }
            if (xSLFFillProperties.isSetPattFill() && (fgClr = xSLFFillProperties.getPattFill().getFgClr()) != null) {
                return new XSLFColor(fgClr, xSLFSheet.getTheme(), fgClr.getSchemeClr(), xSLFSheet).getColor();
            }
        }
        return null;
    }
}
