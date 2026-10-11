package org.apache.poi.xddf.usermodel.text;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextNoAutofit;

/* loaded from: classes13.dex */
public class XDDFNoAutoFit implements XDDFAutoFit {
    private CTTextNoAutofit autofit;

    public XDDFNoAutoFit() {
        this(CTTextNoAutofit.Factory.newInstance());
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
    public CTTextNoAutofit getXmlObject() {
        return this.autofit;
    }

    @Internal
    public XDDFNoAutoFit(CTTextNoAutofit cTTextNoAutofit) {
        this.autofit = cTTextNoAutofit;
    }
}
