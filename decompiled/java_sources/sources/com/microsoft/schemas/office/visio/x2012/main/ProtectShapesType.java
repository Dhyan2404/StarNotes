package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ProtectShapesType extends XmlBoolean {
    public static final DocumentFactory<ProtectShapesType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ProtectShapesType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "protectshapestype2faatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
