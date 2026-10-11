package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface StorageDocument extends XmlObject {
    public static final DocumentFactory<StorageDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<StorageDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "storage44e8doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getStorage();

    void setStorage(byte[] bArr);

    XmlBase64Binary xgetStorage();

    void xsetStorage(XmlBase64Binary xmlBase64Binary);
}
