package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface SnapAngleType extends XmlDouble {
    public static final DocumentFactory<SnapAngleType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SnapAngleType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "snapangletype6ea2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
