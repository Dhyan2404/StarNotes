package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;

/* loaded from: classes13.dex */
public class XDDFColorSchemeBased extends XDDFColor {
    private CTSchemeColor color;

    public XDDFColorSchemeBased(SchemeColor schemeColor) {
        this(CTSchemeColor.Factory.newInstance(), CTColor.Factory.newInstance());
        setValue(schemeColor);
    }

    public SchemeColor getValue() {
        return SchemeColor.valueOf(this.color.getVal());
    }

    @Override // org.apache.poi.xddf.usermodel.XDDFColor
    @Internal
    public XmlObject getXmlObject() {
        return this.color;
    }

    public void setValue(SchemeColor schemeColor) {
        this.color.setVal(schemeColor.underlying);
    }

    @Internal
    public XDDFColorSchemeBased(CTSchemeColor cTSchemeColor) {
        this(cTSchemeColor, null);
    }

    @Internal
    public XDDFColorSchemeBased(CTSchemeColor cTSchemeColor, CTColor cTColor) {
        super(cTColor);
        this.color = cTSchemeColor;
    }
}
