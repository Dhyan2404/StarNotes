package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPictureNonVisual;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeStyle;

/* loaded from: classes14.dex */
public class CTGvmlPictureImpl extends XmlComplexContentImpl implements CTGvmlPicture {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "nvPicPr"), new QName(XSSFRelation.NS_DRAWINGML, "blipFill"), new QName(XSSFRelation.NS_DRAWINGML, "spPr"), new QName(XSSFRelation.NS_DRAWINGML, "style"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTGvmlPictureImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public CTBlipFillProperties addNewBlipFill() {
        CTBlipFillProperties cTBlipFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTBlipFillProperties = (CTBlipFillProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTBlipFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public CTGvmlPictureNonVisual addNewNvPicPr() {
        CTGvmlPictureNonVisual cTGvmlPictureNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlPictureNonVisual = (CTGvmlPictureNonVisual) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGvmlPictureNonVisual;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public CTShapeProperties addNewSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public CTShapeStyle addNewStyle() {
        CTShapeStyle cTShapeStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeStyle = (CTShapeStyle) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTShapeStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public CTBlipFillProperties getBlipFill() {
        CTBlipFillProperties cTBlipFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTBlipFillProperties = (CTBlipFillProperties) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTBlipFillProperties == null) {
                cTBlipFillProperties = null;
            }
        }
        return cTBlipFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public CTGvmlPictureNonVisual getNvPicPr() {
        CTGvmlPictureNonVisual cTGvmlPictureNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlPictureNonVisual = (CTGvmlPictureNonVisual) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGvmlPictureNonVisual == null) {
                cTGvmlPictureNonVisual = null;
            }
        }
        return cTGvmlPictureNonVisual;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public CTShapeProperties getSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTShapeProperties == null) {
                cTShapeProperties = null;
            }
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public CTShapeStyle getStyle() {
        CTShapeStyle cTShapeStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeStyle = (CTShapeStyle) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTShapeStyle == null) {
                cTShapeStyle = null;
            }
        }
        return cTShapeStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public boolean isSetStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public void setBlipFill(CTBlipFillProperties cTBlipFillProperties) {
        generatedSetterHelperImpl(cTBlipFillProperties, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public void setNvPicPr(CTGvmlPictureNonVisual cTGvmlPictureNonVisual) {
        generatedSetterHelperImpl(cTGvmlPictureNonVisual, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public void setSpPr(CTShapeProperties cTShapeProperties) {
        generatedSetterHelperImpl(cTShapeProperties, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public void setStyle(CTShapeStyle cTShapeStyle) {
        generatedSetterHelperImpl(cTShapeStyle, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture
    public void unsetStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }
}
