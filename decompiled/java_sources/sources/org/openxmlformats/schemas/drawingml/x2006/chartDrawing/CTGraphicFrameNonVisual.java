package org.openxmlformats.schemas.drawingml.x2006.chartDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties;

/* loaded from: classes14.dex */
public interface CTGraphicFrameNonVisual extends XmlObject {
    public static final DocumentFactory<CTGraphicFrameNonVisual> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGraphicFrameNonVisual> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgraphicframenonvisual1120type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNonVisualGraphicFrameProperties addNewCNvGraphicFramePr();

    CTNonVisualDrawingProps addNewCNvPr();

    CTNonVisualGraphicFrameProperties getCNvGraphicFramePr();

    CTNonVisualDrawingProps getCNvPr();

    void setCNvGraphicFramePr(CTNonVisualGraphicFrameProperties cTNonVisualGraphicFrameProperties);

    void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps);
}
