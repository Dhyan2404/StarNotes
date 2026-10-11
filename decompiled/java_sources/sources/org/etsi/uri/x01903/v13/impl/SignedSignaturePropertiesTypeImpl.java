package org.etsi.uri.x01903.v13.impl;

import java.util.Calendar;
import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CertIDListType;
import org.etsi.uri.x01903.v13.SignaturePolicyIdentifierType;
import org.etsi.uri.x01903.v13.SignatureProductionPlaceType;
import org.etsi.uri.x01903.v13.SignedSignaturePropertiesType;
import org.etsi.uri.x01903.v13.SignerRoleType;

/* loaded from: classes13.dex */
public class SignedSignaturePropertiesTypeImpl extends XmlComplexContentImpl implements SignedSignaturePropertiesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SigningTime"), new QName(SignatureFacet.XADES_132_NS, "SigningCertificate"), new QName(SignatureFacet.XADES_132_NS, "SignaturePolicyIdentifier"), new QName(SignatureFacet.XADES_132_NS, "SignatureProductionPlace"), new QName(SignatureFacet.XADES_132_NS, "SignerRole"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public SignedSignaturePropertiesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public SignaturePolicyIdentifierType addNewSignaturePolicyIdentifier() {
        SignaturePolicyIdentifierType signaturePolicyIdentifierType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePolicyIdentifierType = (SignaturePolicyIdentifierType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return signaturePolicyIdentifierType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public SignatureProductionPlaceType addNewSignatureProductionPlace() {
        SignatureProductionPlaceType signatureProductionPlaceType;
        synchronized (monitor()) {
            check_orphaned();
            signatureProductionPlaceType = (SignatureProductionPlaceType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return signatureProductionPlaceType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public SignerRoleType addNewSignerRole() {
        SignerRoleType signerRoleType;
        synchronized (monitor()) {
            check_orphaned();
            signerRoleType = (SignerRoleType) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return signerRoleType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public CertIDListType addNewSigningCertificate() {
        CertIDListType certIDListType;
        synchronized (monitor()) {
            check_orphaned();
            certIDListType = (CertIDListType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return certIDListType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public SignaturePolicyIdentifierType getSignaturePolicyIdentifier() {
        SignaturePolicyIdentifierType signaturePolicyIdentifierType;
        synchronized (monitor()) {
            check_orphaned();
            signaturePolicyIdentifierType = (SignaturePolicyIdentifierType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (signaturePolicyIdentifierType == null) {
                signaturePolicyIdentifierType = null;
            }
        }
        return signaturePolicyIdentifierType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public SignatureProductionPlaceType getSignatureProductionPlace() {
        SignatureProductionPlaceType signatureProductionPlaceType;
        synchronized (monitor()) {
            check_orphaned();
            signatureProductionPlaceType = (SignatureProductionPlaceType) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (signatureProductionPlaceType == null) {
                signatureProductionPlaceType = null;
            }
        }
        return signatureProductionPlaceType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public SignerRoleType getSignerRole() {
        SignerRoleType signerRoleType;
        synchronized (monitor()) {
            check_orphaned();
            signerRoleType = (SignerRoleType) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (signerRoleType == null) {
                signerRoleType = null;
            }
        }
        return signerRoleType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public CertIDListType getSigningCertificate() {
        CertIDListType certIDListType;
        synchronized (monitor()) {
            check_orphaned();
            certIDListType = (CertIDListType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (certIDListType == null) {
                certIDListType = null;
            }
        }
        return certIDListType;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public Calendar getSigningTime() {
        Calendar calendarValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            calendarValue = simpleValue == null ? null : simpleValue.getCalendarValue();
        }
        return calendarValue;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public boolean isSetSignaturePolicyIdentifier() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public boolean isSetSignatureProductionPlace() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public boolean isSetSignerRole() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public boolean isSetSigningCertificate() {
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

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public boolean isSetSigningTime() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void setId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void setSignaturePolicyIdentifier(SignaturePolicyIdentifierType signaturePolicyIdentifierType) {
        generatedSetterHelperImpl(signaturePolicyIdentifierType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void setSignatureProductionPlace(SignatureProductionPlaceType signatureProductionPlaceType) {
        generatedSetterHelperImpl(signatureProductionPlaceType, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void setSignerRole(SignerRoleType signerRoleType) {
        generatedSetterHelperImpl(signerRoleType, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void setSigningCertificate(CertIDListType certIDListType) {
        generatedSetterHelperImpl(certIDListType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void setSigningTime(Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setCalendarValue(calendar);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void unsetSignaturePolicyIdentifier() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void unsetSignatureProductionPlace() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void unsetSignerRole() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void unsetSigningCertificate() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void unsetSigningTime() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlID;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public XmlDateTime xgetSigningTime() {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return xmlDateTime;
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignedSignaturePropertiesType
    public void xsetSigningTime(XmlDateTime xmlDateTime) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDateTime xmlDateTime2 = (XmlDateTime) typeStore.find_element_user(qNameArr[0], 0);
            if (xmlDateTime2 == null) {
                xmlDateTime2 = (XmlDateTime) get_store().add_element_user(qNameArr[0]);
            }
            xmlDateTime2.set(xmlDateTime);
        }
    }
}
