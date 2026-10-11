package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlNCName;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NotationDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Public;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class NotationDocumentImpl extends XmlComplexContentImpl implements NotationDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "notation")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class NotationImpl extends AnnotatedImpl implements NotationDocument.Notation {
        private static final QName[] PROPERTY_QNAME = {new QName("", "name"), new QName("", "public"), new QName("", "system")};
        private static final long serialVersionUID = 1;

        public NotationImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public String getName() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public String getPublic() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public String getSystem() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public boolean isSetPublic() {
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

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public boolean isSetSystem() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public void setName(String str) {
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

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public void setPublic(String str) {
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

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public void setSystem(String str) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
                }
                simpleValue.setStringValue(str);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public void unsetPublic() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[1]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public void unsetSystem() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[2]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public XmlNCName xgetName() {
            XmlNCName xmlNCName;
            synchronized (monitor()) {
                check_orphaned();
                xmlNCName = (XmlNCName) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            }
            return xmlNCName;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public Public xgetPublic() {
            Public r3;
            synchronized (monitor()) {
                check_orphaned();
                r3 = (Public) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            }
            return r3;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public XmlAnyURI xgetSystem() {
            XmlAnyURI xmlAnyURI;
            synchronized (monitor()) {
                check_orphaned();
                xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            }
            return xmlAnyURI;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public void xsetName(XmlNCName xmlNCName) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlNCName xmlNCName2 = (XmlNCName) typeStore.find_attribute_user(qNameArr[0]);
                if (xmlNCName2 == null) {
                    xmlNCName2 = (XmlNCName) get_store().add_attribute_user(qNameArr[0]);
                }
                xmlNCName2.set(xmlNCName);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public void xsetPublic(Public r6) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                Public r1 = (Public) typeStore.find_attribute_user(qNameArr[1]);
                if (r1 == null) {
                    r1 = (Public) get_store().add_attribute_user(qNameArr[1]);
                }
                r1.set(r6);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.NotationDocument.Notation
        public void xsetSystem(XmlAnyURI xmlAnyURI) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[2]);
                if (xmlAnyURI2 == null) {
                    xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[2]);
                }
                xmlAnyURI2.set(xmlAnyURI);
            }
        }
    }

    public NotationDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.NotationDocument
    public NotationDocument.Notation addNewNotation() {
        NotationDocument.Notation notation;
        synchronized (monitor()) {
            check_orphaned();
            notation = (NotationDocument.Notation) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return notation;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.NotationDocument
    public NotationDocument.Notation getNotation() {
        NotationDocument.Notation notation;
        synchronized (monitor()) {
            check_orphaned();
            notation = (NotationDocument.Notation) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (notation == null) {
                notation = null;
            }
        }
        return notation;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.NotationDocument
    public void setNotation(NotationDocument.Notation notation) {
        generatedSetterHelperImpl(notation, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
