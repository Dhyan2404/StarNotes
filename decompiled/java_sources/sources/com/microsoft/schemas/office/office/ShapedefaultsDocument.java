package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ShapedefaultsDocument extends XmlObject {
    public static final DocumentFactory<ShapedefaultsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ShapedefaultsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "shapedefaults88d8doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTShapeDefaults addNewShapedefaults();

    CTShapeDefaults getShapedefaults();

    void setShapedefaults(CTShapeDefaults cTShapeDefaults);
}
