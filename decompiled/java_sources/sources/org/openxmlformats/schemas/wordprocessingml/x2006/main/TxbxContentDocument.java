package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface TxbxContentDocument extends XmlObject {
    public static final DocumentFactory<TxbxContentDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TxbxContentDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "txbxcontentea87doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTxbxContent addNewTxbxContent();

    CTTxbxContent getTxbxContent();

    void setTxbxContent(CTTxbxContent cTTxbxContent);
}
