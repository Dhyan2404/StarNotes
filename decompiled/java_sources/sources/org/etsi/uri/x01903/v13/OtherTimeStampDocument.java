package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface OtherTimeStampDocument extends XmlObject {
    public static final DocumentFactory<OtherTimeStampDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OtherTimeStampDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "othertimestamp924adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    OtherTimeStampType addNewOtherTimeStamp();

    OtherTimeStampType getOtherTimeStamp();

    void setOtherTimeStamp(OtherTimeStampType otherTimeStampType);
}
