package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameScrollbar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFrameScrollbar;

/* loaded from: classes16.dex */
public class CTFrameScrollbarImpl extends XmlComplexContentImpl implements CTFrameScrollbar {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "val")};
    private static final long serialVersionUID = 1;

    public CTFrameScrollbarImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameScrollbar
    public STFrameScrollbar.Enum getVal() {
        STFrameScrollbar.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STFrameScrollbar.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameScrollbar
    public void setVal(STFrameScrollbar.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameScrollbar
    public STFrameScrollbar xgetVal() {
        STFrameScrollbar sTFrameScrollbar;
        synchronized (monitor()) {
            check_orphaned();
            sTFrameScrollbar = (STFrameScrollbar) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTFrameScrollbar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFrameScrollbar
    public void xsetVal(STFrameScrollbar sTFrameScrollbar) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFrameScrollbar sTFrameScrollbar2 = (STFrameScrollbar) typeStore.find_attribute_user(qNameArr[0]);
            if (sTFrameScrollbar2 == null) {
                sTFrameScrollbar2 = (STFrameScrollbar) get_store().add_attribute_user(qNameArr[0]);
            }
            sTFrameScrollbar2.set(sTFrameScrollbar);
        }
    }
}
