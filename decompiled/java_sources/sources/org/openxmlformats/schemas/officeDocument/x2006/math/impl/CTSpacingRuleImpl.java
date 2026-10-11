package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSpacingRule;
import org.openxmlformats.schemas.officeDocument.x2006.math.STSpacingRule;

/* loaded from: classes14.dex */
public class CTSpacingRuleImpl extends XmlComplexContentImpl implements CTSpacingRule {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTSpacingRuleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSpacingRule
    public int getVal() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            i = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSpacingRule
    public void setVal(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSpacingRule
    public STSpacingRule xgetVal() {
        STSpacingRule sTSpacingRule;
        synchronized (monitor()) {
            check_orphaned();
            sTSpacingRule = (STSpacingRule) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTSpacingRule;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSpacingRule
    public void xsetVal(STSpacingRule sTSpacingRule) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STSpacingRule sTSpacingRule2 = (STSpacingRule) typeStore.find_attribute_user(qNameArr[0]);
            if (sTSpacingRule2 == null) {
                sTSpacingRule2 = (STSpacingRule) get_store().add_attribute_user(qNameArr[0]);
            }
            sTSpacingRule2.set(sTSpacingRule);
        }
    }
}
