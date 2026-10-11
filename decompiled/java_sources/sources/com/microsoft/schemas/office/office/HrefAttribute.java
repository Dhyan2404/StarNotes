package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface HrefAttribute extends XmlObject {
    public static final DocumentFactory<HrefAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HrefAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "hrefc394attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getHref();

    boolean isSetHref();

    void setHref(String str);

    void unsetHref();

    XmlString xgetHref();

    void xsetHref(XmlString xmlString);
}
