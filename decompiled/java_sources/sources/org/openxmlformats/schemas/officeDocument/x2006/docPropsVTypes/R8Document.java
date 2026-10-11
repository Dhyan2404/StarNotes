package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface R8Document extends XmlObject {
    public static final DocumentFactory<R8Document> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<R8Document> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "r872abdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    double getR8();

    void setR8(double d);

    XmlDouble xgetR8();

    void xsetR8(XmlDouble xmlDouble);
}
