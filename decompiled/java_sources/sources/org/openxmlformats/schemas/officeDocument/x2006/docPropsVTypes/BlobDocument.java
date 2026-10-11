package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface BlobDocument extends XmlObject {
    public static final DocumentFactory<BlobDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<BlobDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "blob31b4doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getBlob();

    void setBlob(byte[] bArr);

    XmlBase64Binary xgetBlob();

    void xsetBlob(XmlBase64Binary xmlBase64Binary);
}
