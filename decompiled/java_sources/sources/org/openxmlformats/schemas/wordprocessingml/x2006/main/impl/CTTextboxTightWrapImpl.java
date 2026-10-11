package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextboxTightWrap;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTextboxTightWrap;

/* loaded from: classes16.dex */
public class CTTextboxTightWrapImpl extends XmlComplexContentImpl implements CTTextboxTightWrap {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTTextboxTightWrapImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextboxTightWrap
    public STTextboxTightWrap.Enum getVal() {
        STTextboxTightWrap.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STTextboxTightWrap.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextboxTightWrap
    public void setVal(STTextboxTightWrap.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextboxTightWrap
    public STTextboxTightWrap xgetVal() {
        STTextboxTightWrap sTTextboxTightWrap;
        synchronized (monitor()) {
            check_orphaned();
            sTTextboxTightWrap = (STTextboxTightWrap) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTTextboxTightWrap;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTextboxTightWrap
    public void xsetVal(STTextboxTightWrap sTTextboxTightWrap) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTextboxTightWrap sTTextboxTightWrap2 = (STTextboxTightWrap) typeStore.find_attribute_user(qNameArr[0]);
            if (sTTextboxTightWrap2 == null) {
                sTTextboxTightWrap2 = (STTextboxTightWrap) get_store().add_attribute_user(qNameArr[0]);
            }
            sTTextboxTightWrap2.set(sTTextboxTightWrap);
        }
    }
}
