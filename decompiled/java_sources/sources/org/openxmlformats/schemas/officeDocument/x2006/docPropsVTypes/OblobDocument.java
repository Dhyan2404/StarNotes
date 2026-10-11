package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface OblobDocument extends XmlObject {
    public static final DocumentFactory<OblobDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OblobDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "oblobbbb7doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getOblob();

    void setOblob(byte[] bArr);

    XmlBase64Binary xgetOblob();

    void xsetOblob(XmlBase64Binary xmlBase64Binary);
}
