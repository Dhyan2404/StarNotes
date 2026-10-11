package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTReviewed extends XmlObject {
    public static final DocumentFactory<CTReviewed> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTReviewed> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctreviewedfa00type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getRId();

    void setRId(long j);

    XmlUnsignedInt xgetRId();

    void xsetRId(XmlUnsignedInt xmlUnsignedInt);
}
