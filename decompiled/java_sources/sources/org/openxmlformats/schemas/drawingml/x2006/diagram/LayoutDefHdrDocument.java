package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface LayoutDefHdrDocument extends XmlObject {
    public static final DocumentFactory<LayoutDefHdrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LayoutDefHdrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "layoutdefhdr4c42doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDiagramDefinitionHeader addNewLayoutDefHdr();

    CTDiagramDefinitionHeader getLayoutDefHdr();

    void setLayoutDefHdr(CTDiagramDefinitionHeader cTDiagramDefinitionHeader);
}
