package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface OleidAttribute extends XmlObject {
    public static final DocumentFactory<OleidAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OleidAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "oleide7b6attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    float getOleid();

    boolean isSetOleid();

    void setOleid(float f);

    void unsetOleid();

    XmlFloat xgetOleid();

    void xsetOleid(XmlFloat xmlFloat);
}
