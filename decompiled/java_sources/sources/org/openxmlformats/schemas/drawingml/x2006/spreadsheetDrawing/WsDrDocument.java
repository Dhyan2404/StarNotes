package org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface WsDrDocument extends XmlObject {
    public static final DocumentFactory<WsDrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<WsDrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "wsdrd172doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDrawing addNewWsDr();

    CTDrawing getWsDr();

    void setWsDr(CTDrawing cTDrawing);
}
