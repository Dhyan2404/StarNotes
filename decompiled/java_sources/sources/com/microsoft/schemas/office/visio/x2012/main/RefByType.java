package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface RefByType extends XmlObject {
    public static final DocumentFactory<RefByType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RefByType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "refbytype1521type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getID();

    String getT();

    void setID(long j);

    void setT(String str);

    XmlUnsignedInt xgetID();

    XmlString xgetT();

    void xsetID(XmlUnsignedInt xmlUnsignedInt);

    void xsetT(XmlString xmlString);
}
