package org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface FromDocument extends XmlObject {
    public static final DocumentFactory<FromDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FromDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "from8892doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMarker addNewFrom();

    CTMarker getFrom();

    void setFrom(CTMarker cTMarker);
}
