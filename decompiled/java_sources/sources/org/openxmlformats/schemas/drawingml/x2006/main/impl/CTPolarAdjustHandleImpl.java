package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAdjPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle;
import org.openxmlformats.schemas.drawingml.x2006.main.STAdjAngle;
import org.openxmlformats.schemas.drawingml.x2006.main.STAdjCoordinate;
import org.openxmlformats.schemas.drawingml.x2006.main.STGeomGuideName;

/* loaded from: classes14.dex */
public class CTPolarAdjustHandleImpl extends XmlComplexContentImpl implements CTPolarAdjustHandle {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "pos"), new QName("", "gdRefR"), new QName("", "minR"), new QName("", "maxR"), new QName("", "gdRefAng"), new QName("", "minAng"), new QName("", "maxAng")};
    private static final long serialVersionUID = 1;

    public CTPolarAdjustHandleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public CTAdjPoint2D addNewPos() {
        CTAdjPoint2D cTAdjPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTAdjPoint2D = (CTAdjPoint2D) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAdjPoint2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public String getGdRefAng() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public String getGdRefR() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public Object getMaxAng() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public Object getMaxR() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public Object getMinAng() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public Object getMinR() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public CTAdjPoint2D getPos() {
        CTAdjPoint2D cTAdjPoint2D;
        synchronized (monitor()) {
            check_orphaned();
            cTAdjPoint2D = (CTAdjPoint2D) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTAdjPoint2D == null) {
                cTAdjPoint2D = null;
            }
        }
        return cTAdjPoint2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public boolean isSetGdRefAng() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public boolean isSetGdRefR() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public boolean isSetMaxAng() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public boolean isSetMaxR() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public boolean isSetMinAng() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public boolean isSetMinR() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void setGdRefAng(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void setGdRefR(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void setMaxAng(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void setMaxR(Object obj) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void setMinAng(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void setMinR(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void setPos(CTAdjPoint2D cTAdjPoint2D) {
        generatedSetterHelperImpl(cTAdjPoint2D, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void unsetGdRefAng() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void unsetGdRefR() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void unsetMaxAng() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void unsetMaxR() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void unsetMinAng() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void unsetMinR() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public STGeomGuideName xgetGdRefAng() {
        STGeomGuideName sTGeomGuideName;
        synchronized (monitor()) {
            check_orphaned();
            sTGeomGuideName = (STGeomGuideName) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return sTGeomGuideName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public STGeomGuideName xgetGdRefR() {
        STGeomGuideName sTGeomGuideName;
        synchronized (monitor()) {
            check_orphaned();
            sTGeomGuideName = (STGeomGuideName) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTGeomGuideName;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public STAdjAngle xgetMaxAng() {
        STAdjAngle sTAdjAngle;
        synchronized (monitor()) {
            check_orphaned();
            sTAdjAngle = (STAdjAngle) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return sTAdjAngle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public STAdjCoordinate xgetMaxR() {
        STAdjCoordinate sTAdjCoordinate;
        synchronized (monitor()) {
            check_orphaned();
            sTAdjCoordinate = (STAdjCoordinate) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTAdjCoordinate;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public STAdjAngle xgetMinAng() {
        STAdjAngle sTAdjAngle;
        synchronized (monitor()) {
            check_orphaned();
            sTAdjAngle = (STAdjAngle) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTAdjAngle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public STAdjCoordinate xgetMinR() {
        STAdjCoordinate sTAdjCoordinate;
        synchronized (monitor()) {
            check_orphaned();
            sTAdjCoordinate = (STAdjCoordinate) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return sTAdjCoordinate;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void xsetGdRefAng(STGeomGuideName sTGeomGuideName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STGeomGuideName sTGeomGuideName2 = (STGeomGuideName) typeStore.find_attribute_user(qNameArr[4]);
            if (sTGeomGuideName2 == null) {
                sTGeomGuideName2 = (STGeomGuideName) get_store().add_attribute_user(qNameArr[4]);
            }
            sTGeomGuideName2.set(sTGeomGuideName);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void xsetGdRefR(STGeomGuideName sTGeomGuideName) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STGeomGuideName sTGeomGuideName2 = (STGeomGuideName) typeStore.find_attribute_user(qNameArr[1]);
            if (sTGeomGuideName2 == null) {
                sTGeomGuideName2 = (STGeomGuideName) get_store().add_attribute_user(qNameArr[1]);
            }
            sTGeomGuideName2.set(sTGeomGuideName);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void xsetMaxAng(STAdjAngle sTAdjAngle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAdjAngle sTAdjAngle2 = (STAdjAngle) typeStore.find_attribute_user(qNameArr[6]);
            if (sTAdjAngle2 == null) {
                sTAdjAngle2 = (STAdjAngle) get_store().add_attribute_user(qNameArr[6]);
            }
            sTAdjAngle2.set(sTAdjAngle);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void xsetMaxR(STAdjCoordinate sTAdjCoordinate) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAdjCoordinate sTAdjCoordinate2 = (STAdjCoordinate) typeStore.find_attribute_user(qNameArr[3]);
            if (sTAdjCoordinate2 == null) {
                sTAdjCoordinate2 = (STAdjCoordinate) get_store().add_attribute_user(qNameArr[3]);
            }
            sTAdjCoordinate2.set(sTAdjCoordinate);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void xsetMinAng(STAdjAngle sTAdjAngle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAdjAngle sTAdjAngle2 = (STAdjAngle) typeStore.find_attribute_user(qNameArr[5]);
            if (sTAdjAngle2 == null) {
                sTAdjAngle2 = (STAdjAngle) get_store().add_attribute_user(qNameArr[5]);
            }
            sTAdjAngle2.set(sTAdjAngle);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle
    public void xsetMinR(STAdjCoordinate sTAdjCoordinate) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAdjCoordinate sTAdjCoordinate2 = (STAdjCoordinate) typeStore.find_attribute_user(qNameArr[2]);
            if (sTAdjCoordinate2 == null) {
                sTAdjCoordinate2 = (STAdjCoordinate) get_store().add_attribute_user(qNameArr[2]);
            }
            sTAdjCoordinate2.set(sTAdjCoordinate);
        }
    }
}
