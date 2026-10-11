package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FillDocument extends XmlObject {
    public static final DocumentFactory<FillDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FillDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "fill6a95doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFill addNewFill();

    CTFill getFill();

    void setFill(CTFill cTFill);
}
