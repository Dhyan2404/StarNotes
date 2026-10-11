package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface Opacity2Attribute extends XmlObject {
    public static final DocumentFactory<Opacity2Attribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<Opacity2Attribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "opacity27470attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getOpacity2();

    boolean isSetOpacity2();

    void setOpacity2(String str);

    void unsetOpacity2();

    XmlString xgetOpacity2();

    void xsetOpacity2(XmlString xmlString);
}
