package org.openxmlformats.schemas.drawingml.x2006.chartDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTConnector;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGraphicFrame;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTMarker;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTPicture;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTShape;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;

/* loaded from: classes14.dex */
public class CTAbsSizeAnchorImpl extends XmlComplexContentImpl implements CTAbsSizeAnchor {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "from"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "ext"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "sp"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "grpSp"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "graphicFrame"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "cxnSp"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "pic")};
    private static final long serialVersionUID = 1;

    public CTAbsSizeAnchorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTConnector addNewCxnSp() {
        CTConnector cTConnector;
        synchronized (monitor()) {
            check_orphaned();
            cTConnector = (CTConnector) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTConnector;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTPositiveSize2D addNewExt() {
        CTPositiveSize2D cTPositiveSize2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveSize2D = (CTPositiveSize2D) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTPositiveSize2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTMarker addNewFrom() {
        CTMarker cTMarker;
        synchronized (monitor()) {
            check_orphaned();
            cTMarker = (CTMarker) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMarker;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTGraphicFrame addNewGraphicFrame() {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTGroupShape addNewGrpSp() {
        CTGroupShape cTGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShape = (CTGroupShape) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTGroupShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTPicture addNewPic() {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTShape addNewSp() {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTConnector getCxnSp() {
        CTConnector cTConnector;
        synchronized (monitor()) {
            check_orphaned();
            cTConnector = (CTConnector) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTConnector == null) {
                cTConnector = null;
            }
        }
        return cTConnector;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTPositiveSize2D getExt() {
        CTPositiveSize2D cTPositiveSize2D;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveSize2D = (CTPositiveSize2D) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTPositiveSize2D == null) {
                cTPositiveSize2D = null;
            }
        }
        return cTPositiveSize2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTMarker getFrom() {
        CTMarker cTMarker;
        synchronized (monitor()) {
            check_orphaned();
            cTMarker = (CTMarker) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTMarker == null) {
                cTMarker = null;
            }
        }
        return cTMarker;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTGraphicFrame getGraphicFrame() {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTGraphicFrame == null) {
                cTGraphicFrame = null;
            }
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTGroupShape getGrpSp() {
        CTGroupShape cTGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShape = (CTGroupShape) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTGroupShape == null) {
                cTGroupShape = null;
            }
        }
        return cTGroupShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTPicture getPic() {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTPicture == null) {
                cTPicture = null;
            }
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public CTShape getSp() {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTShape == null) {
                cTShape = null;
            }
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public boolean isSetCxnSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public boolean isSetGraphicFrame() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public boolean isSetGrpSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public boolean isSetPic() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public boolean isSetSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void setCxnSp(CTConnector cTConnector) {
        generatedSetterHelperImpl(cTConnector, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void setExt(CTPositiveSize2D cTPositiveSize2D) {
        generatedSetterHelperImpl(cTPositiveSize2D, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void setFrom(CTMarker cTMarker) {
        generatedSetterHelperImpl(cTMarker, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void setGraphicFrame(CTGraphicFrame cTGraphicFrame) {
        generatedSetterHelperImpl(cTGraphicFrame, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void setGrpSp(CTGroupShape cTGroupShape) {
        generatedSetterHelperImpl(cTGroupShape, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void setPic(CTPicture cTPicture) {
        generatedSetterHelperImpl(cTPicture, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void setSp(CTShape cTShape) {
        generatedSetterHelperImpl(cTShape, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void unsetCxnSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void unsetGraphicFrame() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void unsetGrpSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void unsetPic() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTAbsSizeAnchor
    public void unsetSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
