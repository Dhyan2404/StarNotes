package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShapeNonVisual;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeStyle;

/* loaded from: classes14.dex */
public class CTGvmlShapeImpl extends XmlComplexContentImpl implements CTGvmlShape {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "nvSpPr"), new QName(XSSFRelation.NS_DRAWINGML, "spPr"), new QName(XSSFRelation.NS_DRAWINGML, "txSp"), new QName(XSSFRelation.NS_DRAWINGML, "style"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTGvmlShapeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public CTGvmlShapeNonVisual addNewNvSpPr() {
        CTGvmlShapeNonVisual cTGvmlShapeNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlShapeNonVisual = (CTGvmlShapeNonVisual) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGvmlShapeNonVisual;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public CTShapeProperties addNewSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public CTShapeStyle addNewStyle() {
        CTShapeStyle cTShapeStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeStyle = (CTShapeStyle) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTShapeStyle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public CTGvmlTextShape addNewTxSp() {
        CTGvmlTextShape cTGvmlTextShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlTextShape = (CTGvmlTextShape) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTGvmlTextShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public CTGvmlShapeNonVisual getNvSpPr() {
        CTGvmlShapeNonVisual cTGvmlShapeNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlShapeNonVisual = (CTGvmlShapeNonVisual) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGvmlShapeNonVisual == null) {
                cTGvmlShapeNonVisual = null;
            }
        }
        return cTGvmlShapeNonVisual;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public CTShapeProperties getSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTShapeProperties == null) {
                cTShapeProperties = null;
            }
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public CTGvmlTextShape getTxSp() {
        CTGvmlTextShape cTGvmlTextShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlTextShape = (CTGvmlTextShape) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTGvmlTextShape == null) {
                cTGvmlTextShape = null;
            }
        }
        return cTGvmlTextShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public boolean isSetStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public boolean isSetTxSp() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public void setNvSpPr(CTGvmlShapeNonVisual cTGvmlShapeNonVisual) {
        generatedSetterHelperImpl(cTGvmlShapeNonVisual, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public void setSpPr(CTShapeProperties cTShapeProperties) {
        generatedSetterHelperImpl(cTShapeProperties, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public void setStyle(CTShapeStyle cTShapeStyle) {
        generatedSetterHelperImpl(cTShapeStyle, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public void setTxSp(CTGvmlTextShape cTGvmlTextShape) {
        generatedSetterHelperImpl(cTGvmlTextShape, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public void unsetStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape
    public void unsetTxSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
