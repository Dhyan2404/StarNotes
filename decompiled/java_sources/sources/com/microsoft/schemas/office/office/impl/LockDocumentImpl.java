package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTLock;
import com.microsoft.schemas.office.office.LockDocument;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class LockDocumentImpl extends XmlComplexContentImpl implements LockDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", DevicePushAction.LOCK_DEVICE)};
    private static final long serialVersionUID = 1;

    public LockDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.LockDocument
    public CTLock addNewLock() {
        CTLock cTLock;
        synchronized (monitor()) {
            check_orphaned();
            cTLock = (CTLock) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTLock;
    }

    @Override // com.microsoft.schemas.office.office.LockDocument
    public CTLock getLock() {
        CTLock cTLock;
        synchronized (monitor()) {
            check_orphaned();
            cTLock = (CTLock) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTLock == null) {
                cTLock = null;
            }
        }
        return cTLock;
    }

    @Override // com.microsoft.schemas.office.office.LockDocument
    public void setLock(CTLock cTLock) {
        generatedSetterHelperImpl(cTLock, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
