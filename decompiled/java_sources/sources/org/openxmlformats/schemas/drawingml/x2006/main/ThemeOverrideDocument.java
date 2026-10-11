package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface ThemeOverrideDocument extends XmlObject {
    public static final DocumentFactory<ThemeOverrideDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ThemeOverrideDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "themeoverridee412doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBaseStylesOverride addNewThemeOverride();

    CTBaseStylesOverride getThemeOverride();

    void setThemeOverride(CTBaseStylesOverride cTBaseStylesOverride);
}
