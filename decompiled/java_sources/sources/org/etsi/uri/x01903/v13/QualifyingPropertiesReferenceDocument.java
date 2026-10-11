package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface QualifyingPropertiesReferenceDocument extends XmlObject {
    public static final DocumentFactory<QualifyingPropertiesReferenceDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<QualifyingPropertiesReferenceDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "qualifyingpropertiesreferencee095doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    QualifyingPropertiesReferenceType addNewQualifyingPropertiesReference();

    QualifyingPropertiesReferenceType getQualifyingPropertiesReference();

    void setQualifyingPropertiesReference(QualifyingPropertiesReferenceType qualifyingPropertiesReferenceType);
}
