package com.microsoft.schemas.office.word;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BorderleftDocument extends XmlObject {
    public static final DocumentFactory<BorderleftDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BorderleftDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "borderlefte8f8doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBorder addNewBorderleft();

    CTBorder getBorderleft();

    void setBorderleft(CTBorder cTBorder);
}
