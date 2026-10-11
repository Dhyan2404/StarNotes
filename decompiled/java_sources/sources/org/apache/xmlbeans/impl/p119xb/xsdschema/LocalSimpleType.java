package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface LocalSimpleType extends SimpleType {
    public static final DocumentFactory<LocalSimpleType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LocalSimpleType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "localsimpletype410etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
