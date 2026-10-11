package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBinSub;
import org.openxmlformats.schemas.officeDocument.x2006.math.STBreakBinSub;

/* loaded from: classes14.dex */
public class CTBreakBinSubImpl extends XmlComplexContentImpl implements CTBreakBinSub {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTBreakBinSubImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBinSub
    public STBreakBinSub.Enum getVal() {
        STBreakBinSub.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STBreakBinSub.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBinSub
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBinSub
    public void setVal(STBreakBinSub.Enum r6) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBinSub
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBinSub
    public STBreakBinSub xgetVal() {
        STBreakBinSub sTBreakBinSub;
        synchronized (monitor()) {
            check_orphaned();
            sTBreakBinSub = (STBreakBinSub) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTBreakBinSub;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBinSub
    public void xsetVal(STBreakBinSub sTBreakBinSub) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBreakBinSub sTBreakBinSub2 = (STBreakBinSub) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBreakBinSub2 == null) {
                sTBreakBinSub2 = (STBreakBinSub) get_store().add_attribute_user(qNameArr[0]);
            }
            sTBreakBinSub2.set(sTBreakBinSub);
        }
    }
}
