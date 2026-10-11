package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualContentPartProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual;

/* loaded from: classes14.dex */
public class CTWordprocessingContentPartNonVisualImpl extends XmlComplexContentImpl implements CTWordprocessingContentPartNonVisual {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "cNvPr"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "cNvContentPartPr")};
    private static final long serialVersionUID = 1;

    public CTWordprocessingContentPartNonVisualImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual
    public CTNonVisualContentPartProperties addNewCNvContentPartPr() {
        CTNonVisualContentPartProperties cTNonVisualContentPartProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualContentPartProperties = (CTNonVisualContentPartProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTNonVisualContentPartProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual
    public CTNonVisualDrawingProps addNewCNvPr() {
        CTNonVisualDrawingProps cTNonVisualDrawingProps;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualDrawingProps = (CTNonVisualDrawingProps) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNonVisualDrawingProps;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual
    public CTNonVisualContentPartProperties getCNvContentPartPr() {
        CTNonVisualContentPartProperties cTNonVisualContentPartProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualContentPartProperties = (CTNonVisualContentPartProperties) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTNonVisualContentPartProperties == null) {
                cTNonVisualContentPartProperties = null;
            }
        }
        return cTNonVisualContentPartProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual
    public boolean isSetCNvContentPartPr() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual
    public boolean isSetCNvPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual
    public void setCNvContentPartPr(CTNonVisualContentPartProperties cTNonVisualContentPartProperties) {
        generatedSetterHelperImpl(cTNonVisualContentPartProperties, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual
    public void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps) {
        generatedSetterHelperImpl(cTNonVisualDrawingProps, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual
    public void unsetCNvContentPartPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPartNonVisual
    public void unsetCNvPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
