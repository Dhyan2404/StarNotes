package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualContentPartProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;

/* loaded from: classes14.dex */
public interface CTWordprocessingContentPartNonVisual extends XmlObject {
    public static final DocumentFactory<CTWordprocessingContentPartNonVisual> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWordprocessingContentPartNonVisual> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwordprocessingcontentpartnonvisual94a1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNonVisualContentPartProperties addNewCNvContentPartPr();

    CTNonVisualDrawingProps addNewCNvPr();

    CTNonVisualContentPartProperties getCNvContentPartPr();

    CTNonVisualDrawingProps getCNvPr();

    boolean isSetCNvContentPartPr();

    boolean isSetCNvPr();

    void setCNvContentPartPr(CTNonVisualContentPartProperties cTNonVisualContentPartProperties);

    void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps);

    void unsetCNvContentPartPr();

    void unsetCNvPr();
}
