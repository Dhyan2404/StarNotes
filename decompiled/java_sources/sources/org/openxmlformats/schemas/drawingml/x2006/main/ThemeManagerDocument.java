package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface ThemeManagerDocument extends XmlObject {
    public static final DocumentFactory<ThemeManagerDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ThemeManagerDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "thememanager7113doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEmptyElement addNewThemeManager();

    CTEmptyElement getThemeManager();

    void setThemeManager(CTEmptyElement cTEmptyElement);
}
