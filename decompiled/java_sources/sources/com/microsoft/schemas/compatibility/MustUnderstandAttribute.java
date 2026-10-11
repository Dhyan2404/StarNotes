package com.microsoft.schemas.compatibility;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes5.dex */
public interface MustUnderstandAttribute extends XmlObject {
    public static final DocumentFactory<MustUnderstandAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MustUnderstandAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "mustunderstandff1eattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getMustUnderstand();

    boolean isSetMustUnderstand();

    void setMustUnderstand(String str);

    void unsetMustUnderstand();

    XmlString xgetMustUnderstand();

    void xsetMustUnderstand(XmlString xmlString);
}
