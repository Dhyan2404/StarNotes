package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FldType extends XmlString {
    public static final DocumentFactory<FldType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FldType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "fldtypec9adtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getIX();

    void setIX(long j);

    XmlUnsignedInt xgetIX();

    void xsetIX(XmlUnsignedInt xmlUnsignedInt);
}
