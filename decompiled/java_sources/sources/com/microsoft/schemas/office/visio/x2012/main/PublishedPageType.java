package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface PublishedPageType extends XmlObject {
    public static final DocumentFactory<PublishedPageType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PublishedPageType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "publishedpagetypef22etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getID();

    void setID(long j);

    XmlUnsignedInt xgetID();

    void xsetID(XmlUnsignedInt xmlUnsignedInt);
}
