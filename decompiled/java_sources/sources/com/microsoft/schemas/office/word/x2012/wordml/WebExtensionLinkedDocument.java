package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;

/* loaded from: classes7.dex */
public interface WebExtensionLinkedDocument extends XmlObject {
    public static final DocumentFactory<WebExtensionLinkedDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<WebExtensionLinkedDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "webextensionlinked554edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewWebExtensionLinked();

    CTOnOff getWebExtensionLinked();

    void setWebExtensionLinked(CTOnOff cTOnOff);
}
