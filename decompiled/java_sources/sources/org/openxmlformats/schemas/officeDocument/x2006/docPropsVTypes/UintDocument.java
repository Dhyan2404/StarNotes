package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface UintDocument extends XmlObject {
    public static final DocumentFactory<UintDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<UintDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "uint5017doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getUint();

    void setUint(long j);

    XmlUnsignedInt xgetUint();

    void xsetUint(XmlUnsignedInt xmlUnsignedInt);
}
