package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface XAdESTimeStampDocument extends XmlObject {
    public static final DocumentFactory<XAdESTimeStampDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<XAdESTimeStampDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "xadestimestamp5b11doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    XAdESTimeStampType addNewXAdESTimeStamp();

    XAdESTimeStampType getXAdESTimeStamp();

    void setXAdESTimeStamp(XAdESTimeStampType xAdESTimeStampType);
}
