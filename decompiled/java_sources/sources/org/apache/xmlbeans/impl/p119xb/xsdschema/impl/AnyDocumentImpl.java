package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import java.math.BigInteger;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlNonNegativeInteger;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AllNNI;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AnyDocument;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class AnyDocumentImpl extends XmlComplexContentImpl implements AnyDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "any")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class AnyImpl extends WildcardImpl implements AnyDocument.Any {
        private static final QName[] PROPERTY_QNAME = {new QName("", "minOccurs"), new QName("", "maxOccurs")};
        private static final long serialVersionUID = 1;

        public AnyImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public Object getMaxOccurs() {
            Object objectValue;
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
                }
                objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
            }
            return objectValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public BigInteger getMinOccurs() {
            BigInteger bigIntegerValue;
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
                }
                bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
            }
            return bigIntegerValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public boolean isSetMaxOccurs() {
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

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public boolean isSetMinOccurs() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public void setMaxOccurs(Object obj) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
                }
                simpleValue.setObjectValue(obj);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public void setMinOccurs(BigInteger bigInteger) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
                }
                simpleValue.setBigIntegerValue(bigInteger);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public void unsetMaxOccurs() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[1]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public void unsetMinOccurs() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[0]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public AllNNI xgetMaxOccurs() {
            AllNNI allNNI;
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                allNNI = (AllNNI) typeStore.find_attribute_user(qNameArr[1]);
                if (allNNI == null) {
                    allNNI = (AllNNI) get_default_attribute_value(qNameArr[1]);
                }
            }
            return allNNI;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public XmlNonNegativeInteger xgetMinOccurs() {
            XmlNonNegativeInteger xmlNonNegativeInteger;
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                xmlNonNegativeInteger = (XmlNonNegativeInteger) typeStore.find_attribute_user(qNameArr[0]);
                if (xmlNonNegativeInteger == null) {
                    xmlNonNegativeInteger = (XmlNonNegativeInteger) get_default_attribute_value(qNameArr[0]);
                }
            }
            return xmlNonNegativeInteger;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public void xsetMaxOccurs(AllNNI allNNI) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                AllNNI allNNI2 = (AllNNI) typeStore.find_attribute_user(qNameArr[1]);
                if (allNNI2 == null) {
                    allNNI2 = (AllNNI) get_store().add_attribute_user(qNameArr[1]);
                }
                allNNI2.set(allNNI);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnyDocument.Any
        public void xsetMinOccurs(XmlNonNegativeInteger xmlNonNegativeInteger) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlNonNegativeInteger xmlNonNegativeInteger2 = (XmlNonNegativeInteger) typeStore.find_attribute_user(qNameArr[0]);
                if (xmlNonNegativeInteger2 == null) {
                    xmlNonNegativeInteger2 = (XmlNonNegativeInteger) get_store().add_attribute_user(qNameArr[0]);
                }
                xmlNonNegativeInteger2.set(xmlNonNegativeInteger);
            }
        }
    }

    public AnyDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AnyDocument
    public AnyDocument.Any addNewAny() {
        AnyDocument.Any any;
        synchronized (monitor()) {
            check_orphaned();
            any = (AnyDocument.Any) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return any;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AnyDocument
    public AnyDocument.Any getAny() {
        AnyDocument.Any any;
        synchronized (monitor()) {
            check_orphaned();
            any = (AnyDocument.Any) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (any == null) {
                any = null;
            }
        }
        return any;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AnyDocument
    public void setAny(AnyDocument.Any any) {
        generatedSetterHelperImpl(any, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
