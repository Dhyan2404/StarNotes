package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FooterLeftType extends XmlString {
    public static final DocumentFactory<FooterLeftType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FooterLeftType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "footerlefttype2c37type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
