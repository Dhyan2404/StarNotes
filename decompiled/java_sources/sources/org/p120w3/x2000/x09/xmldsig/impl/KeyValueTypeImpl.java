package org.p120w3.x2000.x09.xmldsig.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.DSAKeyValueType;
import org.p120w3.x2000.x09.xmldsig.KeyValueType;
import org.p120w3.x2000.x09.xmldsig.RSAKeyValueType;

/* loaded from: classes16.dex */
public class KeyValueTypeImpl extends XmlComplexContentImpl implements KeyValueType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "DSAKeyValue"), new QName(SignatureFacet.XML_DIGSIG_NS, "RSAKeyValue")};
    private static final long serialVersionUID = 1;

    public KeyValueTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueType
    public DSAKeyValueType addNewDSAKeyValue() {
        DSAKeyValueType dSAKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            dSAKeyValueType = (DSAKeyValueType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return dSAKeyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueType
    public RSAKeyValueType addNewRSAKeyValue() {
        RSAKeyValueType rSAKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            rSAKeyValueType = (RSAKeyValueType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return rSAKeyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueType
    public DSAKeyValueType getDSAKeyValue() {
        DSAKeyValueType dSAKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            dSAKeyValueType = (DSAKeyValueType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (dSAKeyValueType == null) {
                dSAKeyValueType = null;
            }
        }
        return dSAKeyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueType
    public RSAKeyValueType getRSAKeyValue() {
        RSAKeyValueType rSAKeyValueType;
        synchronized (monitor()) {
            check_orphaned();
            rSAKeyValueType = (RSAKeyValueType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (rSAKeyValueType == null) {
                rSAKeyValueType = null;
            }
        }
        return rSAKeyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueType
    public boolean isSetDSAKeyValue() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueType
    public boolean isSetRSAKeyValue() {
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

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueType
    public void setDSAKeyValue(DSAKeyValueType dSAKeyValueType) {
        generatedSetterHelperImpl(dSAKeyValueType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueType
    public void setRSAKeyValue(RSAKeyValueType rSAKeyValueType) {
        generatedSetterHelperImpl(rSAKeyValueType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueType
    public void unsetDSAKeyValue() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyValueType
    public void unsetRSAKeyValue() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
