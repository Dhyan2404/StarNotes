package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface AllDataObjectsTimeStampDocument extends XmlObject {
    public static final DocumentFactory<AllDataObjectsTimeStampDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AllDataObjectsTimeStampDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "alldataobjectstimestamp10ffdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    XAdESTimeStampType addNewAllDataObjectsTimeStamp();

    XAdESTimeStampType getAllDataObjectsTimeStamp();

    void setAllDataObjectsTimeStamp(XAdESTimeStampType xAdESTimeStampType);
}
