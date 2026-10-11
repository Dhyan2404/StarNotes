package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ImagedataDocument extends XmlObject {
    public static final DocumentFactory<ImagedataDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ImagedataDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "imagedata2045doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTImageData addNewImagedata();

    CTImageData getImagedata();

    void setImagedata(CTImageData cTImageData);
}
