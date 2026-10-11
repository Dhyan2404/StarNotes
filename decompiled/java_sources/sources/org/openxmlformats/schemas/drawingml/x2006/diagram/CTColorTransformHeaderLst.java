package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTColorTransformHeaderLst extends XmlObject {
    public static final DocumentFactory<CTColorTransformHeaderLst> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColorTransformHeaderLst> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolortransformheaderlstd184type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColorTransformHeader addNewColorsDefHdr();

    CTColorTransformHeader getColorsDefHdrArray(int i);

    CTColorTransformHeader[] getColorsDefHdrArray();

    List<CTColorTransformHeader> getColorsDefHdrList();

    CTColorTransformHeader insertNewColorsDefHdr(int i);

    void removeColorsDefHdr(int i);

    void setColorsDefHdrArray(int i, CTColorTransformHeader cTColorTransformHeader);

    void setColorsDefHdrArray(CTColorTransformHeader[] cTColorTransformHeaderArr);

    int sizeOfColorsDefHdrArray();
}
