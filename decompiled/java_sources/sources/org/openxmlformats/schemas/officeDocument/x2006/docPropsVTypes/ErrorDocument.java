package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface ErrorDocument extends XmlObject {
    public static final DocumentFactory<ErrorDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ErrorDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "errorb7bbdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getError();

    void setError(String str);

    STError xgetError();

    void xsetError(STError sTError);
}
