package org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface ToDocument extends XmlObject {
    public static final DocumentFactory<ToDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ToDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "to3123doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMarker addNewTo();

    CTMarker getTo();

    void setTo(CTMarker cTMarker);
}
