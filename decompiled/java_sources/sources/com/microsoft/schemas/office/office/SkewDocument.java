package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface SkewDocument extends XmlObject {
    public static final DocumentFactory<SkewDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SkewDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "skew5fc1doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSkew addNewSkew();

    CTSkew getSkew();

    void setSkew(CTSkew cTSkew);
}
