package org.apache.poi.xddf.usermodel;

import java.util.Locale;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.STPercentage;

/* loaded from: classes13.dex */
public class XDDFColorRgbPercent extends XDDFColor {
    private final CTScRgbColor color;

    public XDDFColorRgbPercent(int i, int i2, int i3) {
        this(CTScRgbColor.Factory.newInstance(), CTColor.Factory.newInstance());
        setRed(i);
        setGreen(i2);
        setBlue(i3);
    }

    private int normalize(int i) {
        if (i < 0) {
            return 0;
        }
        return Math.min(100000, i);
    }

    public int getBlue() {
        return POIXMLUnits.parsePercent(this.color.xgetB());
    }

    public int getGreen() {
        return POIXMLUnits.parsePercent(this.color.xgetG());
    }

    public int getRed() {
        return POIXMLUnits.parsePercent(this.color.xgetR());
    }

    @Override // org.apache.poi.xddf.usermodel.XDDFColor
    @Internal
    public XmlObject getXmlObject() {
        return this.color;
    }

    public void setBlue(int i) {
        this.color.setB(Integer.valueOf(normalize(i)));
    }

    public void setGreen(int i) {
        this.color.setG(Integer.valueOf(normalize(i)));
    }

    public void setRed(int i) {
        this.color.setR(Integer.valueOf(normalize(i)));
    }

    public String toRGBHex() {
        STPercentage[] sTPercentageArr = {this.color.xgetR(), this.color.xgetG(), this.color.xgetB()};
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            i = (i << 8) | (((POIXMLUnits.parsePercent(sTPercentageArr[i2]) * 255) / 100000) & 255);
        }
        return String.format(Locale.ROOT, "%06X", Integer.valueOf(i));
    }

    @Internal
    public XDDFColorRgbPercent(CTScRgbColor cTScRgbColor) {
        this(cTScRgbColor, null);
    }

    @Internal
    public XDDFColorRgbPercent(CTScRgbColor cTScRgbColor, CTColor cTColor) {
        super(cTColor);
        this.color = cTScRgbColor;
    }
}
