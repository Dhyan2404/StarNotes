package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFFStatusTextVal;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STInfoTextType;

/* loaded from: classes16.dex */
public class CTFFStatusTextImpl extends XmlComplexContentImpl implements CTFFStatusText {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "type"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTFFStatusTextImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public STInfoTextType.Enum getType() {
        STInfoTextType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STInfoTextType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public String getVal() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public boolean isSetVal() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public void setType(STInfoTextType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public void setVal(String str) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public STInfoTextType xgetType() {
        STInfoTextType sTInfoTextType;
        synchronized (monitor()) {
            check_orphaned();
            sTInfoTextType = (STInfoTextType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTInfoTextType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public STFFStatusTextVal xgetVal() {
        STFFStatusTextVal sTFFStatusTextVal;
        synchronized (monitor()) {
            check_orphaned();
            sTFFStatusTextVal = (STFFStatusTextVal) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTFFStatusTextVal;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public void xsetType(STInfoTextType sTInfoTextType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STInfoTextType sTInfoTextType2 = (STInfoTextType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTInfoTextType2 == null) {
                sTInfoTextType2 = (STInfoTextType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTInfoTextType2.set(sTInfoTextType);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFStatusText
    public void xsetVal(STFFStatusTextVal sTFFStatusTextVal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFFStatusTextVal sTFFStatusTextVal2 = (STFFStatusTextVal) typeStore.find_attribute_user(qNameArr[1]);
            if (sTFFStatusTextVal2 == null) {
                sTFFStatusTextVal2 = (STFFStatusTextVal) get_store().add_attribute_user(qNameArr[1]);
            }
            sTFFStatusTextVal2.set(sTFFStatusTextVal);
        }
    }
}
