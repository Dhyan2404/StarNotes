package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface IncludeDocument extends XmlObject {
    public static final DocumentFactory<IncludeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<IncludeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "include7f9adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    IncludeType addNewInclude();

    IncludeType getInclude();

    void setInclude(IncludeType includeType);
}
