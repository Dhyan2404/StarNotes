package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface RefsOnlyTimeStampDocument extends XmlObject {
    public static final DocumentFactory<RefsOnlyTimeStampDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RefsOnlyTimeStampDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "refsonlytimestampddfcdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    XAdESTimeStampType addNewRefsOnlyTimeStamp();

    XAdESTimeStampType getRefsOnlyTimeStamp();

    void setRefsOnlyTimeStamp(XAdESTimeStampType xAdESTimeStampType);
}
