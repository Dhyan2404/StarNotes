package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface LineDocument extends XmlObject {
    public static final DocumentFactory<LineDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LineDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "line0946doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTLine addNewLine();

    CTLine getLine();

    void setLine(CTLine cTLine);
}
