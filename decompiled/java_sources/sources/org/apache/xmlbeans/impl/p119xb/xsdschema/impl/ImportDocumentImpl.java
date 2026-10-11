package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ImportDocument;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class ImportDocumentImpl extends XmlComplexContentImpl implements ImportDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", Constants.ELEMNAME_IMPORT_STRING)};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class ImportImpl extends AnnotatedImpl implements ImportDocument.Import {
        private static final QName[] PROPERTY_QNAME = {new QName("", Constants.ATTRNAME_NAMESPACE), new QName("", "schemaLocation")};
        private static final long serialVersionUID = 1;

        public ImportImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public String getNamespace() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public String getSchemaLocation() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public boolean isSetNamespace() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public boolean isSetSchemaLocation() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = true;
                if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                    z = false;
                }
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public void setNamespace(String str) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
                }
                simpleValue.setStringValue(str);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public void setSchemaLocation(String str) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
                }
                simpleValue.setStringValue(str);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public void unsetNamespace() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[0]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public void unsetSchemaLocation() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[1]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public XmlAnyURI xgetNamespace() {
            XmlAnyURI xmlAnyURI;
            synchronized (monitor()) {
                check_orphaned();
                xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            }
            return xmlAnyURI;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public XmlAnyURI xgetSchemaLocation() {
            XmlAnyURI xmlAnyURI;
            synchronized (monitor()) {
                check_orphaned();
                xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            }
            return xmlAnyURI;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public void xsetNamespace(XmlAnyURI xmlAnyURI) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[0]);
                if (xmlAnyURI2 == null) {
                    xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[0]);
                }
                xmlAnyURI2.set(xmlAnyURI);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.ImportDocument.Import
        public void xsetSchemaLocation(XmlAnyURI xmlAnyURI) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[1]);
                if (xmlAnyURI2 == null) {
                    xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[1]);
                }
                xmlAnyURI2.set(xmlAnyURI);
            }
        }
    }

    public ImportDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ImportDocument
    public ImportDocument.Import addNewImport() {
        ImportDocument.Import r3;
        synchronized (monitor()) {
            check_orphaned();
            r3 = (ImportDocument.Import) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return r3;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ImportDocument
    public ImportDocument.Import getImport() {
        ImportDocument.Import r3;
        synchronized (monitor()) {
            check_orphaned();
            r3 = (ImportDocument.Import) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (r3 == null) {
                r3 = null;
            }
        }
        return r3;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.ImportDocument
    public void setImport(ImportDocument.Import r4) {
        generatedSetterHelperImpl(r4, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
