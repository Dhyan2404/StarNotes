package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.STScreenSize;
import com.microsoft.schemas.office.office.TargetscreensizeAttribute;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class TargetscreensizeAttributeImpl extends XmlComplexContentImpl implements TargetscreensizeAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "targetscreensize")};
    private static final long serialVersionUID = 1;

    public TargetscreensizeAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.TargetscreensizeAttribute
    public STScreenSize.Enum getTargetscreensize() {
        STScreenSize.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STScreenSize.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.TargetscreensizeAttribute
    public boolean isSetTargetscreensize() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.TargetscreensizeAttribute
    public void setTargetscreensize(STScreenSize.Enum r6) {
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

    @Override // com.microsoft.schemas.office.office.TargetscreensizeAttribute
    public void unsetTargetscreensize() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.TargetscreensizeAttribute
    public STScreenSize xgetTargetscreensize() {
        STScreenSize sTScreenSize;
        synchronized (monitor()) {
            check_orphaned();
            sTScreenSize = (STScreenSize) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTScreenSize;
    }

    @Override // com.microsoft.schemas.office.office.TargetscreensizeAttribute
    public void xsetTargetscreensize(STScreenSize sTScreenSize) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STScreenSize sTScreenSize2 = (STScreenSize) typeStore.find_attribute_user(qNameArr[0]);
            if (sTScreenSize2 == null) {
                sTScreenSize2 = (STScreenSize) get_store().add_attribute_user(qNameArr[0]);
            }
            sTScreenSize2.set(sTScreenSize);
        }
    }
}
