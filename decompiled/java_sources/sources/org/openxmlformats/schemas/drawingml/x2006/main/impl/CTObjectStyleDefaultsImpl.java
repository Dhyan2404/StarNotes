package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTDefaultShapeDefinition;
import org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTObjectStyleDefaultsImpl extends XmlComplexContentImpl implements CTObjectStyleDefaults {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "spDef"), new QName(XSSFRelation.NS_DRAWINGML, "lnDef"), new QName(XSSFRelation.NS_DRAWINGML, "txDef"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTObjectStyleDefaultsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public CTDefaultShapeDefinition addNewLnDef() {
        CTDefaultShapeDefinition cTDefaultShapeDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTDefaultShapeDefinition = (CTDefaultShapeDefinition) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTDefaultShapeDefinition;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public CTDefaultShapeDefinition addNewSpDef() {
        CTDefaultShapeDefinition cTDefaultShapeDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTDefaultShapeDefinition = (CTDefaultShapeDefinition) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDefaultShapeDefinition;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public CTDefaultShapeDefinition addNewTxDef() {
        CTDefaultShapeDefinition cTDefaultShapeDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTDefaultShapeDefinition = (CTDefaultShapeDefinition) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTDefaultShapeDefinition;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public CTDefaultShapeDefinition getLnDef() {
        CTDefaultShapeDefinition cTDefaultShapeDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTDefaultShapeDefinition = (CTDefaultShapeDefinition) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTDefaultShapeDefinition == null) {
                cTDefaultShapeDefinition = null;
            }
        }
        return cTDefaultShapeDefinition;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public CTDefaultShapeDefinition getSpDef() {
        CTDefaultShapeDefinition cTDefaultShapeDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTDefaultShapeDefinition = (CTDefaultShapeDefinition) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDefaultShapeDefinition == null) {
                cTDefaultShapeDefinition = null;
            }
        }
        return cTDefaultShapeDefinition;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public CTDefaultShapeDefinition getTxDef() {
        CTDefaultShapeDefinition cTDefaultShapeDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTDefaultShapeDefinition = (CTDefaultShapeDefinition) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTDefaultShapeDefinition == null) {
                cTDefaultShapeDefinition = null;
            }
        }
        return cTDefaultShapeDefinition;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public boolean isSetLnDef() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public boolean isSetSpDef() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public boolean isSetTxDef() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public void setLnDef(CTDefaultShapeDefinition cTDefaultShapeDefinition) {
        generatedSetterHelperImpl(cTDefaultShapeDefinition, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public void setSpDef(CTDefaultShapeDefinition cTDefaultShapeDefinition) {
        generatedSetterHelperImpl(cTDefaultShapeDefinition, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public void setTxDef(CTDefaultShapeDefinition cTDefaultShapeDefinition) {
        generatedSetterHelperImpl(cTDefaultShapeDefinition, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public void unsetLnDef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public void unsetSpDef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTObjectStyleDefaults
    public void unsetTxDef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
