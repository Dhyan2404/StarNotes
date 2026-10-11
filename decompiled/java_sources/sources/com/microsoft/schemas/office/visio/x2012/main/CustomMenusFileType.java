package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CustomMenusFileType extends XmlString {
    public static final DocumentFactory<CustomMenusFileType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CustomMenusFileType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "custommenusfiletype69actype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
