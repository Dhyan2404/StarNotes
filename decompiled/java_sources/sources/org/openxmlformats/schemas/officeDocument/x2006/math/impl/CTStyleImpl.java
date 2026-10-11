package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTStyle;
import org.openxmlformats.schemas.officeDocument.x2006.math.STStyle;

/* loaded from: classes14.dex */
public class CTStyleImpl extends XmlComplexContentImpl implements CTStyle {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "val")};
    private static final long serialVersionUID = 1;

    public CTStyleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTStyle
    public STStyle.Enum getVal() {
        STStyle.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STStyle.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTStyle
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTStyle
    public void setVal(STStyle.Enum r6) {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTStyle
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTStyle
    public STStyle xgetVal() {
        STStyle sTStyle;
        synchronized (monitor()) {
            check_orphaned();
            sTStyle = (STStyle) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTStyle;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTStyle
    public void xsetVal(STStyle sTStyle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStyle sTStyle2 = (STStyle) typeStore.find_attribute_user(qNameArr[0]);
            if (sTStyle2 == null) {
                sTStyle2 = (STStyle) get_store().add_attribute_user(qNameArr[0]);
            }
            sTStyle2.set(sTStyle);
        }
    }
}
