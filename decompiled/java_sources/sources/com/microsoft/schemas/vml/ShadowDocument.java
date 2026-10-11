package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ShadowDocument extends XmlObject {
    public static final DocumentFactory<ShadowDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ShadowDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "shadowd332doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTShadow addNewShadow();

    CTShadow getShadow();

    void setShadow(CTShadow cTShadow);
}
