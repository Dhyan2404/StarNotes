package com.microsoft.schemas.compatibility;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes5.dex */
public interface ProcessContentAttribute extends XmlObject {
    public static final DocumentFactory<ProcessContentAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ProcessContentAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "processcontentd4c1attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getProcessContent();

    boolean isSetProcessContent();

    void setProcessContent(String str);

    void unsetProcessContent();

    XmlString xgetProcessContent();

    void xsetProcessContent(XmlString xmlString);
}
