package com.microsoft.schemas.office.drawing.x2008.diagram.impl;

import com.microsoft.schemas.office.drawing.x2008.diagram.CTDrawing;
import com.microsoft.schemas.office.drawing.x2008.diagram.CTGroupShape;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTDrawingImpl extends XmlComplexContentImpl implements CTDrawing {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/drawing/2008/diagram", "spTree")};
    private static final long serialVersionUID = 1;

    public CTDrawingImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDrawing
    public CTGroupShape addNewSpTree() {
        CTGroupShape cTGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShape = (CTGroupShape) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGroupShape;
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDrawing
    public CTGroupShape getSpTree() {
        CTGroupShape cTGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShape = (CTGroupShape) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGroupShape == null) {
                cTGroupShape = null;
            }
        }
        return cTGroupShape;
    }

    @Override // com.microsoft.schemas.office.drawing.x2008.diagram.CTDrawing
    public void setSpTree(CTGroupShape cTGroupShape) {
        generatedSetterHelperImpl(cTGroupShape, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
