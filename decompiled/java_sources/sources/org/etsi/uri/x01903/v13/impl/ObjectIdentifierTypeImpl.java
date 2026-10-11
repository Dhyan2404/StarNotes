package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.DocumentationReferencesType;
import org.etsi.uri.x01903.v13.IdentifierType;
import org.etsi.uri.x01903.v13.ObjectIdentifierType;

/* loaded from: classes13.dex */
public class ObjectIdentifierTypeImpl extends XmlComplexContentImpl implements ObjectIdentifierType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "Identifier"), new QName(SignatureFacet.XADES_132_NS, "Description"), new QName(SignatureFacet.XADES_132_NS, "DocumentationReferences")};
    private static final long serialVersionUID = 1;

    public ObjectIdentifierTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public DocumentationReferencesType addNewDocumentationReferences() {
        DocumentationReferencesType documentationReferencesType;
        synchronized (monitor()) {
            check_orphaned();
            documentationReferencesType = (DocumentationReferencesType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return documentationReferencesType;
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public IdentifierType addNewIdentifier() {
        IdentifierType identifierType;
        synchronized (monitor()) {
            check_orphaned();
            identifierType = (IdentifierType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return identifierType;
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public String getDescription() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public DocumentationReferencesType getDocumentationReferences() {
        DocumentationReferencesType documentationReferencesType;
        synchronized (monitor()) {
            check_orphaned();
            documentationReferencesType = (DocumentationReferencesType) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (documentationReferencesType == null) {
                documentationReferencesType = null;
            }
        }
        return documentationReferencesType;
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public IdentifierType getIdentifier() {
        IdentifierType identifierType;
        synchronized (monitor()) {
            check_orphaned();
            identifierType = (IdentifierType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (identifierType == null) {
                identifierType = null;
            }
        }
        return identifierType;
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public boolean isSetDescription() {
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

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public boolean isSetDocumentationReferences() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public void setDescription(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[1], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public void setDocumentationReferences(DocumentationReferencesType documentationReferencesType) {
        generatedSetterHelperImpl(documentationReferencesType, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public void setIdentifier(IdentifierType identifierType) {
        generatedSetterHelperImpl(identifierType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public void unsetDescription() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public void unsetDocumentationReferences() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public XmlString xgetDescription() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[1], 0);
        }
        return xmlString;
    }

    @Override // org.etsi.uri.x01903.v13.ObjectIdentifierType
    public void xsetDescription(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_element_user(qNameArr[1], 0);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_element_user(qNameArr[1]);
            }
            xmlString2.set(xmlString);
        }
    }
}
