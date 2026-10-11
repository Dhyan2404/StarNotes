package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface GraphicDocument extends XmlObject {
    public static final DocumentFactory<GraphicDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<GraphicDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "graphic6f45doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGraphicalObject addNewGraphic();

    CTGraphicalObject getGraphic();

    void setGraphic(CTGraphicalObject cTGraphicalObject);
}
