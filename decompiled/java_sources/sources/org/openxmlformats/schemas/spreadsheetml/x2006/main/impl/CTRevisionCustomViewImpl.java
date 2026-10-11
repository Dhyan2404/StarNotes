package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCustomView;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRevisionAction;

/* loaded from: classes15.dex */
public class CTRevisionCustomViewImpl extends XmlComplexContentImpl implements CTRevisionCustomView {
    private static final QName[] PROPERTY_QNAME = {new QName("", "guid"), new QName("", "action")};
    private static final long serialVersionUID = 1;

    public CTRevisionCustomViewImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCustomView
    public STRevisionAction.Enum getAction() {
        STRevisionAction.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STRevisionAction.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCustomView
    public String getGuid() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCustomView
    public void setAction(STRevisionAction.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCustomView
    public void setGuid(String str) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCustomView
    public STRevisionAction xgetAction() {
        STRevisionAction sTRevisionAction;
        synchronized (monitor()) {
            check_orphaned();
            sTRevisionAction = (STRevisionAction) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTRevisionAction;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCustomView
    public STGuid xgetGuid() {
        STGuid sTGuid;
        synchronized (monitor()) {
            check_orphaned();
            sTGuid = (STGuid) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTGuid;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCustomView
    public void xsetAction(STRevisionAction sTRevisionAction) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRevisionAction sTRevisionAction2 = (STRevisionAction) typeStore.find_attribute_user(qNameArr[1]);
            if (sTRevisionAction2 == null) {
                sTRevisionAction2 = (STRevisionAction) get_store().add_attribute_user(qNameArr[1]);
            }
            sTRevisionAction2.set(sTRevisionAction);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCustomView
    public void xsetGuid(STGuid sTGuid) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STGuid sTGuid2 = (STGuid) typeStore.find_attribute_user(qNameArr[0]);
            if (sTGuid2 == null) {
                sTGuid2 = (STGuid) get_store().add_attribute_user(qNameArr[0]);
            }
            sTGuid2.set(sTGuid);
        }
    }
}
