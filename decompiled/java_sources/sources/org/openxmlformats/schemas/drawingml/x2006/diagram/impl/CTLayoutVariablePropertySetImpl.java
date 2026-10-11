package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimLvl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTAnimOne;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTBulletEnabled;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTChildMax;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTChildPref;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDirection;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTHierBranchStyle;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTOrgChart;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTResizeHandles;

/* loaded from: classes14.dex */
public class CTLayoutVariablePropertySetImpl extends XmlComplexContentImpl implements CTLayoutVariablePropertySet {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "orgChart"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "chMax"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "chPref"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "bulletEnabled"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, CouchFieldKey.KEY_DIR), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "hierBranch"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "animOne"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "animLvl"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "resizeHandles")};
    private static final long serialVersionUID = 1;

    public CTLayoutVariablePropertySetImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTAnimLvl addNewAnimLvl() {
        CTAnimLvl cTAnimLvl;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimLvl = (CTAnimLvl) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTAnimLvl;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTAnimOne addNewAnimOne() {
        CTAnimOne cTAnimOne;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimOne = (CTAnimOne) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTAnimOne;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTBulletEnabled addNewBulletEnabled() {
        CTBulletEnabled cTBulletEnabled;
        synchronized (monitor()) {
            check_orphaned();
            cTBulletEnabled = (CTBulletEnabled) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTBulletEnabled;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTChildMax addNewChMax() {
        CTChildMax cTChildMax;
        synchronized (monitor()) {
            check_orphaned();
            cTChildMax = (CTChildMax) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTChildMax;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTChildPref addNewChPref() {
        CTChildPref cTChildPref;
        synchronized (monitor()) {
            check_orphaned();
            cTChildPref = (CTChildPref) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTChildPref;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTDirection addNewDir() {
        CTDirection cTDirection;
        synchronized (monitor()) {
            check_orphaned();
            cTDirection = (CTDirection) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTDirection;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTHierBranchStyle addNewHierBranch() {
        CTHierBranchStyle cTHierBranchStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTHierBranchStyle = (CTHierBranchStyle) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTHierBranchStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTOrgChart addNewOrgChart() {
        CTOrgChart cTOrgChart;
        synchronized (monitor()) {
            check_orphaned();
            cTOrgChart = (CTOrgChart) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOrgChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTResizeHandles addNewResizeHandles() {
        CTResizeHandles cTResizeHandles;
        synchronized (monitor()) {
            check_orphaned();
            cTResizeHandles = (CTResizeHandles) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTResizeHandles;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTAnimLvl getAnimLvl() {
        CTAnimLvl cTAnimLvl;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimLvl = (CTAnimLvl) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTAnimLvl == null) {
                cTAnimLvl = null;
            }
        }
        return cTAnimLvl;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTAnimOne getAnimOne() {
        CTAnimOne cTAnimOne;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimOne = (CTAnimOne) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTAnimOne == null) {
                cTAnimOne = null;
            }
        }
        return cTAnimOne;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTBulletEnabled getBulletEnabled() {
        CTBulletEnabled cTBulletEnabled;
        synchronized (monitor()) {
            check_orphaned();
            cTBulletEnabled = (CTBulletEnabled) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTBulletEnabled == null) {
                cTBulletEnabled = null;
            }
        }
        return cTBulletEnabled;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTChildMax getChMax() {
        CTChildMax cTChildMax;
        synchronized (monitor()) {
            check_orphaned();
            cTChildMax = (CTChildMax) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTChildMax == null) {
                cTChildMax = null;
            }
        }
        return cTChildMax;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTChildPref getChPref() {
        CTChildPref cTChildPref;
        synchronized (monitor()) {
            check_orphaned();
            cTChildPref = (CTChildPref) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTChildPref == null) {
                cTChildPref = null;
            }
        }
        return cTChildPref;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTDirection getDir() {
        CTDirection cTDirection;
        synchronized (monitor()) {
            check_orphaned();
            cTDirection = (CTDirection) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTDirection == null) {
                cTDirection = null;
            }
        }
        return cTDirection;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTHierBranchStyle getHierBranch() {
        CTHierBranchStyle cTHierBranchStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTHierBranchStyle = (CTHierBranchStyle) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTHierBranchStyle == null) {
                cTHierBranchStyle = null;
            }
        }
        return cTHierBranchStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTOrgChart getOrgChart() {
        CTOrgChart cTOrgChart;
        synchronized (monitor()) {
            check_orphaned();
            cTOrgChart = (CTOrgChart) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOrgChart == null) {
                cTOrgChart = null;
            }
        }
        return cTOrgChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public CTResizeHandles getResizeHandles() {
        CTResizeHandles cTResizeHandles;
        synchronized (monitor()) {
            check_orphaned();
            cTResizeHandles = (CTResizeHandles) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTResizeHandles == null) {
                cTResizeHandles = null;
            }
        }
        return cTResizeHandles;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public boolean isSetAnimLvl() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public boolean isSetAnimOne() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public boolean isSetBulletEnabled() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public boolean isSetChMax() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public boolean isSetChPref() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public boolean isSetDir() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public boolean isSetHierBranch() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public boolean isSetOrgChart() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public boolean isSetResizeHandles() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void setAnimLvl(CTAnimLvl cTAnimLvl) {
        generatedSetterHelperImpl(cTAnimLvl, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void setAnimOne(CTAnimOne cTAnimOne) {
        generatedSetterHelperImpl(cTAnimOne, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void setBulletEnabled(CTBulletEnabled cTBulletEnabled) {
        generatedSetterHelperImpl(cTBulletEnabled, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void setChMax(CTChildMax cTChildMax) {
        generatedSetterHelperImpl(cTChildMax, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void setChPref(CTChildPref cTChildPref) {
        generatedSetterHelperImpl(cTChildPref, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void setDir(CTDirection cTDirection) {
        generatedSetterHelperImpl(cTDirection, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void setHierBranch(CTHierBranchStyle cTHierBranchStyle) {
        generatedSetterHelperImpl(cTHierBranchStyle, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void setOrgChart(CTOrgChart cTOrgChart) {
        generatedSetterHelperImpl(cTOrgChart, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void setResizeHandles(CTResizeHandles cTResizeHandles) {
        generatedSetterHelperImpl(cTResizeHandles, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void unsetAnimLvl() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void unsetAnimOne() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void unsetBulletEnabled() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void unsetChMax() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void unsetChPref() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void unsetDir() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void unsetHierBranch() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void unsetOrgChart() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet
    public void unsetResizeHandles() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }
}
