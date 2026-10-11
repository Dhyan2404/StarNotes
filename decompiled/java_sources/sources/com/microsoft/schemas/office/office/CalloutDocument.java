package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CalloutDocument extends XmlObject {
    public static final DocumentFactory<CalloutDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CalloutDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "callout1055doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCallout addNewCallout();

    CTCallout getCallout();

    void setCallout(CTCallout cTCallout);
}
