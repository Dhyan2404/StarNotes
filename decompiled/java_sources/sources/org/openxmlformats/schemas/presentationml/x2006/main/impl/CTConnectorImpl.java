package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeStyle;
import org.openxmlformats.schemas.presentationml.x2006.main.CTConnector;
import org.openxmlformats.schemas.presentationml.x2006.main.CTConnectorNonVisual;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionListModify;

/* loaded from: classes14.dex */
public class CTConnectorImpl extends XmlComplexContentImpl implements CTConnector {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "nvCxnSpPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "spPr"), new QName(XSSFRelation.NS_PRESENTATIONML, "style"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTConnectorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public CTExtensionListModify addNewExtLst() {
        CTExtensionListModify cTExtensionListModify;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionListModify = (CTExtensionListModify) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTExtensionListModify;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public CTConnectorNonVisual addNewNvCxnSpPr() {
        CTConnectorNonVisual cTConnectorNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTConnectorNonVisual = (CTConnectorNonVisual) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTConnectorNonVisual;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public CTShapeProperties addNewSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public CTShapeStyle addNewStyle() {
        CTShapeStyle cTShapeStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeStyle = (CTShapeStyle) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTShapeStyle;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public CTExtensionListModify getExtLst() {
        CTExtensionListModify cTExtensionListModify;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionListModify = (CTExtensionListModify) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTExtensionListModify == null) {
                cTExtensionListModify = null;
            }
        }
        return cTExtensionListModify;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public CTConnectorNonVisual getNvCxnSpPr() {
        CTConnectorNonVisual cTConnectorNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTConnectorNonVisual = (CTConnectorNonVisual) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTConnectorNonVisual == null) {
                cTConnectorNonVisual = null;
            }
        }
        return cTConnectorNonVisual;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public CTShapeStyle getStyle() {
        CTShapeStyle cTShapeStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeStyle = (CTShapeStyle) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTShapeStyle == null) {
                cTShapeStyle = null;
            }
        }
        return cTShapeStyle;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public boolean isSetStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public void setExtLst(CTExtensionListModify cTExtensionListModify) {
        generatedSetterHelperImpl(cTExtensionListModify, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public void setNvCxnSpPr(CTConnectorNonVisual cTConnectorNonVisual) {
        generatedSetterHelperImpl(cTConnectorNonVisual, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public void setSpPr(CTShapeProperties cTShapeProperties) {
        generatedSetterHelperImpl(cTShapeProperties, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public void setStyle(CTShapeStyle cTShapeStyle) {
        generatedSetterHelperImpl(cTShapeStyle, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTConnector
    public void unsetStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
