package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface AlthrefAttribute extends XmlObject {
    public static final DocumentFactory<AlthrefAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AlthrefAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "althref5487attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getAlthref();

    boolean isSetAlthref();

    void setAlthref(String str);

    void unsetAlthref();

    XmlString xgetAlthref();

    void xsetAlthref(XmlString xmlString);
}
