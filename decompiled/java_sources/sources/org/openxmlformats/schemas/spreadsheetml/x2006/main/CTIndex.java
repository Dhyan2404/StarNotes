package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTIndex extends XmlObject {
    public static final DocumentFactory<CTIndex> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTIndex> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctindex5371type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getV();

    void setV(long j);

    XmlUnsignedInt xgetV();

    void xsetV(XmlUnsignedInt xmlUnsignedInt);
}
