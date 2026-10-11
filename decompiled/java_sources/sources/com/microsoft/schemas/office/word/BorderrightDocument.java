package com.microsoft.schemas.office.word;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BorderrightDocument extends XmlObject {
    public static final DocumentFactory<BorderrightDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BorderrightDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "borderright28a3doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBorder addNewBorderright();

    CTBorder getBorderright();

    void setBorderright(CTBorder cTBorder);
}
