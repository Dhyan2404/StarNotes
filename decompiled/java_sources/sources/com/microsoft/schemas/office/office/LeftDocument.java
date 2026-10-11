package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface LeftDocument extends XmlObject {
    public static final DocumentFactory<LeftDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LeftDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "left99bedoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStrokeChild addNewLeft();

    CTStrokeChild getLeft();

    void setLeft(CTStrokeChild cTStrokeChild);
}
