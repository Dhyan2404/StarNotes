package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLAnimVariant;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLTimeAnimateValueTime;

/* loaded from: classes14.dex */
public class CTTLTimeAnimateValueImpl extends XmlComplexContentImpl implements CTTLTimeAnimateValue {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "val"), new QName("", "tm"), new QName("", "fmla")};
    private static final long serialVersionUID = 1;

    public CTTLTimeAnimateValueImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public CTTLAnimVariant addNewVal() {
        CTTLAnimVariant cTTLAnimVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariant = (CTTLAnimVariant) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLAnimVariant;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public String getFmla() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public Object getTm() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public CTTLAnimVariant getVal() {
        CTTLAnimVariant cTTLAnimVariant;
        synchronized (monitor()) {
            check_orphaned();
            cTTLAnimVariant = (CTTLAnimVariant) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTLAnimVariant == null) {
                cTTLAnimVariant = null;
            }
        }
        return cTTLAnimVariant;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public boolean isSetFmla() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public boolean isSetTm() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public void setFmla(String str) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public void setTm(Object obj) {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public void setVal(CTTLAnimVariant cTTLAnimVariant) {
        generatedSetterHelperImpl(cTTLAnimVariant, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public void unsetFmla() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public void unsetTm() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public XmlString xgetFmla() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[2]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public STTLTimeAnimateValueTime xgetTm() {
        STTLTimeAnimateValueTime sTTLTimeAnimateValueTime;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTTLTimeAnimateValueTime = (STTLTimeAnimateValueTime) typeStore.find_attribute_user(qNameArr[1]);
            if (sTTLTimeAnimateValueTime == null) {
                sTTLTimeAnimateValueTime = (STTLTimeAnimateValueTime) get_default_attribute_value(qNameArr[1]);
            }
        }
        return sTTLTimeAnimateValueTime;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public void xsetFmla(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeAnimateValue
    public void xsetTm(STTLTimeAnimateValueTime sTTLTimeAnimateValueTime) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTLTimeAnimateValueTime sTTLTimeAnimateValueTime2 = (STTLTimeAnimateValueTime) typeStore.find_attribute_user(qNameArr[1]);
            if (sTTLTimeAnimateValueTime2 == null) {
                sTTLTimeAnimateValueTime2 = (STTLTimeAnimateValueTime) get_store().add_attribute_user(qNameArr[1]);
            }
            sTTLTimeAnimateValueTime2.set(sTTLTimeAnimateValueTime);
        }
    }
}
