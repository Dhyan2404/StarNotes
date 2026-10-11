package com.microsoft.schemas.office.powerpoint;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface TextdataDocument extends XmlObject {
    public static final DocumentFactory<TextdataDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TextdataDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "textdatacb7ddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRel addNewTextdata();

    CTRel getTextdata();

    void setTextdata(CTRel cTRel);
}
