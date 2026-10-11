package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SettingsDocument extends XmlObject {
    public static final DocumentFactory<SettingsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SettingsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "settings9dd1doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSettings addNewSettings();

    CTSettings getSettings();

    void setSettings(CTSettings cTSettings);
}
