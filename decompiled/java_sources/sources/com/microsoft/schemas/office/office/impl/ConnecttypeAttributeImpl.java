package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.ConnecttypeAttribute;
import com.microsoft.schemas.office.office.STConnectType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ConnecttypeAttributeImpl extends XmlComplexContentImpl implements ConnecttypeAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "connecttype")};
    private static final long serialVersionUID = 1;

    public ConnecttypeAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.ConnecttypeAttribute
    public STConnectType.Enum getConnecttype() {
        STConnectType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STConnectType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.ConnecttypeAttribute
    public boolean isSetConnecttype() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.ConnecttypeAttribute
    public void setConnecttype(STConnectType.Enum r6) {
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

    @Override // com.microsoft.schemas.office.office.ConnecttypeAttribute
    public void unsetConnecttype() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.ConnecttypeAttribute
    public STConnectType xgetConnecttype() {
        STConnectType sTConnectType;
        synchronized (monitor()) {
            check_orphaned();
            sTConnectType = (STConnectType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTConnectType;
    }

    @Override // com.microsoft.schemas.office.office.ConnecttypeAttribute
    public void xsetConnecttype(STConnectType sTConnectType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STConnectType sTConnectType2 = (STConnectType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTConnectType2 == null) {
                sTConnectType2 = (STConnectType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTConnectType2.set(sTConnectType);
        }
    }
}
