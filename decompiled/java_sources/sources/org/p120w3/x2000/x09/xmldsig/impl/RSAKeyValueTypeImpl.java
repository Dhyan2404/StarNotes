package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.CryptoBinary;
import org.p120w3.x2000.x09.xmldsig.RSAKeyValueType;

/* loaded from: classes16.dex */
public class RSAKeyValueTypeImpl extends XmlComplexContentImpl implements RSAKeyValueType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "Modulus"), new QName(SignatureFacet.XML_DIGSIG_NS, "Exponent")};
    private static final long serialVersionUID = 1;

    public RSAKeyValueTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueType
    public byte[] getExponent() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueType
    public byte[] getModulus() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueType
    public void setExponent(byte[] bArr) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueType
    public void setModulus(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueType
    public CryptoBinary xgetExponent() {
        CryptoBinary cryptoBinary;
        synchronized (monitor()) {
            check_orphaned();
            cryptoBinary = (CryptoBinary) get_store().find_element_user(PROPERTY_QNAME[1], 0);
        }
        return cryptoBinary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueType
    public CryptoBinary xgetModulus() {
        CryptoBinary cryptoBinary;
        synchronized (monitor()) {
            check_orphaned();
            cryptoBinary = (CryptoBinary) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return cryptoBinary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueType
    public void xsetExponent(CryptoBinary cryptoBinary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            CryptoBinary cryptoBinary2 = (CryptoBinary) typeStore.find_element_user(qNameArr[1], 0);
            if (cryptoBinary2 == null) {
                cryptoBinary2 = (CryptoBinary) get_store().add_element_user(qNameArr[1]);
            }
            cryptoBinary2.set(cryptoBinary);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.RSAKeyValueType
    public void xsetModulus(CryptoBinary cryptoBinary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            CryptoBinary cryptoBinary2 = (CryptoBinary) typeStore.find_element_user(qNameArr[0], 0);
            if (cryptoBinary2 == null) {
                cryptoBinary2 = (CryptoBinary) get_store().add_element_user(qNameArr[0]);
            }
            cryptoBinary2.set(cryptoBinary);
        }
    }
}
