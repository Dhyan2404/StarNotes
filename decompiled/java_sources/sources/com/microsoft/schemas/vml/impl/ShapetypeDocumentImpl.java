package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTShapetype;
import com.microsoft.schemas.vml.ShapetypeDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ShapetypeDocumentImpl extends XmlComplexContentImpl implements ShapetypeDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "shapetype")};
    private static final long serialVersionUID = 1;

    public ShapetypeDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.ShapetypeDocument
    public CTShapetype addNewShapetype() {
        CTShapetype cTShapetype;
        synchronized (monitor()) {
            check_orphaned();
            cTShapetype = (CTShapetype) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTShapetype;
    }

    @Override // com.microsoft.schemas.vml.ShapetypeDocument
    public CTShapetype getShapetype() {
        CTShapetype cTShapetype;
        synchronized (monitor()) {
            check_orphaned();
            cTShapetype = (CTShapetype) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTShapetype == null) {
                cTShapetype = null;
            }
        }
        return cTShapetype;
    }

    @Override // com.microsoft.schemas.vml.ShapetypeDocument
    public void setShapetype(CTShapetype cTShapetype) {
        generatedSetterHelperImpl(cTShapetype, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
