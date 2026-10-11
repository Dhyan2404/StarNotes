package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBarDir;

/* loaded from: classes14.dex */
public class CTBarDirImpl extends XmlComplexContentImpl implements CTBarDir {
    private static final QName[] PROPERTY_QNAME = {new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTBarDirImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir
    public STBarDir.Enum getVal() {
        STBarDir.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[0]);
            }
            r5 = simpleValue == null ? null : (STBarDir.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir
    public void setVal(STBarDir.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir
    public STBarDir xgetVal() {
        STBarDir sTBarDir;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTBarDir = (STBarDir) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBarDir == null) {
                sTBarDir = (STBarDir) get_default_attribute_value(qNameArr[0]);
            }
        }
        return sTBarDir;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir
    public void xsetVal(STBarDir sTBarDir) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBarDir sTBarDir2 = (STBarDir) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBarDir2 == null) {
                sTBarDir2 = (STBarDir) get_store().add_attribute_user(qNameArr[0]);
            }
            sTBarDir2.set(sTBarDir);
        }
    }
}
