package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface Ui2Document extends XmlObject {
    public static final DocumentFactory<Ui2Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<Ui2Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ui24da5doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getUi2();

    void setUi2(int i);

    XmlUnsignedShort xgetUi2();

    void xsetUi2(XmlUnsignedShort xmlUnsignedShort);
}
