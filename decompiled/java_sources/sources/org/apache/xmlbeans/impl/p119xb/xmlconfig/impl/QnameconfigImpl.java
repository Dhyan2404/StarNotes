package org.apache.xmlbeans.impl.p119xb.xmlconfig.impl;

import java.util.List;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlQName;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnametargetlist;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class QnameconfigImpl extends XmlComplexContentImpl implements Qnameconfig {
    private static final QName[] PROPERTY_QNAME = {new QName("", "name"), new QName("", "javaname"), new QName("", "target")};
    private static final long serialVersionUID = 1;

    public QnameconfigImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public String getJavaname() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public QName getName() {
        QName qNameValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            qNameValue = simpleValue == null ? null : simpleValue.getQNameValue();
        }
        return qNameValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public List getTarget() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public boolean isSetJavaname() {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public boolean isSetTarget() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public void setJavaname(String str) {
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

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public void setName(QName qName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setQNameValue(qName);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public void setTarget(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public void unsetJavaname() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public void unsetTarget() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public XmlString xgetJavaname() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlString;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public XmlQName xgetName() {
        XmlQName xmlQName;
        synchronized (monitor()) {
            check_orphaned();
            xmlQName = (XmlQName) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlQName;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public Qnametargetlist xgetTarget() {
        Qnametargetlist qnametargetlist;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            qnametargetlist = (Qnametargetlist) typeStore.find_attribute_user(qNameArr[2]);
            if (qnametargetlist == null) {
                qnametargetlist = (Qnametargetlist) get_default_attribute_value(qNameArr[2]);
            }
        }
        return qnametargetlist;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public void xsetJavaname(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public void xsetName(XmlQName xmlQName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlQName xmlQName2 = (XmlQName) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlQName2 == null) {
                xmlQName2 = (XmlQName) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlQName2.set(xmlQName);
        }
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig
    public void xsetTarget(Qnametargetlist qnametargetlist) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            Qnametargetlist qnametargetlist2 = (Qnametargetlist) typeStore.find_attribute_user(qNameArr[2]);
            if (qnametargetlist2 == null) {
                qnametargetlist2 = (Qnametargetlist) get_store().add_attribute_user(qNameArr[2]);
            }
            qnametargetlist2.set(qnametargetlist);
        }
    }
}
