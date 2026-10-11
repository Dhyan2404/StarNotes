package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface HeaderRightType extends XmlString {
    public static final DocumentFactory<HeaderRightType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HeaderRightType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "headerrighttype1ebctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
