package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FooterCenterType extends XmlString {
    public static final DocumentFactory<FooterCenterType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FooterCenterType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "footercentertype3ca9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
