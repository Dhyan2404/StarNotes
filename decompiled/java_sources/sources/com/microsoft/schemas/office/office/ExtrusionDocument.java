package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ExtrusionDocument extends XmlObject {
    public static final DocumentFactory<ExtrusionDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ExtrusionDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "extrusion863edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtrusion addNewExtrusion();

    CTExtrusion getExtrusion();

    void setExtrusion(CTExtrusion cTExtrusion);
}
