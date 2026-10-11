package org.apache.poi.xddf.usermodel.text;

import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBulletSizePercent;

/* loaded from: classes13.dex */
public class XDDFBulletSizePercent implements XDDFBulletSize {
    private CTTextBulletSizePercent percent;
    private Double scale;

    public XDDFBulletSizePercent(double d) {
        this(CTTextBulletSizePercent.Factory.newInstance(), null);
        setPercent(d);
    }

    public double getPercent() {
        return POIXMLUnits.parsePercent(this.percent.xgetVal()) * this.scale.doubleValue();
    }

    @Internal
    public CTTextBulletSizePercent getXmlObject() {
        return this.percent;
    }

    public void setPercent(double d) {
        this.percent.setVal(Long.toString(Math.round(d * 1000.0d)));
    }

    @Internal
    public XDDFBulletSizePercent(CTTextBulletSizePercent cTTextBulletSizePercent, Double d) {
        this.percent = cTTextBulletSizePercent;
        this.scale = Double.valueOf(d != null ? 0.001d * d.doubleValue() : 0.001d);
    }
}
