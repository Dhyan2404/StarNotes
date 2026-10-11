package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTShp;
import org.openxmlformats.schemas.officeDocument.x2006.math.STShp;

/* loaded from: classes14.dex */
public class CTShpImpl extends XmlComplexContentImpl implements CTShp {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTShpImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTShp
    public STShp.Enum getVal() {
        STShp.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STShp.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTShp
    public void setVal(STShp.Enum r6) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTShp
    public STShp xgetVal() {
        STShp sTShp;
        synchronized (monitor()) {
            check_orphaned();
            sTShp = (STShp) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTShp;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTShp
    public void xsetVal(STShp sTShp) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STShp sTShp2 = (STShp) typeStore.find_attribute_user(qNameArr[0]);
            if (sTShp2 == null) {
                sTShp2 = (STShp) get_store().add_attribute_user(qNameArr[0]);
            }
            sTShp2.set(sTShp);
        }
    }
}
