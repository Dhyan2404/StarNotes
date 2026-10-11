package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocPartType;

/* loaded from: classes16.dex */
public class CTDocPartTypeImpl extends XmlComplexContentImpl implements CTDocPartType {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTDocPartTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartType
    public STDocPartType.Enum getVal() {
        STDocPartType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STDocPartType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartType
    public void setVal(STDocPartType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartType
    public STDocPartType xgetVal() {
        STDocPartType sTDocPartType;
        synchronized (monitor()) {
            check_orphaned();
            sTDocPartType = (STDocPartType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTDocPartType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartType
    public void xsetVal(STDocPartType sTDocPartType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDocPartType sTDocPartType2 = (STDocPartType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTDocPartType2 == null) {
                sTDocPartType2 = (STDocPartType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTDocPartType2.set(sTDocPartType);
        }
    }
}
