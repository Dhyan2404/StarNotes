package com.microsoft.schemas.office.drawing.x2008.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DrawingDocument extends XmlObject {
    public static final DocumentFactory<DrawingDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DrawingDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "drawing324ddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDrawing addNewDrawing();

    CTDrawing getDrawing();

    void setDrawing(CTDrawing cTDrawing);
}
