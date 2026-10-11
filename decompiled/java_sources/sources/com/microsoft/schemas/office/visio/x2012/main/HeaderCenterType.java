package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface HeaderCenterType extends XmlString {
    public static final DocumentFactory<HeaderCenterType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HeaderCenterType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "headercentertype3977type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
