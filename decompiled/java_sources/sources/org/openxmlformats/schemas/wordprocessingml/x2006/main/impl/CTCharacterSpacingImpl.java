package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCharacterSpacing;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STCharacterSpacing;

/* loaded from: classes16.dex */
public class CTCharacterSpacingImpl extends XmlComplexContentImpl implements CTCharacterSpacing {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTCharacterSpacingImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCharacterSpacing
    public STCharacterSpacing.Enum getVal() {
        STCharacterSpacing.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STCharacterSpacing.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCharacterSpacing
    public void setVal(STCharacterSpacing.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCharacterSpacing
    public STCharacterSpacing xgetVal() {
        STCharacterSpacing sTCharacterSpacing;
        synchronized (monitor()) {
            check_orphaned();
            sTCharacterSpacing = (STCharacterSpacing) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTCharacterSpacing;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTCharacterSpacing
    public void xsetVal(STCharacterSpacing sTCharacterSpacing) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STCharacterSpacing sTCharacterSpacing2 = (STCharacterSpacing) typeStore.find_attribute_user(qNameArr[0]);
            if (sTCharacterSpacing2 == null) {
                sTCharacterSpacing2 = (STCharacterSpacing) get_store().add_attribute_user(qNameArr[0]);
            }
            sTCharacterSpacing2.set(sTCharacterSpacing);
        }
    }
}
