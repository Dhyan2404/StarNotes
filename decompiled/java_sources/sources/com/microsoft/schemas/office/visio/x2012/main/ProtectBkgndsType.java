package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ProtectBkgndsType extends XmlBoolean {
    public static final DocumentFactory<ProtectBkgndsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ProtectBkgndsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "protectbkgndstype15bdtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
