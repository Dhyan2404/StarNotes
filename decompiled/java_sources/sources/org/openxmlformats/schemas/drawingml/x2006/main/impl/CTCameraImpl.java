package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTCamera;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSphereCoords;
import org.openxmlformats.schemas.drawingml.x2006.main.STFOVAngle;
import org.openxmlformats.schemas.drawingml.x2006.main.STPositivePercentage;
import org.openxmlformats.schemas.drawingml.x2006.main.STPresetCameraType;

/* loaded from: classes14.dex */
public class CTCameraImpl extends XmlComplexContentImpl implements CTCamera {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "rot"), new QName("", "prst"), new QName("", "fov"), new QName("", "zoom")};
    private static final long serialVersionUID = 1;

    public CTCameraImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public CTSphereCoords addNewRot() {
        CTSphereCoords cTSphereCoords;
        synchronized (monitor()) {
            check_orphaned();
            cTSphereCoords = (CTSphereCoords) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSphereCoords;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public int getFov() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public STPresetCameraType.Enum getPrst() {
        STPresetCameraType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STPresetCameraType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public CTSphereCoords getRot() {
        CTSphereCoords cTSphereCoords;
        synchronized (monitor()) {
            check_orphaned();
            cTSphereCoords = (CTSphereCoords) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSphereCoords == null) {
                cTSphereCoords = null;
            }
        }
        return cTSphereCoords;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public Object getZoom() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[3]);
            }
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public boolean isSetFov() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public boolean isSetRot() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public boolean isSetZoom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public void setFov(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public void setPrst(STPresetCameraType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public void setRot(CTSphereCoords cTSphereCoords) {
        generatedSetterHelperImpl(cTSphereCoords, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public void setZoom(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public void unsetFov() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public void unsetRot() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public void unsetZoom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public STFOVAngle xgetFov() {
        STFOVAngle sTFOVAngle;
        synchronized (monitor()) {
            check_orphaned();
            sTFOVAngle = (STFOVAngle) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTFOVAngle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public STPresetCameraType xgetPrst() {
        STPresetCameraType sTPresetCameraType;
        synchronized (monitor()) {
            check_orphaned();
            sTPresetCameraType = (STPresetCameraType) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTPresetCameraType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public STPositivePercentage xgetZoom() {
        STPositivePercentage sTPositivePercentage;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPositivePercentage = (STPositivePercentage) typeStore.find_attribute_user(qNameArr[3]);
            if (sTPositivePercentage == null) {
                sTPositivePercentage = (STPositivePercentage) get_default_attribute_value(qNameArr[3]);
            }
        }
        return sTPositivePercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public void xsetFov(STFOVAngle sTFOVAngle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFOVAngle sTFOVAngle2 = (STFOVAngle) typeStore.find_attribute_user(qNameArr[2]);
            if (sTFOVAngle2 == null) {
                sTFOVAngle2 = (STFOVAngle) get_store().add_attribute_user(qNameArr[2]);
            }
            sTFOVAngle2.set(sTFOVAngle);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public void xsetPrst(STPresetCameraType sTPresetCameraType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPresetCameraType sTPresetCameraType2 = (STPresetCameraType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTPresetCameraType2 == null) {
                sTPresetCameraType2 = (STPresetCameraType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTPresetCameraType2.set(sTPresetCameraType);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCamera
    public void xsetZoom(STPositivePercentage sTPositivePercentage) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPositivePercentage sTPositivePercentage2 = (STPositivePercentage) typeStore.find_attribute_user(qNameArr[3]);
            if (sTPositivePercentage2 == null) {
                sTPositivePercentage2 = (STPositivePercentage) get_store().add_attribute_user(qNameArr[3]);
            }
            sTPositivePercentage2.set(sTPositivePercentage);
        }
    }
}
