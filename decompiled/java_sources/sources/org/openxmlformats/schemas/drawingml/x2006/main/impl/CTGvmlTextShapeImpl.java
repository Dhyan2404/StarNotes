package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlUseShapeRectangle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;

/* loaded from: classes14.dex */
public class CTGvmlTextShapeImpl extends XmlComplexContentImpl implements CTGvmlTextShape {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "txBody"), new QName(XSSFRelation.NS_DRAWINGML, "useSpRect"), new QName(XSSFRelation.NS_DRAWINGML, "xfrm"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTGvmlTextShapeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public CTTextBody addNewTxBody() {
        CTTextBody cTTextBody;
        synchronized (monitor()) {
            check_orphaned();
            cTTextBody = (CTTextBody) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTextBody;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public CTGvmlUseShapeRectangle addNewUseSpRect() {
        CTGvmlUseShapeRectangle cTGvmlUseShapeRectangle;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlUseShapeRectangle = (CTGvmlUseShapeRectangle) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTGvmlUseShapeRectangle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public CTTransform2D addNewXfrm() {
        CTTransform2D cTTransform2D;
        synchronized (monitor()) {
            check_orphaned();
            cTTransform2D = (CTTransform2D) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTransform2D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public CTTextBody getTxBody() {
        CTTextBody cTTextBody;
        synchronized (monitor()) {
            check_orphaned();
            cTTextBody = (CTTextBody) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTextBody == null) {
                cTTextBody = null;
            }
        }
        return cTTextBody;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public CTGvmlUseShapeRectangle getUseSpRect() {
        CTGvmlUseShapeRectangle cTGvmlUseShapeRectangle;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlUseShapeRectangle = (CTGvmlUseShapeRectangle) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTGvmlUseShapeRectangle == null) {
                cTGvmlUseShapeRectangle = null;
            }
        }
        return cTGvmlUseShapeRectangle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public boolean isSetUseSpRect() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public boolean isSetXfrm() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public void setTxBody(CTTextBody cTTextBody) {
        generatedSetterHelperImpl(cTTextBody, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public void setUseSpRect(CTGvmlUseShapeRectangle cTGvmlUseShapeRectangle) {
        generatedSetterHelperImpl(cTGvmlUseShapeRectangle, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public void setXfrm(CTTransform2D cTTransform2D) {
        generatedSetterHelperImpl(cTTransform2D, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public void unsetUseSpRect() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape
    public void unsetXfrm() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
