package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTStyleDefinitionHeaderLst extends XmlObject {
    public static final DocumentFactory<CTStyleDefinitionHeaderLst> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStyleDefinitionHeaderLst> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstyledefinitionheaderlst1bb5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStyleDefinitionHeader addNewStyleDefHdr();

    CTStyleDefinitionHeader getStyleDefHdrArray(int i);

    CTStyleDefinitionHeader[] getStyleDefHdrArray();

    List<CTStyleDefinitionHeader> getStyleDefHdrList();

    CTStyleDefinitionHeader insertNewStyleDefHdr(int i);

    void removeStyleDefHdr(int i);

    void setStyleDefHdrArray(int i, CTStyleDefinitionHeader cTStyleDefinitionHeader);

    void setStyleDefHdrArray(CTStyleDefinitionHeader[] cTStyleDefinitionHeaderArr);

    int sizeOfStyleDefHdrArray();
}
