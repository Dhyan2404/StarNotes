package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTargetScreenSz;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTargetScreenSz;

/* loaded from: classes16.dex */
public class CTTargetScreenSzImpl extends XmlComplexContentImpl implements CTTargetScreenSz {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTTargetScreenSzImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTargetScreenSz
    public STTargetScreenSz.Enum getVal() {
        STTargetScreenSz.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STTargetScreenSz.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTargetScreenSz
    public void setVal(STTargetScreenSz.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTargetScreenSz
    public STTargetScreenSz xgetVal() {
        STTargetScreenSz sTTargetScreenSz;
        synchronized (monitor()) {
            check_orphaned();
            sTTargetScreenSz = (STTargetScreenSz) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTargetScreenSz;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTargetScreenSz
    public void xsetVal(STTargetScreenSz sTTargetScreenSz) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTargetScreenSz sTTargetScreenSz2 = (STTargetScreenSz) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTargetScreenSz2 == null) {
                sTTargetScreenSz2 = (STTargetScreenSz) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTargetScreenSz2.set(sTTargetScreenSz);
        }
    }
}
