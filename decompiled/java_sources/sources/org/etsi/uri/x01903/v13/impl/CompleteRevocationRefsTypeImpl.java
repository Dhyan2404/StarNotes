package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CRLRefsType;
import org.etsi.uri.x01903.v13.CompleteRevocationRefsType;
import org.etsi.uri.x01903.v13.OCSPRefsType;
import org.etsi.uri.x01903.v13.OtherCertStatusRefsType;

/* loaded from: classes13.dex */
public class CompleteRevocationRefsTypeImpl extends XmlComplexContentImpl implements CompleteRevocationRefsType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CRLRefs"), new QName(SignatureFacet.XADES_132_NS, "OCSPRefs"), new QName(SignatureFacet.XADES_132_NS, "OtherRefs"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public CompleteRevocationRefsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public CRLRefsType addNewCRLRefs() {
        CRLRefsType cRLRefsType;
        synchronized (monitor()) {
            check_orphaned();
            cRLRefsType = (CRLRefsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cRLRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public OCSPRefsType addNewOCSPRefs() {
        OCSPRefsType oCSPRefsType;
        synchronized (monitor()) {
            check_orphaned();
            oCSPRefsType = (OCSPRefsType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return oCSPRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public OtherCertStatusRefsType addNewOtherRefs() {
        OtherCertStatusRefsType otherCertStatusRefsType;
        synchronized (monitor()) {
            check_orphaned();
            otherCertStatusRefsType = (OtherCertStatusRefsType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return otherCertStatusRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public CRLRefsType getCRLRefs() {
        CRLRefsType cRLRefsType;
        synchronized (monitor()) {
            check_orphaned();
            cRLRefsType = (CRLRefsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cRLRefsType == null) {
                cRLRefsType = null;
            }
        }
        return cRLRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public OCSPRefsType getOCSPRefs() {
        OCSPRefsType oCSPRefsType;
        synchronized (monitor()) {
            check_orphaned();
            oCSPRefsType = (OCSPRefsType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (oCSPRefsType == null) {
                oCSPRefsType = null;
            }
        }
        return oCSPRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public OtherCertStatusRefsType getOtherRefs() {
        OtherCertStatusRefsType otherCertStatusRefsType;
        synchronized (monitor()) {
            check_orphaned();
            otherCertStatusRefsType = (OtherCertStatusRefsType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (otherCertStatusRefsType == null) {
                otherCertStatusRefsType = null;
            }
        }
        return otherCertStatusRefsType;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public boolean isSetCRLRefs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public boolean isSetOCSPRefs() {
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

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public boolean isSetOtherRefs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public void setCRLRefs(CRLRefsType cRLRefsType) {
        generatedSetterHelperImpl(cRLRefsType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
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

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public void setOCSPRefs(OCSPRefsType oCSPRefsType) {
        generatedSetterHelperImpl(oCSPRefsType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public void setOtherRefs(OtherCertStatusRefsType otherCertStatusRefsType) {
        generatedSetterHelperImpl(otherCertStatusRefsType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public void unsetCRLRefs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public void unsetOCSPRefs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public void unsetOtherRefs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.CompleteRevocationRefsType
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
