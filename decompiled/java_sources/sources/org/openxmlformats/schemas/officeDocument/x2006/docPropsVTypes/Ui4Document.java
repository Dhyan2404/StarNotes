package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface Ui4Document extends XmlObject {
    public static final DocumentFactory<Ui4Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<Ui4Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ui40ee3doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getUi4();

    void setUi4(long j);

    XmlUnsignedInt xgetUi4();

    void xsetUi4(XmlUnsignedInt xmlUnsignedInt);
}
