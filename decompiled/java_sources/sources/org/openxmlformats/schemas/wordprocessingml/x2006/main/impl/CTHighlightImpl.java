package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHighlight;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STHighlightColor;

/* loaded from: classes16.dex */
public class CTHighlightImpl extends XmlComplexContentImpl implements CTHighlight {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTHighlightImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHighlight
    public STHighlightColor.Enum getVal() {
        STHighlightColor.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STHighlightColor.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHighlight
    public void setVal(STHighlightColor.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHighlight
    public STHighlightColor xgetVal() {
        STHighlightColor sTHighlightColor;
        synchronized (monitor()) {
            check_orphaned();
            sTHighlightColor = (STHighlightColor) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTHighlightColor;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHighlight
    public void xsetVal(STHighlightColor sTHighlightColor) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STHighlightColor sTHighlightColor2 = (STHighlightColor) typeStore.find_attribute_user(qNameArr[0]);
            if (sTHighlightColor2 == null) {
                sTHighlightColor2 = (STHighlightColor) get_store().add_attribute_user(qNameArr[0]);
            }
            sTHighlightColor2.set(sTHighlightColor);
        }
    }
}
