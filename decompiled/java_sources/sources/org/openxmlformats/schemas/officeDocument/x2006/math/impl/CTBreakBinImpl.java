package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBin;
import org.openxmlformats.schemas.officeDocument.x2006.math.STBreakBin;

/* loaded from: classes14.dex */
public class CTBreakBinImpl extends XmlComplexContentImpl implements CTBreakBin {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTBreakBinImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBin
    public STBreakBin.Enum getVal() {
        STBreakBin.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STBreakBin.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBin
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBin
    public void setVal(STBreakBin.Enum r6) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBin
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBin
    public STBreakBin xgetVal() {
        STBreakBin sTBreakBin;
        synchronized (monitor()) {
            check_orphaned();
            sTBreakBin = (STBreakBin) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTBreakBin;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBreakBin
    public void xsetVal(STBreakBin sTBreakBin) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBreakBin sTBreakBin2 = (STBreakBin) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBreakBin2 == null) {
                sTBreakBin2 = (STBreakBin) get_store().add_attribute_user(qNameArr[0]);
            }
            sTBreakBin2.set(sTBreakBin);
        }
    }
}
