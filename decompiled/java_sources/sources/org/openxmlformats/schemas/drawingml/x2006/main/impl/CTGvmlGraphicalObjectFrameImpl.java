package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicFrameNonVisual;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;

/* loaded from: classes14.dex */
public class CTGvmlGraphicalObjectFrameImpl extends XmlComplexContentImpl implements CTGvmlGraphicalObjectFrame {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "nvGraphicFramePr"), new QName(XSSFRelation.NS_DRAWINGML, "graphic"), new QName(XSSFRelation.NS_DRAWINGML, "xfrm"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTGvmlGraphicalObjectFrameImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public CTGraphicalObject addNewGraphic() {
        CTGraphicalObject cTGraphicalObject;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicalObject = (CTGraphicalObject) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTGraphicalObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public CTGvmlGraphicFrameNonVisual addNewNvGraphicFramePr() {
        CTGvmlGraphicFrameNonVisual cTGvmlGraphicFrameNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGraphicFrameNonVisual = (CTGvmlGraphicFrameNonVisual) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGvmlGraphicFrameNonVisual;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public CTTransform2D addNewXfrm() {
        CTTransform2D cTTransform2D;
        synchronized (monitor()) {
            check_orphaned();
            cTTransform2D = (CTTransform2D) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTransform2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public CTGraphicalObject getGraphic() {
        CTGraphicalObject cTGraphicalObject;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicalObject = (CTGraphicalObject) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTGraphicalObject == null) {
                cTGraphicalObject = null;
            }
        }
        return cTGraphicalObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public CTGvmlGraphicFrameNonVisual getNvGraphicFramePr() {
        CTGvmlGraphicFrameNonVisual cTGvmlGraphicFrameNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGraphicFrameNonVisual = (CTGvmlGraphicFrameNonVisual) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGvmlGraphicFrameNonVisual == null) {
                cTGvmlGraphicFrameNonVisual = null;
            }
        }
        return cTGvmlGraphicFrameNonVisual;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public CTTransform2D getXfrm() {
        CTTransform2D cTTransform2D;
        synchronized (monitor()) {
            check_orphaned();
            cTTransform2D = (CTTransform2D) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTransform2D == null) {
                cTTransform2D = null;
            }
        }
        return cTTransform2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public void setGraphic(CTGraphicalObject cTGraphicalObject) {
        generatedSetterHelperImpl(cTGraphicalObject, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public void setNvGraphicFramePr(CTGvmlGraphicFrameNonVisual cTGvmlGraphicFrameNonVisual) {
        generatedSetterHelperImpl(cTGvmlGraphicFrameNonVisual, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public void setXfrm(CTTransform2D cTTransform2D) {
        generatedSetterHelperImpl(cTTransform2D, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
