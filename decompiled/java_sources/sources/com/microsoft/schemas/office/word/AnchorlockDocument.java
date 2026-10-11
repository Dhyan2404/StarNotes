package com.microsoft.schemas.office.word;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface AnchorlockDocument extends XmlObject {
    public static final DocumentFactory<AnchorlockDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AnchorlockDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "anchorlock2665doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAnchorLock addNewAnchorlock();

    CTAnchorLock getAnchorlock();

    void setAnchorlock(CTAnchorLock cTAnchorLock);
}
