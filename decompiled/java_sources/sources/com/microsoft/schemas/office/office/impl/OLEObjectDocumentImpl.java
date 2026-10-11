package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTOLEObject;
import com.microsoft.schemas.office.office.OLEObjectDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class OLEObjectDocumentImpl extends XmlComplexContentImpl implements OLEObjectDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "OLEObject")};
    private static final long serialVersionUID = 1;

    public OLEObjectDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.OLEObjectDocument
    public CTOLEObject addNewOLEObject() {
        CTOLEObject cTOLEObject;
        synchronized (monitor()) {
            check_orphaned();
            cTOLEObject = (CTOLEObject) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOLEObject;
    }

    @Override // com.microsoft.schemas.office.office.OLEObjectDocument
    public CTOLEObject getOLEObject() {
        CTOLEObject cTOLEObject;
        synchronized (monitor()) {
            check_orphaned();
            cTOLEObject = (CTOLEObject) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOLEObject == null) {
                cTOLEObject = null;
            }
        }
        return cTOLEObject;
    }

    @Override // com.microsoft.schemas.office.office.OLEObjectDocument
    public void setOLEObject(CTOLEObject cTOLEObject) {
        generatedSetterHelperImpl(cTOLEObject, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
