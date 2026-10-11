package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextAlignment;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTextAlignment;

/* loaded from: classes16.dex */
public class CTTextAlignmentImpl extends XmlComplexContentImpl implements CTTextAlignment {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTTextAlignmentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextAlignment
    public STTextAlignment.Enum getVal() {
        STTextAlignment.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STTextAlignment.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextAlignment
    public void setVal(STTextAlignment.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextAlignment
    public STTextAlignment xgetVal() {
        STTextAlignment sTTextAlignment;
        synchronized (monitor()) {
            check_orphaned();
            sTTextAlignment = (STTextAlignment) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTextAlignment;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextAlignment
    public void xsetVal(STTextAlignment sTTextAlignment) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTextAlignment sTTextAlignment2 = (STTextAlignment) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTextAlignment2 == null) {
                sTTextAlignment2 = (STTextAlignment) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTextAlignment2.set(sTTextAlignment);
        }
    }
}
