package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTDiagramDefinitionHeaderLst extends XmlObject {
    public static final DocumentFactory<CTDiagramDefinitionHeaderLst> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDiagramDefinitionHeaderLst> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdiagramdefinitionheaderlstc917type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDiagramDefinitionHeader addNewLayoutDefHdr();

    CTDiagramDefinitionHeader getLayoutDefHdrArray(int i);

    CTDiagramDefinitionHeader[] getLayoutDefHdrArray();

    List<CTDiagramDefinitionHeader> getLayoutDefHdrList();

    CTDiagramDefinitionHeader insertNewLayoutDefHdr(int i);

    void removeLayoutDefHdr(int i);

    void setLayoutDefHdrArray(int i, CTDiagramDefinitionHeader cTDiagramDefinitionHeader);

    void setLayoutDefHdrArray(CTDiagramDefinitionHeader[] cTDiagramDefinitionHeaderArr);

    int sizeOfLayoutDefHdrArray();
}
