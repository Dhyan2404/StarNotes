package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint3D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTVector3D;

/* loaded from: classes14.dex */
public class CTBackdropImpl extends XmlComplexContentImpl implements CTBackdrop {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, Constants.ELEMNAME_ANCHOR_STRING), new QName(XSSFRelation.NS_DRAWINGML, "norm"), new QName(XSSFRelation.NS_DRAWINGML, "up"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTBackdropImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public CTPoint3D addNewAnchor() {
        CTPoint3D cTPoint3D;
        synchronized (monitor()) {
            check_orphaned();
            cTPoint3D = (CTPoint3D) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPoint3D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public CTVector3D addNewNorm() {
        CTVector3D cTVector3D;
        synchronized (monitor()) {
            check_orphaned();
            cTVector3D = (CTVector3D) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTVector3D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public CTVector3D addNewUp() {
        CTVector3D cTVector3D;
        synchronized (monitor()) {
            check_orphaned();
            cTVector3D = (CTVector3D) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTVector3D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public CTPoint3D getAnchor() {
        CTPoint3D cTPoint3D;
        synchronized (monitor()) {
            check_orphaned();
            cTPoint3D = (CTPoint3D) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPoint3D == null) {
                cTPoint3D = null;
            }
        }
        return cTPoint3D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public CTVector3D getNorm() {
        CTVector3D cTVector3D;
        synchronized (monitor()) {
            check_orphaned();
            cTVector3D = (CTVector3D) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTVector3D == null) {
                cTVector3D = null;
            }
        }
        return cTVector3D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public CTVector3D getUp() {
        CTVector3D cTVector3D;
        synchronized (monitor()) {
            check_orphaned();
            cTVector3D = (CTVector3D) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTVector3D == null) {
                cTVector3D = null;
            }
        }
        return cTVector3D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public void setAnchor(CTPoint3D cTPoint3D) {
        generatedSetterHelperImpl(cTPoint3D, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public void setNorm(CTVector3D cTVector3D) {
        generatedSetterHelperImpl(cTVector3D, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public void setUp(CTVector3D cTVector3D) {
        generatedSetterHelperImpl(cTVector3D, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
