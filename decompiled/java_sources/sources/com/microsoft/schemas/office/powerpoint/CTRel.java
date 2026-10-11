package com.microsoft.schemas.office.powerpoint;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTRel extends XmlObject {
    public static final DocumentFactory<CTRel> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRel> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrelef01type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    boolean isSetId();

    void setId(String str);

    void unsetId();

    XmlString xgetId();

    void xsetId(XmlString xmlString);
}
