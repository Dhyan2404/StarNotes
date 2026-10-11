package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface WpcDocument extends XmlObject {
    public static final DocumentFactory<WpcDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<WpcDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "wpc7c33doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTWordprocessingCanvas addNewWpc();

    CTWordprocessingCanvas getWpc();

    void setWpc(CTWordprocessingCanvas cTWordprocessingCanvas);
}
