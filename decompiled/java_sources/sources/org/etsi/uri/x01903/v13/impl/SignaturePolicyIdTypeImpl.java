package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.DigestAlgAndValueType;
import org.etsi.uri.x01903.v13.ObjectIdentifierType;
import org.etsi.uri.x01903.v13.SigPolicyQualifiersListType;
import org.etsi.uri.x01903.v13.SignaturePolicyIdType;
import org.p120w3.x2000.x09.xmldsig.TransformsType;

/* loaded from: classes13.dex */
public class SignaturePolicyIdTypeImpl extends XmlComplexContentImpl implements SignaturePolicyIdType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "SigPolicyId"), new QName(SignatureFacet.XML_DIGSIG_NS, "Transforms"), new QName(SignatureFacet.XADES_132_NS, "SigPolicyHash"), new QName(SignatureFacet.XADES_132_NS, "SigPolicyQualifiers")};
    private static final long serialVersionUID = 1;

    public SignaturePolicyIdTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public DigestAlgAndValueType addNewSigPolicyHash() {
        DigestAlgAndValueType digestAlgAndValueType;
        synchronized (monitor()) {
            check_orphaned();
            digestAlgAndValueType = (DigestAlgAndValueType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return digestAlgAndValueType;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public ObjectIdentifierType addNewSigPolicyId() {
        ObjectIdentifierType objectIdentifierType;
        synchronized (monitor()) {
            check_orphaned();
            objectIdentifierType = (ObjectIdentifierType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return objectIdentifierType;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public SigPolicyQualifiersListType addNewSigPolicyQualifiers() {
        SigPolicyQualifiersListType sigPolicyQualifiersListType;
        synchronized (monitor()) {
            check_orphaned();
            sigPolicyQualifiersListType = (SigPolicyQualifiersListType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return sigPolicyQualifiersListType;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public TransformsType addNewTransforms() {
        TransformsType transformsType;
        synchronized (monitor()) {
            check_orphaned();
            transformsType = (TransformsType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return transformsType;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public DigestAlgAndValueType getSigPolicyHash() {
        DigestAlgAndValueType digestAlgAndValueType;
        synchronized (monitor()) {
            check_orphaned();
            digestAlgAndValueType = (DigestAlgAndValueType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (digestAlgAndValueType == null) {
                digestAlgAndValueType = null;
            }
        }
        return digestAlgAndValueType;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public ObjectIdentifierType getSigPolicyId() {
        ObjectIdentifierType objectIdentifierType;
        synchronized (monitor()) {
            check_orphaned();
            objectIdentifierType = (ObjectIdentifierType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (objectIdentifierType == null) {
                objectIdentifierType = null;
            }
        }
        return objectIdentifierType;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public SigPolicyQualifiersListType getSigPolicyQualifiers() {
        SigPolicyQualifiersListType sigPolicyQualifiersListType;
        synchronized (monitor()) {
            check_orphaned();
            sigPolicyQualifiersListType = (SigPolicyQualifiersListType) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (sigPolicyQualifiersListType == null) {
                sigPolicyQualifiersListType = null;
            }
        }
        return sigPolicyQualifiersListType;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public TransformsType getTransforms() {
        TransformsType transformsType;
        synchronized (monitor()) {
            check_orphaned();
            transformsType = (TransformsType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (transformsType == null) {
                transformsType = null;
            }
        }
        return transformsType;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public boolean isSetSigPolicyQualifiers() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public boolean isSetTransforms() {
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

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public void setSigPolicyHash(DigestAlgAndValueType digestAlgAndValueType) {
        generatedSetterHelperImpl(digestAlgAndValueType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public void setSigPolicyId(ObjectIdentifierType objectIdentifierType) {
        generatedSetterHelperImpl(objectIdentifierType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public void setSigPolicyQualifiers(SigPolicyQualifiersListType sigPolicyQualifiersListType) {
        generatedSetterHelperImpl(sigPolicyQualifiersListType, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public void setTransforms(TransformsType transformsType) {
        generatedSetterHelperImpl(transformsType, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public void unsetSigPolicyQualifiers() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.SignaturePolicyIdType
    public void unsetTransforms() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
