package org.openxmlformats.schemas.schemaLibrary.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSchema extends XmlObject {
    public static final DocumentFactory<CTSchema> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSchema> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctschemac919type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getManifestLocation();

    String getSchemaLanguage();

    String getSchemaLocation();

    String getUri();

    boolean isSetManifestLocation();

    boolean isSetSchemaLanguage();

    boolean isSetSchemaLocation();

    boolean isSetUri();

    void setManifestLocation(String str);

    void setSchemaLanguage(String str);

    void setSchemaLocation(String str);

    void setUri(String str);

    void unsetManifestLocation();

    void unsetSchemaLanguage();

    void unsetSchemaLocation();

    void unsetUri();

    XmlString xgetManifestLocation();

    XmlToken xgetSchemaLanguage();

    XmlString xgetSchemaLocation();

    XmlString xgetUri();

    void xsetManifestLocation(XmlString xmlString);

    void xsetSchemaLanguage(XmlToken xmlToken);

    void xsetSchemaLocation(XmlString xmlString);

    void xsetUri(XmlString xmlString);
}
