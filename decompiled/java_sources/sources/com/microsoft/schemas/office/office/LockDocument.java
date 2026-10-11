package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface LockDocument extends XmlObject {
    public static final DocumentFactory<LockDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LockDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "lockcae2doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTLock addNewLock();

    CTLock getLock();

    void setLock(CTLock cTLock);
}
