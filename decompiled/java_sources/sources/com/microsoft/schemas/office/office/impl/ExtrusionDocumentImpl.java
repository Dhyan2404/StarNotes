package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTExtrusion;
import com.microsoft.schemas.office.office.ExtrusionDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ExtrusionDocumentImpl extends XmlComplexContentImpl implements ExtrusionDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "extrusion")};
    private static final long serialVersionUID = 1;

    public ExtrusionDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.ExtrusionDocument
    public CTExtrusion addNewExtrusion() {
        CTExtrusion cTExtrusion;
        synchronized (monitor()) {
            check_orphaned();
            cTExtrusion = (CTExtrusion) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTExtrusion;
    }

    @Override // com.microsoft.schemas.office.office.ExtrusionDocument
    public CTExtrusion getExtrusion() {
        CTExtrusion cTExtrusion;
        synchronized (monitor()) {
            check_orphaned();
            cTExtrusion = (CTExtrusion) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTExtrusion == null) {
                cTExtrusion = null;
            }
        }
        return cTExtrusion;
    }

    @Override // com.microsoft.schemas.office.office.ExtrusionDocument
    public void setExtrusion(CTExtrusion cTExtrusion) {
        generatedSetterHelperImpl(cTExtrusion, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
