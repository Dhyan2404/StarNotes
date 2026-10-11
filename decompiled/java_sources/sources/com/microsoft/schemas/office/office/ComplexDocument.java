package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ComplexDocument extends XmlObject {
    public static final DocumentFactory<ComplexDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ComplexDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "complex44d5doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTComplex addNewComplex();

    CTComplex getComplex();

    void setComplex(CTComplex cTComplex);
}
