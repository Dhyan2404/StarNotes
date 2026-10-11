package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface GlueSettingsType extends XmlInt {
    public static final DocumentFactory<GlueSettingsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<GlueSettingsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "gluesettingstypec601type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
