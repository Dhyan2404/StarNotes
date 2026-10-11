package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextEffect;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTextEffect;

/* loaded from: classes16.dex */
public class CTTextEffectImpl extends XmlComplexContentImpl implements CTTextEffect {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTTextEffectImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextEffect
    public STTextEffect.Enum getVal() {
        STTextEffect.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STTextEffect.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextEffect
    public void setVal(STTextEffect.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextEffect
    public STTextEffect xgetVal() {
        STTextEffect sTTextEffect;
        synchronized (monitor()) {
            check_orphaned();
            sTTextEffect = (STTextEffect) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTextEffect;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextEffect
    public void xsetVal(STTextEffect sTTextEffect) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTextEffect sTTextEffect2 = (STTextEffect) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTextEffect2 == null) {
                sTTextEffect2 = (STTextEffect) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTextEffect2.set(sTTextEffect);
        }
    }
}
