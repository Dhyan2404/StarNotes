package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBevel;
import org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.STPresetMaterialType;

/* loaded from: classes14.dex */
public class CTCell3DImpl extends XmlComplexContentImpl implements CTCell3D {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "bevel"), new QName(XSSFRelation.NS_DRAWINGML, "lightRig"), new QName(XSSFRelation.NS_DRAWINGML, "extLst"), new QName("", "prstMaterial")};
    private static final long serialVersionUID = 1;

    public CTCell3DImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public CTBevel addNewBevel() {
        CTBevel cTBevel;
        synchronized (monitor()) {
            check_orphaned();
            cTBevel = (CTBevel) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBevel;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public CTLightRig addNewLightRig() {
        CTLightRig cTLightRig;
        synchronized (monitor()) {
            check_orphaned();
            cTLightRig = (CTLightRig) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTLightRig;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public CTBevel getBevel() {
        CTBevel cTBevel;
        synchronized (monitor()) {
            check_orphaned();
            cTBevel = (CTBevel) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBevel == null) {
                cTBevel = null;
            }
        }
        return cTBevel;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public CTLightRig getLightRig() {
        CTLightRig cTLightRig;
        synchronized (monitor()) {
            check_orphaned();
            cTLightRig = (CTLightRig) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTLightRig == null) {
                cTLightRig = null;
            }
        }
        return cTLightRig;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public STPresetMaterialType.Enum getPrstMaterial() {
        STPresetMaterialType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[3]);
            }
            r5 = simpleValue == null ? null : (STPresetMaterialType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public boolean isSetLightRig() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public boolean isSetPrstMaterial() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public void setBevel(CTBevel cTBevel) {
        generatedSetterHelperImpl(cTBevel, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public void setLightRig(CTLightRig cTLightRig) {
        generatedSetterHelperImpl(cTLightRig, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public void setPrstMaterial(STPresetMaterialType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public void unsetLightRig() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public void unsetPrstMaterial() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public STPresetMaterialType xgetPrstMaterial() {
        STPresetMaterialType sTPresetMaterialType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPresetMaterialType = (STPresetMaterialType) typeStore.find_attribute_user(qNameArr[3]);
            if (sTPresetMaterialType == null) {
                sTPresetMaterialType = (STPresetMaterialType) get_default_attribute_value(qNameArr[3]);
            }
        }
        return sTPresetMaterialType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTCell3D
    public void xsetPrstMaterial(STPresetMaterialType sTPresetMaterialType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPresetMaterialType sTPresetMaterialType2 = (STPresetMaterialType) typeStore.find_attribute_user(qNameArr[3]);
            if (sTPresetMaterialType2 == null) {
                sTPresetMaterialType2 = (STPresetMaterialType) get_store().add_attribute_user(qNameArr[3]);
            }
            sTPresetMaterialType2.set(sTPresetMaterialType);
        }
    }
}
