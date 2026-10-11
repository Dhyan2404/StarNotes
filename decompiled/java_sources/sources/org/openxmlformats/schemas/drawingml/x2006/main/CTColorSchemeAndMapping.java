package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTColorSchemeAndMapping extends XmlObject {
    public static final DocumentFactory<CTColorSchemeAndMapping> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColorSchemeAndMapping> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolorschemeandmappingbab0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColorMapping addNewClrMap();

    CTColorScheme addNewClrScheme();

    CTColorMapping getClrMap();

    CTColorScheme getClrScheme();

    boolean isSetClrMap();

    void setClrMap(CTColorMapping cTColorMapping);

    void setClrScheme(CTColorScheme cTColorScheme);

    void unsetClrMap();
}
