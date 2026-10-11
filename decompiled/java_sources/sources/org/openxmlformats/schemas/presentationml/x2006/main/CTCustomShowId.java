package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTCustomShowId extends XmlObject {
    public static final DocumentFactory<CTCustomShowId> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCustomShowId> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcustomshowide4bctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getId();

    void setId(long j);

    XmlUnsignedInt xgetId();

    void xsetId(XmlUnsignedInt xmlUnsignedInt);
}
