package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface RoundrectDocument extends XmlObject {
    public static final DocumentFactory<RoundrectDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RoundrectDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "roundrecta472doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRoundRect addNewRoundrect();

    CTRoundRect getRoundrect();

    void setRoundrect(CTRoundRect cTRoundRect);
}
