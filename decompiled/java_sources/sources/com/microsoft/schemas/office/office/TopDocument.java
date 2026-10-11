package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface TopDocument extends XmlObject {
    public static final DocumentFactory<TopDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TopDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "topa3fadoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStrokeChild addNewTop();

    CTStrokeChild getTop();

    void setTop(CTStrokeChild cTStrokeChild);
}
