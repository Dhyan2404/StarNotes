package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface RectDocument extends XmlObject {
    public static final DocumentFactory<RectDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RectDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "rectaf36doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRect addNewRect();

    CTRect getRect();

    void setRect(CTRect cTRect);
}
