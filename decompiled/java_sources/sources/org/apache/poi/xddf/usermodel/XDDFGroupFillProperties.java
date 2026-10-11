package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupFillProperties;

/* loaded from: classes13.dex */
public class XDDFGroupFillProperties implements XDDFFillProperties {
    private CTGroupFillProperties props;

    public XDDFGroupFillProperties() {
        this(CTGroupFillProperties.Factory.newInstance());
    }

    @Internal
    public CTGroupFillProperties getXmlObject() {
        return this.props;
    }

    public XDDFGroupFillProperties(CTGroupFillProperties cTGroupFillProperties) {
        this.props = cTGroupFillProperties;
    }
}
