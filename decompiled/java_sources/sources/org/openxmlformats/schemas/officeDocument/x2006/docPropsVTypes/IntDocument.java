package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface IntDocument extends XmlObject {
    public static final DocumentFactory<IntDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<IntDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "int3c74doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getInt();

    void setInt(int i);

    XmlInt xgetInt();

    void xsetInt(XmlInt xmlInt);
}
