package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface OstreamDocument extends XmlObject {
    public static final DocumentFactory<OstreamDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OstreamDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ostreame734doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getOstream();

    void setOstream(byte[] bArr);

    XmlBase64Binary xgetOstream();

    void xsetOstream(XmlBase64Binary xmlBase64Binary);
}
