package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGvmlGroupShapeNonVisual extends XmlObject {
    public static final DocumentFactory<CTGvmlGroupShapeNonVisual> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGvmlGroupShapeNonVisual> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgvmlgroupshapenonvisualddeetype");
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
