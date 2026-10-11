package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPictureNonVisual;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualPictureProperties;

/* loaded from: classes14.dex */
public class CTGvmlPictureNonVisualImpl extends XmlComplexContentImpl implements CTGvmlPictureNonVisual {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "cNvPr"), new QName(XSSFRelation.NS_DRAWINGML, "cNvPicPr")};
    private static final long serialVersionUID = 1;

    public CTGvmlPictureNonVisualImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPictureNonVisual
    public CTNonVisualPictureProperties addNewCNvPicPr() {
        CTNonVisualPictureProperties cTNonVisualPictureProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualPictureProperties = (CTNonVisualPictureProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTNonVisualPictureProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPictureNonVisual
    public CTNonVisualDrawingProps addNewCNvPr() {
        CTNonVisualDrawingProps cTNonVisualDrawingProps;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualDrawingProps = (CTNonVisualDrawingProps) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNonVisualDrawingProps;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPictureNonVisual
    public CTNonVisualPictureProperties getCNvPicPr() {
        CTNonVisualPictureProperties cTNonVisualPictureProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualPictureProperties = (CTNonVisualPictureProperties) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTNonVisualPictureProperties == null) {
                cTNonVisualPictureProperties = null;
            }
        }
        return cTNonVisualPictureProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPictureNonVisual
    public CTNonVisualDrawingProps getCNvPr() {
        CTNonVisualDrawingProps cTNonVisualDrawingProps;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualDrawingProps = (CTNonVisualDrawingProps) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTNonVisualDrawingProps == null) {
                cTNonVisualDrawingProps = null;
            }
        }
        return cTNonVisualDrawingProps;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPictureNonVisual
    public void setCNvPicPr(CTNonVisualPictureProperties cTNonVisualPictureProperties) {
        generatedSetterHelperImpl(cTNonVisualPictureProperties, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPictureNonVisual
    public void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps) {
        generatedSetterHelperImpl(cTNonVisualDrawingProps, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
