package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface IndividualDataObjectsTimeStampDocument extends XmlObject {
    public static final DocumentFactory<IndividualDataObjectsTimeStampDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<IndividualDataObjectsTimeStampDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "individualdataobjectstimestamp4f09doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    XAdESTimeStampType addNewIndividualDataObjectsTimeStamp();

    XAdESTimeStampType getIndividualDataObjectsTimeStamp();

    void setIndividualDataObjectsTimeStamp(XAdESTimeStampType xAdESTimeStampType);
}
