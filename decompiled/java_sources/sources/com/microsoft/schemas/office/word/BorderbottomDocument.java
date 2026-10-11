package com.microsoft.schemas.office.word;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BorderbottomDocument extends XmlObject {
    public static final DocumentFactory<BorderbottomDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BorderbottomDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "borderbottomd2dcdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBorder addNewBorderbottom();

    CTBorder getBorderbottom();

    void setBorderbottom(CTBorder cTBorder);
}
