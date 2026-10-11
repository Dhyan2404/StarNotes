package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBuiltInUnit;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnitsLbl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDouble;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;

/* loaded from: classes14.dex */
public class CTDispUnitsImpl extends XmlComplexContentImpl implements CTDispUnits {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "custUnit"), new QName(XSSFRelation.NS_CHART, "builtInUnit"), new QName(XSSFRelation.NS_CHART, "dispUnitsLbl"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTDispUnitsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public CTBuiltInUnit addNewBuiltInUnit() {
        CTBuiltInUnit cTBuiltInUnit;
        synchronized (monitor()) {
            check_orphaned();
            cTBuiltInUnit = (CTBuiltInUnit) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTBuiltInUnit;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public CTDouble addNewCustUnit() {
        CTDouble cTDouble;
        synchronized (monitor()) {
            check_orphaned();
            cTDouble = (CTDouble) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDouble;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public CTDispUnitsLbl addNewDispUnitsLbl() {
        CTDispUnitsLbl cTDispUnitsLbl;
        synchronized (monitor()) {
            check_orphaned();
            cTDispUnitsLbl = (CTDispUnitsLbl) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTDispUnitsLbl;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public CTBuiltInUnit getBuiltInUnit() {
        CTBuiltInUnit cTBuiltInUnit;
        synchronized (monitor()) {
            check_orphaned();
            cTBuiltInUnit = (CTBuiltInUnit) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTBuiltInUnit == null) {
                cTBuiltInUnit = null;
            }
        }
        return cTBuiltInUnit;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public CTDouble getCustUnit() {
        CTDouble cTDouble;
        synchronized (monitor()) {
            check_orphaned();
            cTDouble = (CTDouble) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDouble == null) {
                cTDouble = null;
            }
        }
        return cTDouble;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public CTDispUnitsLbl getDispUnitsLbl() {
        CTDispUnitsLbl cTDispUnitsLbl;
        synchronized (monitor()) {
            check_orphaned();
            cTDispUnitsLbl = (CTDispUnitsLbl) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTDispUnitsLbl == null) {
                cTDispUnitsLbl = null;
            }
        }
        return cTDispUnitsLbl;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public boolean isSetBuiltInUnit() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public boolean isSetCustUnit() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public boolean isSetDispUnitsLbl() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public void setBuiltInUnit(CTBuiltInUnit cTBuiltInUnit) {
        generatedSetterHelperImpl(cTBuiltInUnit, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public void setCustUnit(CTDouble cTDouble) {
        generatedSetterHelperImpl(cTDouble, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public void setDispUnitsLbl(CTDispUnitsLbl cTDispUnitsLbl) {
        generatedSetterHelperImpl(cTDispUnitsLbl, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public void unsetBuiltInUnit() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public void unsetCustUnit() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public void unsetDispUnitsLbl() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTDispUnits
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
