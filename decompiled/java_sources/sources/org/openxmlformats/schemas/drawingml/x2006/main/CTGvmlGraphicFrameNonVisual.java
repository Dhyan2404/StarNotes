package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGvmlGraphicFrameNonVisual extends XmlObject {
    public static final DocumentFactory<CTGvmlGraphicFrameNonVisual> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGvmlGraphicFrameNonVisual> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgvmlgraphicframenonvisuald34btype");
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
