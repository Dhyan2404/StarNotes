package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface I4Document extends XmlObject {
    public static final DocumentFactory<I4Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<I4Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "i4a2e6doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getI4();

    void setI4(int i);

    XmlInt xgetI4();

    void xsetI4(XmlInt xmlInt);
}
