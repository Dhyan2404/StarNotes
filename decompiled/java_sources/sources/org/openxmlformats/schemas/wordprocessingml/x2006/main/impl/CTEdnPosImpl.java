package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnPos;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STEdnPos;

/* loaded from: classes16.dex */
public class CTEdnPosImpl extends XmlComplexContentImpl implements CTEdnPos {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTEdnPosImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnPos
    public STEdnPos.Enum getVal() {
        STEdnPos.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STEdnPos.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnPos
    public void setVal(STEdnPos.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnPos
    public STEdnPos xgetVal() {
        STEdnPos sTEdnPos;
        synchronized (monitor()) {
            check_orphaned();
            sTEdnPos = (STEdnPos) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTEdnPos;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEdnPos
    public void xsetVal(STEdnPos sTEdnPos) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STEdnPos sTEdnPos2 = (STEdnPos) typeStore.find_attribute_user(qNameArr[0]);
            if (sTEdnPos2 == null) {
                sTEdnPos2 = (STEdnPos) get_store().add_attribute_user(qNameArr[0]);
            }
            sTEdnPos2.set(sTEdnPos);
        }
    }
}
