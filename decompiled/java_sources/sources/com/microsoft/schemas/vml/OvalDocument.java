package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface OvalDocument extends XmlObject {
    public static final DocumentFactory<OvalDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OvalDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "oval1d24doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOval addNewOval();

    CTOval getOval();

    void setOval(CTOval cTOval);
}
