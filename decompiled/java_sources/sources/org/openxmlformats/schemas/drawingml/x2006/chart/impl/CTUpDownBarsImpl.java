package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTGapAmount;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBar;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars;

/* loaded from: classes14.dex */
public class CTUpDownBarsImpl extends XmlComplexContentImpl implements CTUpDownBars {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "gapWidth"), new QName(XSSFRelation.NS_CHART, "upBars"), new QName(XSSFRelation.NS_CHART, "downBars"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTUpDownBarsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public CTUpDownBar addNewDownBars() {
        CTUpDownBar cTUpDownBar;
        synchronized (monitor()) {
            check_orphaned();
            cTUpDownBar = (CTUpDownBar) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTUpDownBar;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public CTGapAmount addNewGapWidth() {
        CTGapAmount cTGapAmount;
        synchronized (monitor()) {
            check_orphaned();
            cTGapAmount = (CTGapAmount) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGapAmount;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public CTUpDownBar addNewUpBars() {
        CTUpDownBar cTUpDownBar;
        synchronized (monitor()) {
            check_orphaned();
            cTUpDownBar = (CTUpDownBar) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTUpDownBar;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public CTUpDownBar getDownBars() {
        CTUpDownBar cTUpDownBar;
        synchronized (monitor()) {
            check_orphaned();
            cTUpDownBar = (CTUpDownBar) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTUpDownBar == null) {
                cTUpDownBar = null;
            }
        }
        return cTUpDownBar;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public CTGapAmount getGapWidth() {
        CTGapAmount cTGapAmount;
        synchronized (monitor()) {
            check_orphaned();
            cTGapAmount = (CTGapAmount) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGapAmount == null) {
                cTGapAmount = null;
            }
        }
        return cTGapAmount;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public CTUpDownBar getUpBars() {
        CTUpDownBar cTUpDownBar;
        synchronized (monitor()) {
            check_orphaned();
            cTUpDownBar = (CTUpDownBar) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTUpDownBar == null) {
                cTUpDownBar = null;
            }
        }
        return cTUpDownBar;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public boolean isSetDownBars() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public boolean isSetGapWidth() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public boolean isSetUpBars() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public void setDownBars(CTUpDownBar cTUpDownBar) {
        generatedSetterHelperImpl(cTUpDownBar, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public void setGapWidth(CTGapAmount cTGapAmount) {
        generatedSetterHelperImpl(cTGapAmount, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public void setUpBars(CTUpDownBar cTUpDownBar) {
        generatedSetterHelperImpl(cTUpDownBar, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public void unsetDownBars() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public void unsetGapWidth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTUpDownBars
    public void unsetUpBars() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
