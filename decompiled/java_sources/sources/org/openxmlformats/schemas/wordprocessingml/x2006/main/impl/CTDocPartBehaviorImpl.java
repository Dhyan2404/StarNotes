package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehavior;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocPartBehavior;

/* loaded from: classes16.dex */
public class CTDocPartBehaviorImpl extends XmlComplexContentImpl implements CTDocPartBehavior {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTDocPartBehaviorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehavior
    public STDocPartBehavior.Enum getVal() {
        STDocPartBehavior.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STDocPartBehavior.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehavior
    public void setVal(STDocPartBehavior.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehavior
    public STDocPartBehavior xgetVal() {
        STDocPartBehavior sTDocPartBehavior;
        synchronized (monitor()) {
            check_orphaned();
            sTDocPartBehavior = (STDocPartBehavior) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTDocPartBehavior;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartBehavior
    public void xsetVal(STDocPartBehavior sTDocPartBehavior) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDocPartBehavior sTDocPartBehavior2 = (STDocPartBehavior) typeStore.find_attribute_user(qNameArr[0]);
            if (sTDocPartBehavior2 == null) {
                sTDocPartBehavior2 = (STDocPartBehavior) get_store().add_attribute_user(qNameArr[0]);
            }
            sTDocPartBehavior2.set(sTDocPartBehavior);
        }
    }
}
