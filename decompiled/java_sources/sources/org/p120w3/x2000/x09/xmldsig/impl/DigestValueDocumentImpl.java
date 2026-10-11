package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.DigestValueDocument;
import org.p120w3.x2000.x09.xmldsig.DigestValueType;

/* loaded from: classes16.dex */
public class DigestValueDocumentImpl extends XmlComplexContentImpl implements DigestValueDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "DigestValue")};
    private static final long serialVersionUID = 1;

    public DigestValueDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DigestValueDocument
    public byte[] getDigestValue() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DigestValueDocument
    public void setDigestValue(byte[] bArr) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.DigestValueDocument
    public DigestValueType xgetDigestValue() {
        DigestValueType digestValueType;
        synchronized (monitor()) {
            check_orphaned();
            digestValueType = (DigestValueType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return digestValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.DigestValueDocument
    public void xsetDigestValue(DigestValueType digestValueType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            DigestValueType digestValueType2 = (DigestValueType) typeStore.find_element_user(qNameArr[0], 0);
            if (digestValueType2 == null) {
                digestValueType2 = (DigestValueType) get_store().add_element_user(qNameArr[0]);
            }
            digestValueType2.set(digestValueType);
        }
    }
}
