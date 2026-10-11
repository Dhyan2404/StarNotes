package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FillDocument extends XmlObject {
    public static final DocumentFactory<FillDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FillDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "fillc33adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFill addNewFill();

    CTFill getFill();

    void setFill(CTFill cTFill);
}
