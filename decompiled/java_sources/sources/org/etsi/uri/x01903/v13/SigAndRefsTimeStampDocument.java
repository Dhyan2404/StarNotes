package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SigAndRefsTimeStampDocument extends XmlObject {
    public static final DocumentFactory<SigAndRefsTimeStampDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SigAndRefsTimeStampDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "sigandrefstimestamp7762doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    XAdESTimeStampType addNewSigAndRefsTimeStamp();

    XAdESTimeStampType getSigAndRefsTimeStamp();

    void setSigAndRefsTimeStamp(XAdESTimeStampType xAdESTimeStampType);
}
