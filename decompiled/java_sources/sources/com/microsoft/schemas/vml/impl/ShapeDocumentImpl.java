package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTShape;
import com.microsoft.schemas.vml.ShapeDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ShapeDocumentImpl extends XmlComplexContentImpl implements ShapeDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "shape")};
    private static final long serialVersionUID = 1;

    public ShapeDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.ShapeDocument
    public CTShape addNewShape() {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTShape;
    }

    @Override // com.microsoft.schemas.vml.ShapeDocument
    public CTShape getShape() {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTShape == null) {
                cTShape = null;
            }
        }
        return cTShape;
    }

    @Override // com.microsoft.schemas.vml.ShapeDocument
    public void setShape(CTShape cTShape) {
        generatedSetterHelperImpl(cTShape, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
