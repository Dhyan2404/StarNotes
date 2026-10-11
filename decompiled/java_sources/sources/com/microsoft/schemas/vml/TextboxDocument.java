package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface TextboxDocument extends XmlObject {
    public static final DocumentFactory<TextboxDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TextboxDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "textbox6e3edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTextbox addNewTextbox();

    CTTextbox getTextbox();

    void setTextbox(CTTextbox cTTextbox);
}
