package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTStretchInfoProperties;

/* loaded from: classes13.dex */
public class XDDFStretchInfoProperties {
    private CTStretchInfoProperties props;

    public XDDFStretchInfoProperties(CTStretchInfoProperties cTStretchInfoProperties) {
        this.props = cTStretchInfoProperties;
    }

    public XDDFRelativeRectangle getFillRectangle() {
        if (this.props.isSetFillRect()) {
            return new XDDFRelativeRectangle(this.props.getFillRect());
        }
        return null;
    }

    @Internal
    public CTStretchInfoProperties getXmlObject() {
        return this.props;
    }

    public void setFillRectangle(XDDFRelativeRectangle xDDFRelativeRectangle) {
        if (xDDFRelativeRectangle != null) {
            this.props.setFillRect(xDDFRelativeRectangle.getXmlObject());
        } else if (this.props.isSetFillRect()) {
            this.props.unsetFillRect();
        }
    }
}
