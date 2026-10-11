package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface SpidAttribute extends XmlObject {
    public static final DocumentFactory<SpidAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SpidAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "spideba1attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getSpid();

    boolean isSetSpid();

    void setSpid(String str);

    void unsetSpid();

    XmlString xgetSpid();

    void xsetSpid(XmlString xmlString);
}
