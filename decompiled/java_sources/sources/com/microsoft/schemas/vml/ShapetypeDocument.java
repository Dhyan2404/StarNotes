package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ShapetypeDocument extends XmlObject {
    public static final DocumentFactory<ShapetypeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ShapetypeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "shapetypeb89bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTShapetype addNewShapetype();

    CTShapetype getShapetype();

    void setShapetype(CTShapetype cTShapetype);
}
