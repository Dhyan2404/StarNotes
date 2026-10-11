package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTHierBranchStyle;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STHierBranchStyle;

/* loaded from: classes14.dex */
public class CTHierBranchStyleImpl extends XmlComplexContentImpl implements CTHierBranchStyle {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTHierBranchStyleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTHierBranchStyle
    public STHierBranchStyle.Enum getVal() {
        STHierBranchStyle.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STHierBranchStyle.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTHierBranchStyle
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTHierBranchStyle
    public void setVal(STHierBranchStyle.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTHierBranchStyle
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTHierBranchStyle
    public STHierBranchStyle xgetVal() {
        STHierBranchStyle sTHierBranchStyle;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTHierBranchStyle = (STHierBranchStyle) typeStore.find_attribute_user(qNameArr[0]);
            if (sTHierBranchStyle == null) {
                sTHierBranchStyle = (STHierBranchStyle) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTHierBranchStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTHierBranchStyle
    public void xsetVal(STHierBranchStyle sTHierBranchStyle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STHierBranchStyle sTHierBranchStyle2 = (STHierBranchStyle) typeStore.find_attribute_user(qNameArr[0]);
            if (sTHierBranchStyle2 == null) {
                sTHierBranchStyle2 = (STHierBranchStyle) get_store().add_attribute_user(qNameArr[0]);
            }
            sTHierBranchStyle2.set(sTHierBranchStyle);
        }
    }
}
