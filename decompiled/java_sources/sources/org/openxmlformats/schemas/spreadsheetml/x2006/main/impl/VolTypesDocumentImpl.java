package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.VolTypesDocument;

/* loaded from: classes15.dex */
public class VolTypesDocumentImpl extends XmlComplexContentImpl implements VolTypesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "volTypes")};
    private static final long serialVersionUID = 1;

    public VolTypesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.VolTypesDocument
    public CTVolTypes addNewVolTypes() {
        CTVolTypes cTVolTypes;
        synchronized (monitor()) {
            check_orphaned();
            cTVolTypes = (CTVolTypes) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVolTypes;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.VolTypesDocument
    public CTVolTypes getVolTypes() {
        CTVolTypes cTVolTypes;
        synchronized (monitor()) {
            check_orphaned();
            cTVolTypes = (CTVolTypes) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTVolTypes == null) {
                cTVolTypes = null;
            }
        }
        return cTVolTypes;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.VolTypesDocument
    public void setVolTypes(CTVolTypes cTVolTypes) {
        generatedSetterHelperImpl(cTVolTypes, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
