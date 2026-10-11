package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGvmlPictureNonVisual extends XmlObject {
    public static final DocumentFactory<CTGvmlPictureNonVisual> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGvmlPictureNonVisual> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgvmlpicturenonvisualbd58type");
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
