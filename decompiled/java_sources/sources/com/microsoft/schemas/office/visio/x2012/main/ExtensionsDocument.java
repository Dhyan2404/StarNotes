package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ExtensionsDocument extends XmlObject {
    public static final DocumentFactory<ExtensionsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ExtensionsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "extensions1896doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    ExtensionsType addNewExtensions();

    ExtensionsType getExtensions();

    void setExtensions(ExtensionsType extensionsType);
}
