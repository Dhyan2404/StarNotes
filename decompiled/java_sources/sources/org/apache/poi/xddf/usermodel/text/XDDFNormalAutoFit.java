package org.apache.poi.xddf.usermodel.text;

import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextNormalAutofit;

/* loaded from: classes13.dex */
public class XDDFNormalAutoFit implements XDDFAutoFit {
    private CTTextNormalAutofit autofit;

    public XDDFNormalAutoFit() {
        this(CTTextNormalAutofit.Factory.newInstance());
    }

    @Override // org.apache.poi.xddf.usermodel.text.XDDFAutoFit
    public int getFontScale() {
        if (this.autofit.isSetFontScale()) {
            return POIXMLUnits.parsePercent(this.autofit.xgetFontScale());
        }
        return 100000;
    }

    @Override // org.apache.poi.xddf.usermodel.text.XDDFAutoFit
    public int getLineSpaceReduction() {
        if (this.autofit.isSetLnSpcReduction()) {
            return POIXMLUnits.parsePercent(this.autofit.xgetLnSpcReduction());
        }
        return 0;
    }

    @Internal
    public CTTextNormalAutofit getXmlObject() {
        return this.autofit;
    }

    public void setFontScale(Integer num) {
        if (num != null) {
            this.autofit.setFontScale(num);
        } else if (this.autofit.isSetFontScale()) {
            this.autofit.unsetFontScale();
        }
    }

    public void setLineSpaceReduction(Integer num) {
        if (num != null) {
            this.autofit.setLnSpcReduction(num);
        } else if (this.autofit.isSetLnSpcReduction()) {
            this.autofit.unsetLnSpcReduction();
        }
    }

    @Internal
    public XDDFNormalAutoFit(CTTextNormalAutofit cTTextNormalAutofit) {
        this.autofit = cTTextNormalAutofit;
    }
}
