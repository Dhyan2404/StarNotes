package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeType;

/* loaded from: classes14.dex */
public class CTPresetGeometry2DImpl extends XmlComplexContentImpl implements CTPresetGeometry2D {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "avLst"), new QName("", "prst")};
    private static final long serialVersionUID = 1;

    public CTPresetGeometry2DImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D
    public CTGeomGuideList addNewAvLst() {
        CTGeomGuideList cTGeomGuideList;
        synchronized (monitor()) {
            check_orphaned();
            cTGeomGuideList = (CTGeomGuideList) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGeomGuideList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D
    public CTGeomGuideList getAvLst() {
        CTGeomGuideList cTGeomGuideList;
        synchronized (monitor()) {
            check_orphaned();
            cTGeomGuideList = (CTGeomGuideList) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGeomGuideList == null) {
                cTGeomGuideList = null;
            }
        }
        return cTGeomGuideList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D
    public STShapeType.Enum getPrst() {
        STShapeType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STShapeType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D
    public boolean isSetAvLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D
    public void setAvLst(CTGeomGuideList cTGeomGuideList) {
        generatedSetterHelperImpl(cTGeomGuideList, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D
    public void setPrst(STShapeType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D
    public void unsetAvLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D
    public STShapeType xgetPrst() {
        STShapeType sTShapeType;
        synchronized (monitor()) {
            check_orphaned();
            sTShapeType = (STShapeType) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTShapeType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D
    public void xsetPrst(STShapeType sTShapeType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STShapeType sTShapeType2 = (STShapeType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTShapeType2 == null) {
                sTShapeType2 = (STShapeType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTShapeType2.set(sTShapeType);
        }
    }
}
