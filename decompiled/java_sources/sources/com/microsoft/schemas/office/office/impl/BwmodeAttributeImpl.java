package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.BwmodeAttribute;
import com.microsoft.schemas.office.office.STBWMode;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class BwmodeAttributeImpl extends XmlComplexContentImpl implements BwmodeAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "bwmode")};
    private static final long serialVersionUID = 1;

    public BwmodeAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.BwmodeAttribute
    public STBWMode.Enum getBwmode() {
        STBWMode.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STBWMode.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.BwmodeAttribute
    public boolean isSetBwmode() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.BwmodeAttribute
    public void setBwmode(STBWMode.Enum r6) {
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

    @Override // com.microsoft.schemas.office.office.BwmodeAttribute
    public void unsetBwmode() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.BwmodeAttribute
    public STBWMode xgetBwmode() {
        STBWMode sTBWMode;
        synchronized (monitor()) {
            check_orphaned();
            sTBWMode = (STBWMode) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTBWMode;
    }

    @Override // com.microsoft.schemas.office.office.BwmodeAttribute
    public void xsetBwmode(STBWMode sTBWMode) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBWMode sTBWMode2 = (STBWMode) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBWMode2 == null) {
                sTBWMode2 = (STBWMode) get_store().add_attribute_user(qNameArr[0]);
            }
            sTBWMode2.set(sTBWMode);
        }
    }
}
