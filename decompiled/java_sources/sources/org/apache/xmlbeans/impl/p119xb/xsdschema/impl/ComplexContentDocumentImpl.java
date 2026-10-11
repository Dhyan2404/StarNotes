package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ComplexContentDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ComplexRestrictionType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class ComplexContentDocumentImpl extends XmlComplexContentImpl implements ComplexContentDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "complexContent")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class ComplexContentImpl extends AnnotatedImpl implements ComplexContentDocument.ComplexContent {
        private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "restriction"), new QName("http://www.w3.org/2001/XMLSchema", "extension"), new QName("", "mixed")};
        private static final long serialVersionUID = 1;

        public ComplexContentImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public ExtensionType addNewExtension() {
            ExtensionType extensionType;
            synchronized (monitor()) {
                check_orphaned();
                extensionType = (ExtensionType) get_store().add_element_user(PROPERTY_QNAME[1]);
            }
            return extensionType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public ComplexRestrictionType addNewRestriction() {
            ComplexRestrictionType complexRestrictionType;
            synchronized (monitor()) {
                check_orphaned();
                complexRestrictionType = (ComplexRestrictionType) get_store().add_element_user(PROPERTY_QNAME[0]);
            }
            return complexRestrictionType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public ExtensionType getExtension() {
            ExtensionType extensionType;
            synchronized (monitor()) {
                check_orphaned();
                extensionType = (ExtensionType) get_store().find_element_user(PROPERTY_QNAME[1], 0);
                if (extensionType == null) {
                    extensionType = null;
                }
            }
            return extensionType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public boolean getMixed() {
            boolean booleanValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
                booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
            }
            return booleanValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public ComplexRestrictionType getRestriction() {
            ComplexRestrictionType complexRestrictionType;
            synchronized (monitor()) {
                check_orphaned();
                complexRestrictionType = (ComplexRestrictionType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
                if (complexRestrictionType == null) {
                    complexRestrictionType = null;
                }
            }
            return complexRestrictionType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public boolean isSetExtension() {
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

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public boolean isSetMixed() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public boolean isSetRestriction() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public void setExtension(ExtensionType extensionType) {
            generatedSetterHelperImpl(extensionType, PROPERTY_QNAME[1], 0, (short) 1);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public void setMixed(boolean z) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
                }
                simpleValue.setBooleanValue(z);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public void setRestriction(ComplexRestrictionType complexRestrictionType) {
            generatedSetterHelperImpl(complexRestrictionType, PROPERTY_QNAME[0], 0, (short) 1);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public void unsetExtension() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[1], 0);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public void unsetMixed() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[2]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public void unsetRestriction() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[0], 0);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public XmlBoolean xgetMixed() {
            XmlBoolean xmlBoolean;
            synchronized (monitor()) {
                check_orphaned();
                xmlBoolean = (XmlBoolean) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            }
            return xmlBoolean;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ComplexContentDocument.ComplexContent
        public void xsetMixed(XmlBoolean xmlBoolean) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[2]);
                if (xmlBoolean2 == null) {
                    xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[2]);
                }
                xmlBoolean2.set(xmlBoolean);
            }
        }
    }

    public ComplexContentDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ComplexContentDocument
    public ComplexContentDocument.ComplexContent addNewComplexContent() {
        ComplexContentDocument.ComplexContent complexContent;
        synchronized (monitor()) {
            check_orphaned();
            complexContent = (ComplexContentDocument.ComplexContent) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return complexContent;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ComplexContentDocument
    public ComplexContentDocument.ComplexContent getComplexContent() {
        ComplexContentDocument.ComplexContent complexContent;
        synchronized (monitor()) {
            check_orphaned();
            complexContent = (ComplexContentDocument.ComplexContent) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (complexContent == null) {
                complexContent = null;
            }
        }
        return complexContent;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ComplexContentDocument
    public void setComplexContent(ComplexContentDocument.ComplexContent complexContent) {
        generatedSetterHelperImpl(complexContent, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
