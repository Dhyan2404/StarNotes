package org.apache.poi.xddf.usermodel.text;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextShapeAutofit;

/* loaded from: classes13.dex */
public class XDDFShapeAutoFit implements XDDFAutoFit {
    private CTTextShapeAutofit autofit;

    public XDDFShapeAutoFit() {
        this(CTTextShapeAutofit.Factory.newInstance());
    }

    @Override // org.apache.poi.xddf.usermodel.text.XDDFAutoFit
    public int getFontScale() {
        return 100000;
    }

    @Override // org.apache.poi.xddf.usermodel.text.XDDFAutoFit
    public int getLineSpaceReduction() {
        return 0;
    }

    @Internal
    public CTTextShapeAutofit getXmlObject() {
        return this.autofit;
    }

    @Internal
    public XDDFShapeAutoFit(CTTextShapeAutofit cTTextShapeAutofit) {
        this.autofit = cTTextShapeAutofit;
    }
}
