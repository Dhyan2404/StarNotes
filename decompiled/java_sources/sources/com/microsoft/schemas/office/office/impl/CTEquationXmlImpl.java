package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTEquationXml;
import com.microsoft.schemas.office.office.STAlternateMathContentType;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTEquationXmlImpl extends XmlComplexContentImpl implements CTEquationXml {
    private static final QName[] PROPERTY_QNAME = {new QName("", CouchFieldKey.KEY_CONTENT_TYPE)};
    private static final long serialVersionUID = 1;

    public CTEquationXmlImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.CTEquationXml
    public String getContentType() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTEquationXml
    public boolean isSetContentType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTEquationXml
    public void setContentType(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTEquationXml
    public void unsetContentType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTEquationXml
    public STAlternateMathContentType xgetContentType() {
        STAlternateMathContentType sTAlternateMathContentType;
        synchronized (monitor()) {
            check_orphaned();
            sTAlternateMathContentType = (STAlternateMathContentType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTAlternateMathContentType;
    }

    @Override // com.microsoft.schemas.office.office.CTEquationXml
    public void xsetContentType(STAlternateMathContentType sTAlternateMathContentType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAlternateMathContentType sTAlternateMathContentType2 = (STAlternateMathContentType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTAlternateMathContentType2 == null) {
                sTAlternateMathContentType2 = (STAlternateMathContentType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTAlternateMathContentType2.set(sTAlternateMathContentType);
        }
    }
}
