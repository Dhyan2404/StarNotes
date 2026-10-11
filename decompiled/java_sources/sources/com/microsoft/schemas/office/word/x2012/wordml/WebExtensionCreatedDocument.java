package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;

/* loaded from: classes7.dex */
public interface WebExtensionCreatedDocument extends XmlObject {
    public static final DocumentFactory<WebExtensionCreatedDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<WebExtensionCreatedDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "webextensioncreatedfd27doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewWebExtensionCreated();

    CTOnOff getWebExtensionCreated();

    void setWebExtensionCreated(CTOnOff cTOnOff);
}
