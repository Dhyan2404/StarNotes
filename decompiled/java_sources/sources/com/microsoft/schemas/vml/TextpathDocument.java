package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface TextpathDocument extends XmlObject {
    public static final DocumentFactory<TextpathDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TextpathDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "textpath0724doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTextPath addNewTextpath();

    CTTextPath getTextpath();

    void setTextpath(CTTextPath cTTextPath);
}
