package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface ArchiveTimeStampDocument extends XmlObject {
    public static final DocumentFactory<ArchiveTimeStampDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ArchiveTimeStampDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "archivetimestamp9318doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    XAdESTimeStampType addNewArchiveTimeStamp();

    XAdESTimeStampType getArchiveTimeStamp();

    void setArchiveTimeStamp(XAdESTimeStampType xAdESTimeStampType);
}
