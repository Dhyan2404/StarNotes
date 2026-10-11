package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface WspDocument extends XmlObject {
    public static final DocumentFactory<WspDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<WspDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "wsp6089doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTWordprocessingShape addNewWsp();

    CTWordprocessingShape getWsp();

    void setWsp(CTWordprocessingShape cTWordprocessingShape);
}
