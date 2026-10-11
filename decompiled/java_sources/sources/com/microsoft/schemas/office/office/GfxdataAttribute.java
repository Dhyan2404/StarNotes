package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface GfxdataAttribute extends XmlObject {
    public static final DocumentFactory<GfxdataAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<GfxdataAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "gfxdata37d6attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getGfxdata();

    boolean isSetGfxdata();

    void setGfxdata(byte[] bArr);

    void unsetGfxdata();

    XmlBase64Binary xgetGfxdata();

    void xsetGfxdata(XmlBase64Binary xmlBase64Binary);
}
