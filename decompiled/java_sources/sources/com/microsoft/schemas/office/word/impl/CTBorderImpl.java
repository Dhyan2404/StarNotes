package com.microsoft.schemas.office.word.impl;

import com.microsoft.schemas.office.word.CTBorder;
import com.microsoft.schemas.office.word.STBorderShadow;
import com.microsoft.schemas.office.word.STBorderType;
import java.math.BigInteger;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlPositiveInteger;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTBorderImpl extends XmlComplexContentImpl implements CTBorder {
    private static final QName[] PROPERTY_QNAME = {new QName("", "type"), new QName("", "width"), new QName("", "shadow")};
    private static final long serialVersionUID = 1;

    public CTBorderImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public STBorderShadow.Enum getShadow() {
        STBorderShadow.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            r3 = simpleValue == null ? null : (STBorderShadow.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public STBorderType.Enum getType() {
        STBorderType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STBorderType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public BigInteger getWidth() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public boolean isSetShadow() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public boolean isSetWidth() {
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

    @Override // com.microsoft.schemas.office.word.CTBorder
    public void setShadow(STBorderShadow.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public void setType(STBorderType.Enum r6) {
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

    @Override // com.microsoft.schemas.office.word.CTBorder
    public void setWidth(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public void unsetShadow() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public void unsetWidth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public STBorderShadow xgetShadow() {
        STBorderShadow sTBorderShadow;
        synchronized (monitor()) {
            check_orphaned();
            sTBorderShadow = (STBorderShadow) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTBorderShadow;
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public STBorderType xgetType() {
        STBorderType sTBorderType;
        synchronized (monitor()) {
            check_orphaned();
            sTBorderType = (STBorderType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTBorderType;
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public XmlPositiveInteger xgetWidth() {
        XmlPositiveInteger xmlPositiveInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlPositiveInteger = (XmlPositiveInteger) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlPositiveInteger;
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public void xsetShadow(STBorderShadow sTBorderShadow) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBorderShadow sTBorderShadow2 = (STBorderShadow) typeStore.find_attribute_user(qNameArr[2]);
            if (sTBorderShadow2 == null) {
                sTBorderShadow2 = (STBorderShadow) get_store().add_attribute_user(qNameArr[2]);
            }
            sTBorderShadow2.set(sTBorderShadow);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public void xsetType(STBorderType sTBorderType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBorderType sTBorderType2 = (STBorderType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBorderType2 == null) {
                sTBorderType2 = (STBorderType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTBorderType2.set(sTBorderType);
        }
    }

    @Override // com.microsoft.schemas.office.word.CTBorder
    public void xsetWidth(XmlPositiveInteger xmlPositiveInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlPositiveInteger xmlPositiveInteger2 = (XmlPositiveInteger) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlPositiveInteger2 == null) {
                xmlPositiveInteger2 = (XmlPositiveInteger) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlPositiveInteger2.set(xmlPositiveInteger);
        }
    }
}
