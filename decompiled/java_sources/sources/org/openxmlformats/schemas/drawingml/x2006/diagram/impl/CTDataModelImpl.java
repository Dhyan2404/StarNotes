package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTCxnList;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTPtList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBackgroundFormatting;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTWholeE2OFormatting;

/* loaded from: classes14.dex */
public class CTDataModelImpl extends XmlComplexContentImpl implements CTDataModel {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "ptLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "cxnLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "bg"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "whole"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst")};
    private static final long serialVersionUID = 1;

    public CTDataModelImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public CTBackgroundFormatting addNewBg() {
        CTBackgroundFormatting cTBackgroundFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTBackgroundFormatting = (CTBackgroundFormatting) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBackgroundFormatting;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public CTCxnList addNewCxnLst() {
        CTCxnList cTCxnList;
        synchronized (monitor()) {
            check_orphaned();
            cTCxnList = (CTCxnList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTCxnList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public CTPtList addNewPtLst() {
        CTPtList cTPtList;
        synchronized (monitor()) {
            check_orphaned();
            cTPtList = (CTPtList) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPtList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public CTWholeE2OFormatting addNewWhole() {
        CTWholeE2OFormatting cTWholeE2OFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTWholeE2OFormatting = (CTWholeE2OFormatting) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTWholeE2OFormatting;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public CTBackgroundFormatting getBg() {
        CTBackgroundFormatting cTBackgroundFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTBackgroundFormatting = (CTBackgroundFormatting) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTBackgroundFormatting == null) {
                cTBackgroundFormatting = null;
            }
        }
        return cTBackgroundFormatting;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public CTCxnList getCxnLst() {
        CTCxnList cTCxnList;
        synchronized (monitor()) {
            check_orphaned();
            cTCxnList = (CTCxnList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTCxnList == null) {
                cTCxnList = null;
            }
        }
        return cTCxnList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public CTPtList getPtLst() {
        CTPtList cTPtList;
        synchronized (monitor()) {
            check_orphaned();
            cTPtList = (CTPtList) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPtList == null) {
                cTPtList = null;
            }
        }
        return cTPtList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public CTWholeE2OFormatting getWhole() {
        CTWholeE2OFormatting cTWholeE2OFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTWholeE2OFormatting = (CTWholeE2OFormatting) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTWholeE2OFormatting == null) {
                cTWholeE2OFormatting = null;
            }
        }
        return cTWholeE2OFormatting;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public boolean isSetBg() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public boolean isSetCxnLst() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public boolean isSetWhole() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public void setBg(CTBackgroundFormatting cTBackgroundFormatting) {
        generatedSetterHelperImpl(cTBackgroundFormatting, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public void setCxnLst(CTCxnList cTCxnList) {
        generatedSetterHelperImpl(cTCxnList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public void setPtLst(CTPtList cTPtList) {
        generatedSetterHelperImpl(cTPtList, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public void setWhole(CTWholeE2OFormatting cTWholeE2OFormatting) {
        generatedSetterHelperImpl(cTWholeE2OFormatting, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public void unsetBg() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public void unsetCxnLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTDataModel
    public void unsetWhole() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
