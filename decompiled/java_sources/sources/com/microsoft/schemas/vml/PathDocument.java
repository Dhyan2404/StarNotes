package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface PathDocument extends XmlObject {
    public static final DocumentFactory<PathDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PathDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "path11b7doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPath addNewPath();

    CTPath getPath();

    void setPath(CTPath cTPath);
}
