package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTHandles;
import com.microsoft.schemas.vml.HandlesDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class HandlesDocumentImpl extends XmlComplexContentImpl implements HandlesDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "handles")};
    private static final long serialVersionUID = 1;

    public HandlesDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.HandlesDocument
    public CTHandles addNewHandles() {
        CTHandles cTHandles;
        synchronized (monitor()) {
            check_orphaned();
            cTHandles = (CTHandles) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTHandles;
    }

    @Override // com.microsoft.schemas.vml.HandlesDocument
    public CTHandles getHandles() {
        CTHandles cTHandles;
        synchronized (monitor()) {
            check_orphaned();
            cTHandles = (CTHandles) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTHandles == null) {
                cTHandles = null;
            }
        }
        return cTHandles;
    }

    @Override // com.microsoft.schemas.vml.HandlesDocument
    public void setHandles(CTHandles cTHandles) {
        generatedSetterHelperImpl(cTHandles, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
