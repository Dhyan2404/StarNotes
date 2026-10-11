package org.openxmlformats.schemas.drawingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTColorSchemeList extends XmlObject {
    public static final DocumentFactory<CTColorSchemeList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColorSchemeList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolorschemelist8f57type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColorSchemeAndMapping addNewExtraClrScheme();

    CTColorSchemeAndMapping getExtraClrSchemeArray(int i);

    CTColorSchemeAndMapping[] getExtraClrSchemeArray();

    List<CTColorSchemeAndMapping> getExtraClrSchemeList();

    CTColorSchemeAndMapping insertNewExtraClrScheme(int i);

    void removeExtraClrScheme(int i);

    void setExtraClrSchemeArray(int i, CTColorSchemeAndMapping cTColorSchemeAndMapping);

    void setExtraClrSchemeArray(CTColorSchemeAndMapping[] cTColorSchemeAndMappingArr);

    int sizeOfExtraClrSchemeArray();
}
