package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DataType extends XmlString {
    public static final DocumentFactory<DataType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "datatypeb30ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
