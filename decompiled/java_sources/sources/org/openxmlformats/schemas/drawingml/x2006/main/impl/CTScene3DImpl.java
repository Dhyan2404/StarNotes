package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBackdrop;
import org.openxmlformats.schemas.drawingml.x2006.main.CTCamera;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLightRig;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D;

/* loaded from: classes14.dex */
public class CTScene3DImpl extends XmlComplexContentImpl implements CTScene3D {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "camera"), new QName(XSSFRelation.NS_DRAWINGML, "lightRig"), new QName(XSSFRelation.NS_DRAWINGML, "backdrop"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTScene3DImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public CTBackdrop addNewBackdrop() {
        CTBackdrop cTBackdrop;
        synchronized (monitor()) {
            check_orphaned();
            cTBackdrop = (CTBackdrop) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBackdrop;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public CTCamera addNewCamera() {
        CTCamera cTCamera;
        synchronized (monitor()) {
            check_orphaned();
            cTCamera = (CTCamera) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCamera;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public CTLightRig addNewLightRig() {
        CTLightRig cTLightRig;
        synchronized (monitor()) {
            check_orphaned();
            cTLightRig = (CTLightRig) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTLightRig;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public CTBackdrop getBackdrop() {
        CTBackdrop cTBackdrop;
        synchronized (monitor()) {
            check_orphaned();
            cTBackdrop = (CTBackdrop) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTBackdrop == null) {
                cTBackdrop = null;
            }
        }
        return cTBackdrop;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public CTCamera getCamera() {
        CTCamera cTCamera;
        synchronized (monitor()) {
            check_orphaned();
            cTCamera = (CTCamera) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTCamera == null) {
                cTCamera = null;
            }
        }
        return cTCamera;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public boolean isSetBackdrop() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public void setBackdrop(CTBackdrop cTBackdrop) {
        generatedSetterHelperImpl(cTBackdrop, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public void setCamera(CTCamera cTCamera) {
        generatedSetterHelperImpl(cTCamera, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public void setLightRig(CTLightRig cTLightRig) {
        generatedSetterHelperImpl(cTLightRig, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public void unsetBackdrop() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTScene3D
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
