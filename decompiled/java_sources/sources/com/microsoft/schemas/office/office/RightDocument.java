package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface RightDocument extends XmlObject {
    public static final DocumentFactory<RightDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RightDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "right3401doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStrokeChild addNewRight();

    CTStrokeChild getRight();

    void setRight(CTStrokeChild cTStrokeChild);
}
