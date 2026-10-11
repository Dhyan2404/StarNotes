package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface HandlesDocument extends XmlObject {
    public static final DocumentFactory<HandlesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HandlesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "handlesd34bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTHandles addNewHandles();

    CTHandles getHandles();

    void setHandles(CTHandles cTHandles);
}
