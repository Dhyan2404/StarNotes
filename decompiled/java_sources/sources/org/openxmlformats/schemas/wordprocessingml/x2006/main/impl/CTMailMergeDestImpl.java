package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDest;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMailMergeDest;

/* loaded from: classes16.dex */
public class CTMailMergeDestImpl extends XmlComplexContentImpl implements CTMailMergeDest {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTMailMergeDestImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDest
    public STMailMergeDest.Enum getVal() {
        STMailMergeDest.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STMailMergeDest.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDest
    public void setVal(STMailMergeDest.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDest
    public STMailMergeDest xgetVal() {
        STMailMergeDest sTMailMergeDest;
        synchronized (monitor()) {
            check_orphaned();
            sTMailMergeDest = (STMailMergeDest) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTMailMergeDest;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeDest
    public void xsetVal(STMailMergeDest sTMailMergeDest) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMailMergeDest sTMailMergeDest2 = (STMailMergeDest) typeStore.find_attribute_user(qNameArr[0]);
            if (sTMailMergeDest2 == null) {
                sTMailMergeDest2 = (STMailMergeDest) get_store().add_attribute_user(qNameArr[0]);
            }
            sTMailMergeDest2.set(sTMailMergeDest);
        }
    }
}
