package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTClipPath extends XmlObject {
    public static final DocumentFactory<CTClipPath> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTClipPath> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctclippath6d78type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getV();

    void setV(String str);

    XmlString xgetV();

    void xsetV(XmlString xmlString);
}
