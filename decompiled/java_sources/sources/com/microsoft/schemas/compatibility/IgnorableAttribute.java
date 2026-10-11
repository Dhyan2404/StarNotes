package com.microsoft.schemas.compatibility;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes5.dex */
public interface IgnorableAttribute extends XmlObject {
    public static final DocumentFactory<IgnorableAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<IgnorableAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ignorable240eattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getIgnorable();

    boolean isSetIgnorable();

    void setIgnorable(String str);

    void unsetIgnorable();

    XmlString xgetIgnorable();

    void xsetIgnorable(XmlString xmlString);
}
