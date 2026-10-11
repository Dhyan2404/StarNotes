package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface BottomDocument extends XmlObject {
    public static final DocumentFactory<BottomDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BottomDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "bottomc5a2doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStrokeChild addNewBottom();

    CTStrokeChild getBottom();

    void setBottom(CTStrokeChild cTStrokeChild);
}
