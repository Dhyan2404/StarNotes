package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.impl.p119xb.xsdschema.IncludeDocument;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class IncludeDocumentImpl extends XmlComplexContentImpl implements IncludeDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "include")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class IncludeImpl extends AnnotatedImpl implements IncludeDocument.Include {
        private static final QName[] PROPERTY_QNAME = {new QName("", "schemaLocation")};
        private static final long serialVersionUID = 1;

        public IncludeImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.IncludeDocument.Include
        public String getSchemaLocation() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.IncludeDocument.Include
        public void setSchemaLocation(String str) {
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

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.IncludeDocument.Include
        public XmlAnyURI xgetSchemaLocation() {
            XmlAnyURI xmlAnyURI;
            synchronized (monitor()) {
                check_orphaned();
                xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            }
            return xmlAnyURI;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.IncludeDocument.Include
        public void xsetSchemaLocation(XmlAnyURI xmlAnyURI) {
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
    }

    public IncludeDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.IncludeDocument
    public IncludeDocument.Include addNewInclude() {
        IncludeDocument.Include include;
        synchronized (monitor()) {
            check_orphaned();
            include = (IncludeDocument.Include) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return include;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.IncludeDocument
    public IncludeDocument.Include getInclude() {
        IncludeDocument.Include include;
        synchronized (monitor()) {
            check_orphaned();
            include = (IncludeDocument.Include) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (include == null) {
                include = null;
            }
        }
        return include;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.IncludeDocument
    public void setInclude(IncludeDocument.Include include) {
        generatedSetterHelperImpl(include, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
