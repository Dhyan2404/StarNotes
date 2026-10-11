package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface AppearanceDocument extends XmlObject {
    public static final DocumentFactory<AppearanceDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AppearanceDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "appearancec12edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSdtAppearance addNewAppearance();

    CTSdtAppearance getAppearance();

    void setAppearance(CTSdtAppearance cTSdtAppearance);
}
