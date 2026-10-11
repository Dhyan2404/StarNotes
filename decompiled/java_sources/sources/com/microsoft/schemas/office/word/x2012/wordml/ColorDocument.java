package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor;

/* loaded from: classes7.dex */
public interface ColorDocument extends XmlObject {
    public static final DocumentFactory<ColorDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ColorDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "colorb261doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColor addNewColor();

    CTColor getColor();

    void setColor(CTColor cTColor);
}
