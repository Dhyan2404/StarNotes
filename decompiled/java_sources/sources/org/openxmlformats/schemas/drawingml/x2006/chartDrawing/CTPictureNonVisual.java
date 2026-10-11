package org.openxmlformats.schemas.drawingml.x2006.chartDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualPictureProperties;

/* loaded from: classes14.dex */
public interface CTPictureNonVisual extends XmlObject {
    public static final DocumentFactory<CTPictureNonVisual> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPictureNonVisual> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpicturenonvisual6b11type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNonVisualPictureProperties addNewCNvPicPr();

    CTNonVisualDrawingProps addNewCNvPr();

    CTNonVisualPictureProperties getCNvPicPr();

    CTNonVisualDrawingProps getCNvPr();

    void setCNvPicPr(CTNonVisualPictureProperties cTNonVisualPictureProperties);

    void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps);
}
