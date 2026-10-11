package org.openxmlformats.schemas.officeDocument.x2006.bibliography;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface SourcesDocument extends XmlObject {
    public static final DocumentFactory<SourcesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SourcesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "sources5a72doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSources addNewSources();

    CTSources getSources();

    void setSources(CTSources cTSources);
}
