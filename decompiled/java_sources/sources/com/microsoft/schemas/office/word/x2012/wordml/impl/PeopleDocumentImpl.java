package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.CTPeople;
import com.microsoft.schemas.office.word.x2012.wordml.PeopleDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class PeopleDocumentImpl extends XmlComplexContentImpl implements PeopleDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "people")};
    private static final long serialVersionUID = 1;

    public PeopleDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.PeopleDocument
    public CTPeople addNewPeople() {
        CTPeople cTPeople;
        synchronized (monitor()) {
            check_orphaned();
            cTPeople = (CTPeople) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPeople;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.PeopleDocument
    public CTPeople getPeople() {
        CTPeople cTPeople;
        synchronized (monitor()) {
            check_orphaned();
            cTPeople = (CTPeople) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPeople == null) {
                cTPeople = null;
            }
        }
        return cTPeople;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.PeopleDocument
    public void setPeople(CTPeople cTPeople) {
        generatedSetterHelperImpl(cTPeople, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
