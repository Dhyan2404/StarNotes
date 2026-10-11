package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface HeaderLeftType extends XmlString {
    public static final DocumentFactory<HeaderLeftType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HeaderLeftType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "headerlefttype0485type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
