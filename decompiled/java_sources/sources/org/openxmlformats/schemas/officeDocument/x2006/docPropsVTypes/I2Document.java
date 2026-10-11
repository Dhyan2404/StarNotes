package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlShort;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface I2Document extends XmlObject {
    public static final DocumentFactory<I2Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<I2Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "i2e1a8doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    short getI2();

    void setI2(short s);

    XmlShort xgetI2();

    void xsetI2(XmlShort xmlShort);
}
