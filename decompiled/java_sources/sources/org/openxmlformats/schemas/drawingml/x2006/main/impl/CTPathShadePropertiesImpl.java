package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeRect;
import org.openxmlformats.schemas.drawingml.x2006.main.STPathShadeType;

/* loaded from: classes14.dex */
public class CTPathShadePropertiesImpl extends XmlComplexContentImpl implements CTPathShadeProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "fillToRect"), new QName("", "path")};
    private static final long serialVersionUID = 1;

    public CTPathShadePropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public CTRelativeRect addNewFillToRect() {
        CTRelativeRect cTRelativeRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRelativeRect = (CTRelativeRect) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelativeRect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public CTRelativeRect getFillToRect() {
        CTRelativeRect cTRelativeRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRelativeRect = (CTRelativeRect) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRelativeRect == null) {
                cTRelativeRect = null;
            }
        }
        return cTRelativeRect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public STPathShadeType.Enum getPath() {
        STPathShadeType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STPathShadeType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public boolean isSetFillToRect() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public boolean isSetPath() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public void setFillToRect(CTRelativeRect cTRelativeRect) {
        generatedSetterHelperImpl(cTRelativeRect, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public void setPath(STPathShadeType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public void unsetFillToRect() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public void unsetPath() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public STPathShadeType xgetPath() {
        STPathShadeType sTPathShadeType;
        synchronized (monitor()) {
            check_orphaned();
            sTPathShadeType = (STPathShadeType) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTPathShadeType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPathShadeProperties
    public void xsetPath(STPathShadeType sTPathShadeType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPathShadeType sTPathShadeType2 = (STPathShadeType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTPathShadeType2 == null) {
                sTPathShadeType2 = (STPathShadeType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTPathShadeType2.set(sTPathShadeType);
        }
    }
}
