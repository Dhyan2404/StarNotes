package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BackgroundDocument extends XmlObject {
    public static final DocumentFactory<BackgroundDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BackgroundDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "backgroundfe40doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBackground addNewBackground();

    CTBackground getBackground();

    void setBackground(CTBackground cTBackground);
}
