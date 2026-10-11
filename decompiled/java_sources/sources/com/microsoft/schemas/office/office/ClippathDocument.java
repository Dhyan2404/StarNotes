package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ClippathDocument extends XmlObject {
    public static final DocumentFactory<ClippathDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ClippathDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "clippath2eacdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTClipPath addNewClippath();

    CTClipPath getClippath();

    void setClippath(CTClipPath cTClipPath);
}
