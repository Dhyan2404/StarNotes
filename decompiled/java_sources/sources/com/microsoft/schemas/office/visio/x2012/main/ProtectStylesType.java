package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ProtectStylesType extends XmlBoolean {
    public static final DocumentFactory<ProtectStylesType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ProtectStylesType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "protectstylestype49batype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
