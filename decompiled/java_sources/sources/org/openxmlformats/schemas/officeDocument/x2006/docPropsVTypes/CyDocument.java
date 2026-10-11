package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CyDocument extends XmlObject {
    public static final DocumentFactory<CyDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CyDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cy7a3bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCy();

    void setCy(String str);

    STCy xgetCy();

    void xsetCy(STCy sTCy);
}
