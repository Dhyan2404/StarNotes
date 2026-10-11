package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CRLValuesType;
import org.etsi.uri.x01903.v13.OCSPValuesType;
import org.etsi.uri.x01903.v13.OtherCertStatusValuesType;
import org.etsi.uri.x01903.v13.RevocationValuesType;

/* loaded from: classes13.dex */
public class RevocationValuesTypeImpl extends XmlComplexContentImpl implements RevocationValuesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CRLValues"), new QName(SignatureFacet.XADES_132_NS, "OCSPValues"), new QName(SignatureFacet.XADES_132_NS, "OtherValues"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public RevocationValuesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public CRLValuesType addNewCRLValues() {
        CRLValuesType cRLValuesType;
        synchronized (monitor()) {
            check_orphaned();
            cRLValuesType = (CRLValuesType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cRLValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public OCSPValuesType addNewOCSPValues() {
        OCSPValuesType oCSPValuesType;
        synchronized (monitor()) {
            check_orphaned();
            oCSPValuesType = (OCSPValuesType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return oCSPValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public OtherCertStatusValuesType addNewOtherValues() {
        OtherCertStatusValuesType otherCertStatusValuesType;
        synchronized (monitor()) {
            check_orphaned();
            otherCertStatusValuesType = (OtherCertStatusValuesType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return otherCertStatusValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public CRLValuesType getCRLValues() {
        CRLValuesType cRLValuesType;
        synchronized (monitor()) {
            check_orphaned();
            cRLValuesType = (CRLValuesType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cRLValuesType == null) {
                cRLValuesType = null;
            }
        }
        return cRLValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public OCSPValuesType getOCSPValues() {
        OCSPValuesType oCSPValuesType;
        synchronized (monitor()) {
            check_orphaned();
            oCSPValuesType = (OCSPValuesType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (oCSPValuesType == null) {
                oCSPValuesType = null;
            }
        }
        return oCSPValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public OtherCertStatusValuesType getOtherValues() {
        OtherCertStatusValuesType otherCertStatusValuesType;
        synchronized (monitor()) {
            check_orphaned();
            otherCertStatusValuesType = (OtherCertStatusValuesType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (otherCertStatusValuesType == null) {
                otherCertStatusValuesType = null;
            }
        }
        return otherCertStatusValuesType;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public boolean isSetCRLValues() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public boolean isSetOCSPValues() {
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

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public boolean isSetOtherValues() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public void setCRLValues(CRLValuesType cRLValuesType) {
        generatedSetterHelperImpl(cRLValuesType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public void setId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public void setOCSPValues(OCSPValuesType oCSPValuesType) {
        generatedSetterHelperImpl(oCSPValuesType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public void setOtherValues(OtherCertStatusValuesType otherCertStatusValuesType) {
        generatedSetterHelperImpl(otherCertStatusValuesType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public void unsetCRLValues() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public void unsetOCSPValues() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public void unsetOtherValues() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.RevocationValuesType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlID2.set(xmlID);
        }
    }
}
