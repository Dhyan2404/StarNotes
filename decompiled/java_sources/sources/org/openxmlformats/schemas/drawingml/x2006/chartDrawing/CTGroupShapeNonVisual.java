package org.openxmlformats.schemas.drawingml.x2006.chartDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGroupDrawingShapeProps;

/* loaded from: classes14.dex */
public interface CTGroupShapeNonVisual extends XmlObject {
    public static final DocumentFactory<CTGroupShapeNonVisual> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGroupShapeNonVisual> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgroupshapenonvisualbc43type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNonVisualGroupDrawingShapeProps addNewCNvGrpSpPr();

    CTNonVisualDrawingProps addNewCNvPr();

    CTNonVisualGroupDrawingShapeProps getCNvGrpSpPr();

    CTNonVisualDrawingProps getCNvPr();

    void setCNvGrpSpPr(CTNonVisualGroupDrawingShapeProps cTNonVisualGroupDrawingShapeProps);

    void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps);
}
