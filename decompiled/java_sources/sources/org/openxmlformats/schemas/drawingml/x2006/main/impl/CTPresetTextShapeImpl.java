package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuideList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetTextShape;
import org.openxmlformats.schemas.drawingml.x2006.main.STTextShapeType;

/* loaded from: classes14.dex */
public class CTPresetTextShapeImpl extends XmlComplexContentImpl implements CTPresetTextShape {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "avLst"), new QName("", "prst")};
    private static final long serialVersionUID = 1;

    public CTPresetTextShapeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetTextShape
    public CTGeomGuideList addNewAvLst() {
        CTGeomGuideList cTGeomGuideList;
        synchronized (monitor()) {
            check_orphaned();
            cTGeomGuideList = (CTGeomGuideList) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGeomGuideList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetTextShape
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetTextShape
    public STTextShapeType.Enum getPrst() {
        STTextShapeType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STTextShapeType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetTextShape
    public boolean isSetAvLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetTextShape
    public void setAvLst(CTGeomGuideList cTGeomGuideList) {
        generatedSetterHelperImpl(cTGeomGuideList, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetTextShape
    public void setPrst(STTextShapeType.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetTextShape
    public void unsetAvLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetTextShape
    public STTextShapeType xgetPrst() {
        STTextShapeType sTTextShapeType;
        synchronized (monitor()) {
            check_orphaned();
            sTTextShapeType = (STTextShapeType) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTTextShapeType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPresetTextShape
    public void xsetPrst(STTextShapeType sTTextShapeType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTextShapeType sTTextShapeType2 = (STTextShapeType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTTextShapeType2 == null) {
                sTTextShapeType2 = (STTextShapeType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTTextShapeType2.set(sTTextShapeType);
        }
    }
}
