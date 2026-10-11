package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.ConnectortypeAttribute;
import com.microsoft.schemas.office.office.STConnectorType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ConnectortypeAttributeImpl extends XmlComplexContentImpl implements ConnectortypeAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "connectortype")};
    private static final long serialVersionUID = 1;

    public ConnectortypeAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.ConnectortypeAttribute
    public STConnectorType.Enum getConnectortype() {
        STConnectorType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STConnectorType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // com.microsoft.schemas.office.office.ConnectortypeAttribute
    public boolean isSetConnectortype() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.ConnectortypeAttribute
    public void setConnectortype(STConnectorType.Enum r6) {
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

    @Override // com.microsoft.schemas.office.office.ConnectortypeAttribute
    public void unsetConnectortype() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.ConnectortypeAttribute
    public STConnectorType xgetConnectortype() {
        STConnectorType sTConnectorType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTConnectorType = (STConnectorType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTConnectorType == null) {
                sTConnectorType = (STConnectorType) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTConnectorType;
    }

    @Override // com.microsoft.schemas.office.office.ConnectortypeAttribute
    public void xsetConnectortype(STConnectorType sTConnectorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STConnectorType sTConnectorType2 = (STConnectorType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTConnectorType2 == null) {
                sTConnectorType2 = (STConnectorType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTConnectorType2.set(sTConnectorType);
        }
    }
}
