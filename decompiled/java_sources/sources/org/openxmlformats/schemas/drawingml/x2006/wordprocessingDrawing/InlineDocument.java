package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface InlineDocument extends XmlObject {
    public static final DocumentFactory<InlineDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<InlineDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "inline3252doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTInline addNewInline();

    CTInline getInline();

    void setInline(CTInline cTInline);
}
