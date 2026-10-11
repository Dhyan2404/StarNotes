package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ShapeDocument extends XmlObject {
    public static final DocumentFactory<ShapeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ShapeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "shapeaee1doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTShape addNewShape();

    CTShape getShape();

    void setShape(CTShape cTShape);
}
