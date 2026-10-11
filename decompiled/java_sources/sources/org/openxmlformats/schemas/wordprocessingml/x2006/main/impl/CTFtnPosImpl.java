package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnPos;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFtnPos;

/* loaded from: classes16.dex */
public class CTFtnPosImpl extends XmlComplexContentImpl implements CTFtnPos {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTFtnPosImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnPos
    public STFtnPos.Enum getVal() {
        STFtnPos.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STFtnPos.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnPos
    public void setVal(STFtnPos.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnPos
    public STFtnPos xgetVal() {
        STFtnPos sTFtnPos;
        synchronized (monitor()) {
            check_orphaned();
            sTFtnPos = (STFtnPos) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTFtnPos;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnPos
    public void xsetVal(STFtnPos sTFtnPos) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFtnPos sTFtnPos2 = (STFtnPos) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFtnPos2 == null) {
                sTFtnPos2 = (STFtnPos) get_store().add_attribute_user(qNameArr[0]);
            }
            sTFtnPos2.set(sTFtnPos);
        }
    }
}
