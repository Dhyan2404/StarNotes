package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTCallout;
import com.microsoft.schemas.office.office.CalloutDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CalloutDocumentImpl extends XmlComplexContentImpl implements CalloutDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "callout")};
    private static final long serialVersionUID = 1;

    public CalloutDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.CalloutDocument
    public CTCallout addNewCallout() {
        CTCallout cTCallout;
        synchronized (monitor()) {
            check_orphaned();
            cTCallout = (CTCallout) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCallout;
    }

    @Override // com.microsoft.schemas.office.office.CalloutDocument
    public CTCallout getCallout() {
        CTCallout cTCallout;
        synchronized (monitor()) {
            check_orphaned();
            cTCallout = (CTCallout) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTCallout == null) {
                cTCallout = null;
            }
        }
        return cTCallout;
    }

    @Override // com.microsoft.schemas.office.office.CalloutDocument
    public void setCallout(CTCallout cTCallout) {
        generatedSetterHelperImpl(cTCallout, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
