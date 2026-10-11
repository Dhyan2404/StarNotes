package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlByte;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface I1Document extends XmlObject {
    public static final DocumentFactory<I1Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<I1Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "i18109doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte getI1();

    void setI1(byte b);

    XmlByte xgetI1();

    void xsetI1(XmlByte xmlByte);
}
