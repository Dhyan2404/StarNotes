package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface NullDocument extends XmlObject {
    public static final DocumentFactory<NullDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<NullDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "null0e0adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNull addNewNull();

    CTNull getNull();

    void setNull(CTNull cTNull);
}
