package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface WrapcoordsAttribute extends XmlObject {
    public static final DocumentFactory<WrapcoordsAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<WrapcoordsAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "wrapcoords6c11attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getWrapcoords();

    boolean isSetWrapcoords();

    void setWrapcoords(String str);

    void unsetWrapcoords();

    XmlString xgetWrapcoords();

    void xsetWrapcoords(XmlString xmlString);
}
