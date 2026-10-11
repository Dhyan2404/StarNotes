package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMetadataRecord extends XmlObject {
    public static final DocumentFactory<CTMetadataRecord> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMetadataRecord> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmetadatarecord9b69type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getT();

    long getV();

    void setT(long j);

    void setV(long j);

    XmlUnsignedInt xgetT();

    XmlUnsignedInt xgetV();

    void xsetT(XmlUnsignedInt xmlUnsignedInt);

    void xsetV(XmlUnsignedInt xmlUnsignedInt);
}
