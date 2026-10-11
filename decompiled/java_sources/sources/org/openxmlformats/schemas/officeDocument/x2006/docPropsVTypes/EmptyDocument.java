package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface EmptyDocument extends XmlObject {
    public static final DocumentFactory<EmptyDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<EmptyDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "emptyef96doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEmpty addNewEmpty();

    CTEmpty getEmpty();

    void setEmpty(CTEmpty cTEmpty);
}
