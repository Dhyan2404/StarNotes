package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface InkDocument extends XmlObject {
    public static final DocumentFactory<InkDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<InkDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "inkd58bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTInk addNewInk();

    CTInk getInk();

    void setInk(CTInk cTInk);
}
