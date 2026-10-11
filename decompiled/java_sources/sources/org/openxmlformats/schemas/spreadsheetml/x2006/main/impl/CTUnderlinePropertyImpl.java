package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUnderlineProperty;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STUnderlineValues;

/* loaded from: classes15.dex */
public class CTUnderlinePropertyImpl extends XmlComplexContentImpl implements CTUnderlineProperty {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTUnderlinePropertyImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUnderlineProperty
    public STUnderlineValues.Enum getVal() {
        STUnderlineValues.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STUnderlineValues.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUnderlineProperty
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUnderlineProperty
    public void setVal(STUnderlineValues.Enum r6) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUnderlineProperty
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUnderlineProperty
    public STUnderlineValues xgetVal() {
        STUnderlineValues sTUnderlineValues;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTUnderlineValues = (STUnderlineValues) typeStore.find_attribute_user(qNameArr[0]);
            if (sTUnderlineValues == null) {
                sTUnderlineValues = (STUnderlineValues) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTUnderlineValues;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUnderlineProperty
    public void xsetVal(STUnderlineValues sTUnderlineValues) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STUnderlineValues sTUnderlineValues2 = (STUnderlineValues) typeStore.find_attribute_user(qNameArr[0]);
            if (sTUnderlineValues2 == null) {
                sTUnderlineValues2 = (STUnderlineValues) get_store().add_attribute_user(qNameArr[0]);
            }
            sTUnderlineValues2.set(sTUnderlineValues);
        }
    }
}
