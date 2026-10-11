package org.apache.poi.xddf.usermodel;

import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHslColor;

/* loaded from: classes13.dex */
public class XDDFColorHsl extends XDDFColor {
    private CTHslColor color;

    public XDDFColorHsl(int i, int i2, int i3) {
        this(CTHslColor.Factory.newInstance(), CTColor.Factory.newInstance());
        setHue(i);
        setSaturation(i2);
        setLuminance(i3);
    }

    public int getHue() {
        return this.color.getHue2();
    }

    public int getLuminance() {
        return POIXMLUnits.parsePercent(this.color.xgetLum2()) / 1000;
    }

    public int getSaturation() {
        return POIXMLUnits.parsePercent(this.color.xgetSat2()) / 1000;
    }

    @Override // org.apache.poi.xddf.usermodel.XDDFColor
    @Internal
    public XmlObject getXmlObject() {
        return this.color;
    }

    public void setHue(int i) {
        this.color.setHue2(i);
    }

    public void setLuminance(int i) {
        this.color.setLum2(Integer.valueOf(i));
    }

    public void setSaturation(int i) {
        this.color.setSat2(Integer.valueOf(i));
    }

    @Internal
    public XDDFColorHsl(CTHslColor cTHslColor) {
        this(cTHslColor, null);
    }

    @Internal
    public XDDFColorHsl(CTHslColor cTHslColor, CTColor cTColor) {
        super(cTColor);
        this.color = cTHslColor;
    }
}
