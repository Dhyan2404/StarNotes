package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface ArrayDocument extends XmlObject {
    public static final DocumentFactory<ArrayDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ArrayDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "arrayaa0adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTArray addNewArray();

    CTArray getArray();

    void setArray(CTArray cTArray);
}
