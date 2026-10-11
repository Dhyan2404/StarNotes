package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.IntegerListType;
import org.etsi.uri.x01903.v13.NoticeReferenceType;

/* loaded from: classes13.dex */
public class NoticeReferenceTypeImpl extends XmlComplexContentImpl implements NoticeReferenceType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "Organization"), new QName(SignatureFacet.XADES_132_NS, "NoticeNumbers")};
    private static final long serialVersionUID = 1;

    public NoticeReferenceTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.NoticeReferenceType
    public IntegerListType addNewNoticeNumbers() {
        IntegerListType integerListType;
        synchronized (monitor()) {
            check_orphaned();
            integerListType = (IntegerListType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return integerListType;
    }

    @Override // org.etsi.uri.x01903.v13.NoticeReferenceType
    public IntegerListType getNoticeNumbers() {
        IntegerListType integerListType;
        synchronized (monitor()) {
            check_orphaned();
            integerListType = (IntegerListType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (integerListType == null) {
                integerListType = null;
            }
        }
        return integerListType;
    }

    @Override // org.etsi.uri.x01903.v13.NoticeReferenceType
    public String getOrganization() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.NoticeReferenceType
    public void setNoticeNumbers(IntegerListType integerListType) {
        generatedSetterHelperImpl(integerListType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.NoticeReferenceType
    public void setOrganization(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.NoticeReferenceType
    public XmlString xgetOrganization() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return xmlString;
    }

    @Override // org.etsi.uri.x01903.v13.NoticeReferenceType
    public void xsetOrganization(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_element_user(qNameArr[0], 0);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_element_user(qNameArr[0]);
            }
            xmlString2.set(xmlString);
        }
    }
}
