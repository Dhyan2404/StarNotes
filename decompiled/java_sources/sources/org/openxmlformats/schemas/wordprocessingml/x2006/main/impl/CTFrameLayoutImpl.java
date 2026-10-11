package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameLayout;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFrameLayout;

/* loaded from: classes16.dex */
public class CTFrameLayoutImpl extends XmlComplexContentImpl implements CTFrameLayout {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTFrameLayoutImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameLayout
    public STFrameLayout.Enum getVal() {
        STFrameLayout.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STFrameLayout.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameLayout
    public void setVal(STFrameLayout.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameLayout
    public STFrameLayout xgetVal() {
        STFrameLayout sTFrameLayout;
        synchronized (monitor()) {
            check_orphaned();
            sTFrameLayout = (STFrameLayout) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTFrameLayout;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameLayout
    public void xsetVal(STFrameLayout sTFrameLayout) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFrameLayout sTFrameLayout2 = (STFrameLayout) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFrameLayout2 == null) {
                sTFrameLayout2 = (STFrameLayout) get_store().add_attribute_user(qNameArr[0]);
            }
            sTFrameLayout2.set(sTFrameLayout);
        }
    }
}
