package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface WebSettingsDocument extends XmlObject {
    public static final DocumentFactory<WebSettingsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<WebSettingsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "websettings0b2fdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTWebSettings addNewWebSettings();

    CTWebSettings getWebSettings();

    void setWebSettings(CTWebSettings cTWebSettings);
}
