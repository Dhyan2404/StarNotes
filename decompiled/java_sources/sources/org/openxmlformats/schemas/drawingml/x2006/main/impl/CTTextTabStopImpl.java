package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop;
import org.openxmlformats.schemas.drawingml.x2006.main.STCoordinate32;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextTabAlignType;

/* loaded from: classes14.dex */
public class CTTextTabStopImpl extends XmlComplexContentImpl implements CTTextTabStop {
    private static final QName[] PROPERTY_QNAME = {new QName("", "pos"), new QName("", "algn")};
    private static final long serialVersionUID = 1;

    public CTTextTabStopImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public STTextTabAlignType.Enum getAlgn() {
        STTextTabAlignType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STTextTabAlignType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public Object getPos() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public boolean isSetAlgn() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public boolean isSetPos() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public void setAlgn(STTextTabAlignType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public void setPos(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public void unsetAlgn() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public void unsetPos() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public STTextTabAlignType xgetAlgn() {
        STTextTabAlignType sTTextTabAlignType;
        synchronized (monitor()) {
            check_orphaned();
            sTTextTabAlignType = (STTextTabAlignType) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTTextTabAlignType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public STCoordinate32 xgetPos() {
        STCoordinate32 sTCoordinate32;
        synchronized (monitor()) {
            check_orphaned();
            sTCoordinate32 = (STCoordinate32) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTCoordinate32;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public void xsetAlgn(STTextTabAlignType sTTextTabAlignType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTextTabAlignType sTTextTabAlignType2 = (STTextTabAlignType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTTextTabAlignType2 == null) {
                sTTextTabAlignType2 = (STTextTabAlignType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTTextTabAlignType2.set(sTTextTabAlignType);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTextTabStop
    public void xsetPos(STCoordinate32 sTCoordinate32) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STCoordinate32 sTCoordinate322 = (STCoordinate32) typeStore.find_attribute_user(qNameArr[0]);
            if (sTCoordinate322 == null) {
                sTCoordinate322 = (STCoordinate32) get_store().add_attribute_user(qNameArr[0]);
            }
            sTCoordinate322.set(sTCoordinate32);
        }
    }
}
