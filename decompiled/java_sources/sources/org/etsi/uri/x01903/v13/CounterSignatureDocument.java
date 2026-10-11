package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface CounterSignatureDocument extends XmlObject {
    public static final DocumentFactory<CounterSignatureDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CounterSignatureDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "countersignaturecce0doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CounterSignatureType addNewCounterSignature();

    CounterSignatureType getCounterSignature();

    void setCounterSignature(CounterSignatureType counterSignatureType);
}
