package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface PpType extends XmlObject {
    public static final DocumentFactory<PpType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PpType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "pptype4b59type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getIX();

    void setIX(long j);

    XmlUnsignedInt xgetIX();

    void xsetIX(XmlUnsignedInt xmlUnsignedInt);
}
