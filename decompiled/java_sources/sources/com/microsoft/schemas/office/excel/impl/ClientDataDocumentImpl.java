package com.microsoft.schemas.office.excel.impl;

import com.microsoft.schemas.office.excel.CTClientData;
import com.microsoft.schemas.office.excel.ClientDataDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ClientDataDocumentImpl extends XmlComplexContentImpl implements ClientDataDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:excel", "ClientData")};
    private static final long serialVersionUID = 1;

    public ClientDataDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.excel.ClientDataDocument
    public CTClientData addNewClientData() {
        CTClientData cTClientData;
        synchronized (monitor()) {
            check_orphaned();
            cTClientData = (CTClientData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTClientData;
    }

    @Override // com.microsoft.schemas.office.excel.ClientDataDocument
    public CTClientData getClientData() {
        CTClientData cTClientData;
        synchronized (monitor()) {
            check_orphaned();
            cTClientData = (CTClientData) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTClientData == null) {
                cTClientData = null;
            }
        }
        return cTClientData;
    }

    @Override // com.microsoft.schemas.office.excel.ClientDataDocument
    public void setClientData(CTClientData cTClientData) {
        generatedSetterHelperImpl(cTClientData, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
