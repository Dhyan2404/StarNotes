package org.apache.poi.xddf.usermodel.text;

import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.text.XDDFSpacing;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacing;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextSpacingPercent;

/* loaded from: classes13.dex */
public class XDDFSpacingPercent extends XDDFSpacing {
    private CTTextSpacingPercent percent;
    private Double scale;

    public XDDFSpacingPercent(double d) {
        this(CTTextSpacing.Factory.newInstance(), CTTextSpacingPercent.Factory.newInstance(), null);
        if (this.spacing.isSetSpcPts()) {
            this.spacing.unsetSpcPts();
        }
        this.spacing.setSpcPct(this.percent);
        setPercent(d);
    }

    public double getPercent() {
        return POIXMLUnits.parsePercent(this.percent.xgetVal()) * this.scale.doubleValue();
    }

    @Override // org.apache.poi.xddf.usermodel.text.XDDFSpacing
    public XDDFSpacing.Kind getType() {
        return XDDFSpacing.Kind.PERCENT;
    }

    public void setPercent(double d) {
        this.percent.setVal(Integer.valueOf((int) (d * 1000.0d)));
    }

    @Internal
    public XDDFSpacingPercent(CTTextSpacing cTTextSpacing, CTTextSpacingPercent cTTextSpacingPercent, Double d) {
        super(cTTextSpacing);
        this.percent = cTTextSpacingPercent;
        this.scale = Double.valueOf(d != null ? 0.001d * d.doubleValue() : 0.001d);
    }
}
