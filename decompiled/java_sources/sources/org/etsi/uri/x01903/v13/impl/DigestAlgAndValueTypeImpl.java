package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.DigestAlgAndValueType;
import org.p120w3.x2000.x09.xmldsig.DigestMethodType;
import org.p120w3.x2000.x09.xmldsig.DigestValueType;

/* loaded from: classes13.dex */
public class DigestAlgAndValueTypeImpl extends XmlComplexContentImpl implements DigestAlgAndValueType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "DigestMethod"), new QName(SignatureFacet.XML_DIGSIG_NS, "DigestValue")};
    private static final long serialVersionUID = 1;

    public DigestAlgAndValueTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.DigestAlgAndValueType
    public DigestMethodType addNewDigestMethod() {
        DigestMethodType digestMethodType;
        synchronized (monitor()) {
            check_orphaned();
            digestMethodType = (DigestMethodType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return digestMethodType;
    }

    @Override // org.etsi.uri.x01903.v13.DigestAlgAndValueType
    public DigestMethodType getDigestMethod() {
        DigestMethodType digestMethodType;
        synchronized (monitor()) {
            check_orphaned();
            digestMethodType = (DigestMethodType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (digestMethodType == null) {
                digestMethodType = null;
            }
        }
        return digestMethodType;
    }

    @Override // org.etsi.uri.x01903.v13.DigestAlgAndValueType
    public byte[] getDigestValue() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.etsi.uri.x01903.v13.DigestAlgAndValueType
    public void setDigestMethod(DigestMethodType digestMethodType) {
        generatedSetterHelperImpl(digestMethodType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.DigestAlgAndValueType
    public void setDigestValue(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[1], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[1]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.etsi.uri.x01903.v13.DigestAlgAndValueType
    public DigestValueType xgetDigestValue() {
        DigestValueType digestValueType;
        synchronized (monitor()) {
            check_orphaned();
            digestValueType = (DigestValueType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
        }
        return digestValueType;
    }

    @Override // org.etsi.uri.x01903.v13.DigestAlgAndValueType
    public void xsetDigestValue(DigestValueType digestValueType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            DigestValueType digestValueType2 = (DigestValueType) typeStore.find_element_user(qNameArr[1], 0);
            if (digestValueType2 == null) {
                digestValueType2 = (DigestValueType) get_store().add_element_user(qNameArr[1]);
            }
            digestValueType2.set(digestValueType);
        }
    }
}
