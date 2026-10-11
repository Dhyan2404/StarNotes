package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CpType extends XmlObject {
    public static final DocumentFactory<CpType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CpType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cptypee58ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getIX();

    void setIX(long j);

    XmlUnsignedInt xgetIX();

    void xsetIX(XmlUnsignedInt xmlUnsignedInt);
}
