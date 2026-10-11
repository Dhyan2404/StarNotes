package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ArcDocument extends XmlObject {
    public static final DocumentFactory<ArcDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ArcDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "arcdb92doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTArc addNewArc();

    CTArc getArc();

    void setArc(CTArc cTArc);
}
