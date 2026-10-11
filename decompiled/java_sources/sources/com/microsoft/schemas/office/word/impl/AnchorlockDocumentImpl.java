package com.microsoft.schemas.office.word.impl;

import com.microsoft.schemas.office.word.AnchorlockDocument;
import com.microsoft.schemas.office.word.CTAnchorLock;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class AnchorlockDocumentImpl extends XmlComplexContentImpl implements AnchorlockDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:word", "anchorlock")};
    private static final long serialVersionUID = 1;

    public AnchorlockDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.AnchorlockDocument
    public CTAnchorLock addNewAnchorlock() {
        CTAnchorLock cTAnchorLock;
        synchronized (monitor()) {
            check_orphaned();
            cTAnchorLock = (CTAnchorLock) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAnchorLock;
    }

    @Override // com.microsoft.schemas.office.word.AnchorlockDocument
    public CTAnchorLock getAnchorlock() {
        CTAnchorLock cTAnchorLock;
        synchronized (monitor()) {
            check_orphaned();
            cTAnchorLock = (CTAnchorLock) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTAnchorLock == null) {
                cTAnchorLock = null;
            }
        }
        return cTAnchorLock;
    }

    @Override // com.microsoft.schemas.office.word.AnchorlockDocument
    public void setAnchorlock(CTAnchorLock cTAnchorLock) {
        generatedSetterHelperImpl(cTAnchorLock, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
