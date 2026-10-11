package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface RelIdsDocument extends XmlObject {
    public static final DocumentFactory<RelIdsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RelIdsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "relids971edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRelIds addNewRelIds();

    CTRelIds getRelIds();

    void setRelIds(CTRelIds cTRelIds);
}
