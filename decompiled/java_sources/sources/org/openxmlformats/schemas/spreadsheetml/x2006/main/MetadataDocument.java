package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface MetadataDocument extends XmlObject {
    public static final DocumentFactory<MetadataDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MetadataDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "metadatad98cdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMetadata addNewMetadata();

    CTMetadata getMetadata();

    void setMetadata(CTMetadata cTMetadata);
}
