package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLineEndProperties;

/* loaded from: classes13.dex */
public class XDDFLineEndProperties {
    private CTLineEndProperties props;

    public XDDFLineEndProperties(CTLineEndProperties cTLineEndProperties) {
        this.props = cTLineEndProperties;
    }

    public LineEndLength getLength() {
        return LineEndLength.valueOf(this.props.getLen());
    }

    public LineEndType getType() {
        return LineEndType.valueOf(this.props.getType());
    }

    public LineEndWidth getWidth() {
        return LineEndWidth.valueOf(this.props.getW());
    }

    @Internal
    public CTLineEndProperties getXmlObject() {
        return this.props;
    }

    public void setLength(LineEndLength lineEndLength) {
        this.props.setLen(lineEndLength.underlying);
    }

    public void setType(LineEndType lineEndType) {
        this.props.setType(lineEndType.underlying);
    }

    public void setWidth(LineEndWidth lineEndWidth) {
        this.props.setW(lineEndWidth.underlying);
    }
}
