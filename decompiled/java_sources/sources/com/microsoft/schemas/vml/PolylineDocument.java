package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface PolylineDocument extends XmlObject {
    public static final DocumentFactory<PolylineDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PolylineDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "polylinee992doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPolyLine addNewPolyline();

    CTPolyLine getPolyline();

    void setPolyline(CTPolyLine cTPolyLine);
}
