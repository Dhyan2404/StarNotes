package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface FooterMarginType extends XmlDouble {
    public static final DocumentFactory<FooterMarginType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FooterMarginType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "footermargintypead70type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getUnit();

    boolean isSetUnit();

    void setUnit(String str);

    void unsetUnit();

    XmlString xgetUnit();

    void xsetUnit(XmlString xmlString);
}
