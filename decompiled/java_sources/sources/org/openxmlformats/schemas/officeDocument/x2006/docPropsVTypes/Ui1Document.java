package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface Ui1Document extends XmlObject {
    public static final DocumentFactory<Ui1Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<Ui1Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ui1ed06doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    short getUi1();

    void setUi1(short s);

    XmlUnsignedByte xgetUi1();

    void xsetUi1(XmlUnsignedByte xmlUnsignedByte);
}
