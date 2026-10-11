package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface LayoutDefDocument extends XmlObject {
    public static final DocumentFactory<LayoutDefDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LayoutDefDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "layoutdef2354doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDiagramDefinition addNewLayoutDef();

    CTDiagramDefinition getLayoutDef();

    void setLayoutDef(CTDiagramDefinition cTDiagramDefinition);
}
