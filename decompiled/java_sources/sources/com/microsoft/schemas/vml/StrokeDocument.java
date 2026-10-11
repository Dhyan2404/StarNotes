package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface StrokeDocument extends XmlObject {
    public static final DocumentFactory<StrokeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<StrokeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "stroked64adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStroke addNewStroke();

    CTStroke getStroke();

    void setStroke(CTStroke cTStroke);
}
