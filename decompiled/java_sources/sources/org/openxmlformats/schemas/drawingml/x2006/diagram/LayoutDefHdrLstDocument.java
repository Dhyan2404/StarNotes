package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface LayoutDefHdrLstDocument extends XmlObject {
    public static final DocumentFactory<LayoutDefHdrLstDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LayoutDefHdrLstDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "layoutdefhdrlstaf9ddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDiagramDefinitionHeaderLst addNewLayoutDefHdrLst();

    CTDiagramDefinitionHeaderLst getLayoutDefHdrLst();

    void setLayoutDefHdrLst(CTDiagramDefinitionHeaderLst cTDiagramDefinitionHeaderLst);
}
