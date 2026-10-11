package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface IconType extends XmlBase64Binary {
    public static final DocumentFactory<IconType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<IconType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "icontype9920type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
