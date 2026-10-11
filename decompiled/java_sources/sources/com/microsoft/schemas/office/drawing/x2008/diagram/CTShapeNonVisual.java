package com.microsoft.schemas.office.drawing.x2008.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingShapeProps;

/* loaded from: classes7.dex */
public interface CTShapeNonVisual extends XmlObject {
    public static final DocumentFactory<CTShapeNonVisual> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTShapeNonVisual> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctshapenonvisual6121type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNonVisualDrawingProps addNewCNvPr();

    CTNonVisualDrawingShapeProps addNewCNvSpPr();

    CTNonVisualDrawingProps getCNvPr();

    CTNonVisualDrawingShapeProps getCNvSpPr();

    void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps);

    void setCNvSpPr(CTNonVisualDrawingShapeProps cTNonVisualDrawingShapeProps);
}
