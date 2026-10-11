package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.OnedAttribute;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public class OnedAttributeImpl extends XmlComplexContentImpl implements OnedAttribute {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "oned")};
    private static final long serialVersionUID = 1;

    public OnedAttributeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.OnedAttribute
    public STTrueFalse.Enum getOned() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.OnedAttribute
    public boolean isSetOned() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.OnedAttribute
    public void setOned(STTrueFalse.Enum r6) {
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

    @Override // com.microsoft.schemas.office.office.OnedAttribute
    public void unsetOned() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.OnedAttribute
    public STTrueFalse xgetOned() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.OnedAttribute
    public void xsetOned(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }
}
