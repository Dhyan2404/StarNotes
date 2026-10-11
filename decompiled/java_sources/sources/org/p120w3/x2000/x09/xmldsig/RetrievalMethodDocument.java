package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface RetrievalMethodDocument extends XmlObject {
    public static final DocumentFactory<RetrievalMethodDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RetrievalMethodDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "retrievalmethod2e0cdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    RetrievalMethodType addNewRetrievalMethod();

    RetrievalMethodType getRetrievalMethod();

    void setRetrievalMethod(RetrievalMethodType retrievalMethodType);
}
