package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUsers;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.UsersDocument;

/* loaded from: classes15.dex */
public class UsersDocumentImpl extends XmlComplexContentImpl implements UsersDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "users")};
    private static final long serialVersionUID = 1;

    public UsersDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.UsersDocument
    public CTUsers addNewUsers() {
        CTUsers cTUsers;
        synchronized (monitor()) {
            check_orphaned();
            cTUsers = (CTUsers) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTUsers;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.UsersDocument
    public CTUsers getUsers() {
        CTUsers cTUsers;
        synchronized (monitor()) {
            check_orphaned();
            cTUsers = (CTUsers) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTUsers == null) {
                cTUsers = null;
            }
        }
        return cTUsers;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.UsersDocument
    public void setUsers(CTUsers cTUsers) {
        generatedSetterHelperImpl(cTUsers, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
