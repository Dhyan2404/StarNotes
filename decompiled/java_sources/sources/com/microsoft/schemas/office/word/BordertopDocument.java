package com.microsoft.schemas.office.word;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BordertopDocument extends XmlObject {
    public static final DocumentFactory<BordertopDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BordertopDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bordertopf7dcdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBorder addNewBordertop();

    CTBorder getBordertop();

    void setBordertop(CTBorder cTBorder);
}
