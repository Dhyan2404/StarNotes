package com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.impl;

import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.CTPersonList;
import com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.PersonListDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class PersonListDocumentImpl extends XmlComplexContentImpl implements PersonListDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/spreadsheetml/2018/threadedcomments", "personList")};
    private static final long serialVersionUID = 1;

    public PersonListDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.PersonListDocument
    public CTPersonList addNewPersonList() {
        CTPersonList cTPersonList;
        synchronized (monitor()) {
            check_orphaned();
            cTPersonList = (CTPersonList) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPersonList;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.PersonListDocument
    public CTPersonList getPersonList() {
        CTPersonList cTPersonList;
        synchronized (monitor()) {
            check_orphaned();
            cTPersonList = (CTPersonList) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPersonList == null) {
                cTPersonList = null;
            }
        }
        return cTPersonList;
    }

    @Override // com.microsoft.schemas.office.spreadsheetml.x2018.threadedcomments.PersonListDocument
    public void setPersonList(CTPersonList cTPersonList) {
        generatedSetterHelperImpl(cTPersonList, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
