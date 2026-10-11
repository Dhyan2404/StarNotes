package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface I8Document extends XmlObject {
    public static final DocumentFactory<I8Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<I8Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "i82562doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getI8();

    void setI8(long j);

    XmlLong xgetI8();

    void xsetI8(XmlLong xmlLong);
}
