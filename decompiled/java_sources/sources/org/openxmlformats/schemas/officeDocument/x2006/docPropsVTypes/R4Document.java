package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface R4Document extends XmlObject {
    public static final DocumentFactory<R4Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<R4Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "r4f02fdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    float getR4();

    void setR4(float f);

    XmlFloat xgetR4();

    void xsetR4(XmlFloat xmlFloat);
}
