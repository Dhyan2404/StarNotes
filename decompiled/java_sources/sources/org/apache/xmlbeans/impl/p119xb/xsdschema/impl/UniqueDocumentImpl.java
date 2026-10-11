package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import androidx.room.EntityUpsertionAdapterKt;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Keybase;
import org.apache.xmlbeans.impl.p119xb.xsdschema.UniqueDocument;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class UniqueDocumentImpl extends XmlComplexContentImpl implements UniqueDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", EntityUpsertionAdapterKt.f10049b)};
    private static final long serialVersionUID = 1;

    public UniqueDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.UniqueDocument
    public Keybase addNewUnique() {
        Keybase keybase;
        synchronized (monitor()) {
            check_orphaned();
            keybase = (Keybase) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return keybase;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.UniqueDocument
    public Keybase getUnique() {
        Keybase keybase;
        synchronized (monitor()) {
            check_orphaned();
            keybase = (Keybase) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (keybase == null) {
                keybase = null;
            }
        }
        return keybase;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.UniqueDocument
    public void setUnique(Keybase keybase) {
        generatedSetterHelperImpl(keybase, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
