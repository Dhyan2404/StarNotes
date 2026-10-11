package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNoFillProperties;

/* loaded from: classes13.dex */
public class XDDFNoFillProperties implements XDDFFillProperties {
    private CTNoFillProperties props;

    public XDDFNoFillProperties() {
        this(CTNoFillProperties.Factory.newInstance());
    }

    @Internal
    public CTNoFillProperties getXmlObject() {
        return this.props;
    }

    public XDDFNoFillProperties(CTNoFillProperties cTNoFillProperties) {
        this.props = cTNoFillProperties;
    }
}
