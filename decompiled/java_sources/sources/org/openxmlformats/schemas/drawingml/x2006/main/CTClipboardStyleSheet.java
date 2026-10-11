package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTClipboardStyleSheet extends XmlObject {
    public static final DocumentFactory<CTClipboardStyleSheet> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTClipboardStyleSheet> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctclipboardstylesheet6015type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColorMapping addNewClrMap();

    CTBaseStyles addNewThemeElements();

    CTColorMapping getClrMap();

    CTBaseStyles getThemeElements();

    void setClrMap(CTColorMapping cTColorMapping);

    void setThemeElements(CTBaseStyles cTBaseStyles);
}
