package com.microsoft.schemas.office.word;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface WrapDocument extends XmlObject {
    public static final DocumentFactory<WrapDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<WrapDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "wrape08fdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTWrap addNewWrap();

    CTWrap getWrap();

    void setWrap(CTWrap cTWrap);
}
