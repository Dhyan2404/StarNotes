package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTEntry extends XmlObject {
    public static final DocumentFactory<CTEntry> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEntry> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctentry612btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getNew();

    int getOld();

    boolean isSetNew();

    boolean isSetOld();

    void setNew(int i);

    void setOld(int i);

    void unsetNew();

    void unsetOld();

    XmlInt xgetNew();

    XmlInt xgetOld();

    void xsetNew(XmlInt xmlInt);

    void xsetOld(XmlInt xmlInt);
}
