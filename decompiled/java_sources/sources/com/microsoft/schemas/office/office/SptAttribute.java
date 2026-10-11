package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface SptAttribute extends XmlObject {
    public static final DocumentFactory<SptAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SptAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "sptb96aattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    float getSpt();

    boolean isSetSpt();

    void setSpt(float f);

    void unsetSpt();

    XmlFloat xgetSpt();

    void xsetSpt(XmlFloat xmlFloat);
}
