package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTShapeDefaults;
import com.microsoft.schemas.office.office.ShapedefaultsDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ShapedefaultsDocumentImpl extends XmlComplexContentImpl implements ShapedefaultsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "shapedefaults")};
    private static final long serialVersionUID = 1;

    public ShapedefaultsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.ShapedefaultsDocument
    public CTShapeDefaults addNewShapedefaults() {
        CTShapeDefaults cTShapeDefaults;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeDefaults = (CTShapeDefaults) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTShapeDefaults;
    }

    @Override // com.microsoft.schemas.office.office.ShapedefaultsDocument
    public CTShapeDefaults getShapedefaults() {
        CTShapeDefaults cTShapeDefaults;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeDefaults = (CTShapeDefaults) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTShapeDefaults == null) {
                cTShapeDefaults = null;
            }
        }
        return cTShapeDefaults;
    }

    @Override // com.microsoft.schemas.office.office.ShapedefaultsDocument
    public void setShapedefaults(CTShapeDefaults cTShapeDefaults) {
        generatedSetterHelperImpl(cTShapeDefaults, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
