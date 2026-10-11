package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.CryptoBinary;
import org.p120w3.x2000.x09.xmldsig.DSAKeyValueType;

/* loaded from: classes16.dex */
public class DSAKeyValueTypeImpl extends XmlComplexContentImpl implements DSAKeyValueType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "P"), new QName(SignatureFacet.XML_DIGSIG_NS, "Q"), new QName(SignatureFacet.XML_DIGSIG_NS, "G"), new QName(SignatureFacet.XML_DIGSIG_NS, "Y"), new QName(SignatureFacet.XML_DIGSIG_NS, "J"), new QName(SignatureFacet.XML_DIGSIG_NS, "Seed"), new QName(SignatureFacet.XML_DIGSIG_NS, "PgenCounter")};
    private static final long serialVersionUID = 1;

    public DSAKeyValueTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public byte[] getG() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public byte[] getJ() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public byte[] getP() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public byte[] getPgenCounter() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public byte[] getQ() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public byte[] getSeed() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public byte[] getY() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public boolean isSetG() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public boolean isSetJ() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public boolean isSetP() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public boolean isSetPgenCounter() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public boolean isSetQ() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public boolean isSetSeed() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void setG(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[2], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[2]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void setJ(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[4], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[4]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void setP(byte[] bArr) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void setPgenCounter(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[6], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[6]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void setQ(byte[] bArr) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void setSeed(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[5], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[5]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void setY(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[3], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[3]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void unsetG() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void unsetJ() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void unsetP() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void unsetPgenCounter() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void unsetQ() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void unsetSeed() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public CryptoBinary xgetG() {
        CryptoBinary cryptoBinary;
        synchronized (monitor()) {
            check_orphaned();
            cryptoBinary = (CryptoBinary) get_store().find_element_user(PROPERTY_QNAME[2], 0);
        }
        return cryptoBinary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public CryptoBinary xgetJ() {
        CryptoBinary cryptoBinary;
        synchronized (monitor()) {
            check_orphaned();
            cryptoBinary = (CryptoBinary) get_store().find_element_user(PROPERTY_QNAME[4], 0);
        }
        return cryptoBinary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public CryptoBinary xgetP() {
        CryptoBinary cryptoBinary;
        synchronized (monitor()) {
            check_orphaned();
            cryptoBinary = (CryptoBinary) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return cryptoBinary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public CryptoBinary xgetPgenCounter() {
        CryptoBinary cryptoBinary;
        synchronized (monitor()) {
            check_orphaned();
            cryptoBinary = (CryptoBinary) get_store().find_element_user(PROPERTY_QNAME[6], 0);
        }
        return cryptoBinary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public CryptoBinary xgetQ() {
        CryptoBinary cryptoBinary;
        synchronized (monitor()) {
            check_orphaned();
            cryptoBinary = (CryptoBinary) get_store().find_element_user(PROPERTY_QNAME[1], 0);
        }
        return cryptoBinary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public CryptoBinary xgetSeed() {
        CryptoBinary cryptoBinary;
        synchronized (monitor()) {
            check_orphaned();
            cryptoBinary = (CryptoBinary) get_store().find_element_user(PROPERTY_QNAME[5], 0);
        }
        return cryptoBinary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public CryptoBinary xgetY() {
        CryptoBinary cryptoBinary;
        synchronized (monitor()) {
            check_orphaned();
            cryptoBinary = (CryptoBinary) get_store().find_element_user(PROPERTY_QNAME[3], 0);
        }
        return cryptoBinary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void xsetG(CryptoBinary cryptoBinary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            CryptoBinary cryptoBinary2 = (CryptoBinary) typeStore.find_element_user(qNameArr[2], 0);
            if (cryptoBinary2 == null) {
                cryptoBinary2 = (CryptoBinary) get_store().add_element_user(qNameArr[2]);
            }
            cryptoBinary2.set(cryptoBinary);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void xsetJ(CryptoBinary cryptoBinary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            CryptoBinary cryptoBinary2 = (CryptoBinary) typeStore.find_element_user(qNameArr[4], 0);
            if (cryptoBinary2 == null) {
                cryptoBinary2 = (CryptoBinary) get_store().add_element_user(qNameArr[4]);
            }
            cryptoBinary2.set(cryptoBinary);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void xsetP(CryptoBinary cryptoBinary) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void xsetPgenCounter(CryptoBinary cryptoBinary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            CryptoBinary cryptoBinary2 = (CryptoBinary) typeStore.find_element_user(qNameArr[6], 0);
            if (cryptoBinary2 == null) {
                cryptoBinary2 = (CryptoBinary) get_store().add_element_user(qNameArr[6]);
            }
            cryptoBinary2.set(cryptoBinary);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void xsetQ(CryptoBinary cryptoBinary) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void xsetSeed(CryptoBinary cryptoBinary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            CryptoBinary cryptoBinary2 = (CryptoBinary) typeStore.find_element_user(qNameArr[5], 0);
            if (cryptoBinary2 == null) {
                cryptoBinary2 = (CryptoBinary) get_store().add_element_user(qNameArr[5]);
            }
            cryptoBinary2.set(cryptoBinary);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DSAKeyValueType
    public void xsetY(CryptoBinary cryptoBinary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            CryptoBinary cryptoBinary2 = (CryptoBinary) typeStore.find_element_user(qNameArr[3], 0);
            if (cryptoBinary2 == null) {
                cryptoBinary2 = (CryptoBinary) get_store().add_element_user(qNameArr[3]);
            }
            cryptoBinary2.set(cryptoBinary);
        }
    }
}
