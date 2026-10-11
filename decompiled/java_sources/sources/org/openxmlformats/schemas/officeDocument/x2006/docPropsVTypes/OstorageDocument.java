package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface OstorageDocument extends XmlObject {
    public static final DocumentFactory<OstorageDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OstorageDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ostoraged805doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getOstorage();

    void setOstorage(byte[] bArr);

    XmlBase64Binary xgetOstorage();

    void xsetOstorage(XmlBase64Binary xmlBase64Binary);
}
