package com.microsoft.schemas.office.powerpoint;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTEmpty extends XmlObject {
    public static final DocumentFactory<CTEmpty> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEmpty> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctemptydaf5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
