package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface ReferenceInfoDocument extends XmlObject {
    public static final DocumentFactory<ReferenceInfoDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ReferenceInfoDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "referenceinfoe80bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    ReferenceInfoType addNewReferenceInfo();

    ReferenceInfoType getReferenceInfo();

    void setReferenceInfo(ReferenceInfoType referenceInfoType);
}
