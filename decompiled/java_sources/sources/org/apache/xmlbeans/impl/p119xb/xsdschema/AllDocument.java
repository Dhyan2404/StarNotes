package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface AllDocument extends XmlObject {
    public static final DocumentFactory<AllDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AllDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "all7214doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    All addNewAll();

    All getAll();

    void setAll(All all);
}
