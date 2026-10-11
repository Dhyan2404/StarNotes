package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTFType;
import org.openxmlformats.schemas.officeDocument.x2006.math.STFType;

/* loaded from: classes14.dex */
public class CTFTypeImpl extends XmlComplexContentImpl implements CTFType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTFTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTFType
    public STFType.Enum getVal() {
        STFType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STFType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTFType
    public void setVal(STFType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTFType
    public STFType xgetVal() {
        STFType sTFType;
        synchronized (monitor()) {
            check_orphaned();
            sTFType = (STFType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTFType;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTFType
    public void xsetVal(STFType sTFType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFType sTFType2 = (STFType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFType2 == null) {
                sTFType2 = (STFType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTFType2.set(sTFType);
        }
    }
}
