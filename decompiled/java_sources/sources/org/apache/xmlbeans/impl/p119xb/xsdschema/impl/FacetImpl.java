package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Facet;
import org.apache.xmlbeans.impl.values.TypeStore;

/* loaded from: classes13.dex */
public class FacetImpl extends AnnotatedImpl implements Facet {
    private static final QName[] PROPERTY_QNAME = {new QName("", "value"), new QName("", "fixed")};
    private static final long serialVersionUID = 1;

    public FacetImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Facet
    public XmlAnySimpleType addNewValue() {
        XmlAnySimpleType xmlAnySimpleType;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnySimpleType = (XmlAnySimpleType) get_store().add_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlAnySimpleType;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Facet
    public boolean getFixed() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Facet
    public XmlAnySimpleType getValue() {
        XmlAnySimpleType xmlAnySimpleType;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnySimpleType = (XmlAnySimpleType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            if (xmlAnySimpleType == null) {
                xmlAnySimpleType = null;
            }
        }
        return xmlAnySimpleType;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Facet
    public boolean isSetFixed() {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Facet
    public void setFixed(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Facet
    public void setValue(XmlAnySimpleType xmlAnySimpleType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnySimpleType xmlAnySimpleType2 = (XmlAnySimpleType) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlAnySimpleType2 == null) {
                xmlAnySimpleType2 = (XmlAnySimpleType) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlAnySimpleType2.set(xmlAnySimpleType);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Facet
    public void unsetFixed() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Facet
    public XmlBoolean xgetFixed() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[1]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.Facet
    public void xsetFixed(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }
}
