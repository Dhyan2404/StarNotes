package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLoc;
import org.openxmlformats.schemas.officeDocument.x2006.math.STLimLoc;

/* loaded from: classes14.dex */
public class CTLimLocImpl extends XmlComplexContentImpl implements CTLimLoc {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTLimLocImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLoc
    public STLimLoc.Enum getVal() {
        STLimLoc.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STLimLoc.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLoc
    public void setVal(STLimLoc.Enum r6) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLoc
    public STLimLoc xgetVal() {
        STLimLoc sTLimLoc;
        synchronized (monitor()) {
            check_orphaned();
            sTLimLoc = (STLimLoc) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTLimLoc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLoc
    public void xsetVal(STLimLoc sTLimLoc) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STLimLoc sTLimLoc2 = (STLimLoc) typeStore.find_attribute_user(qNameArr[0]);
            if (sTLimLoc2 == null) {
                sTLimLoc2 = (STLimLoc) get_store().add_attribute_user(qNameArr[0]);
            }
            sTLimLoc2.set(sTLimLoc);
        }
    }
}
