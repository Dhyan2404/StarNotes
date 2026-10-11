package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ImageDocument extends XmlObject {
    public static final DocumentFactory<ImageDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ImageDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "imagec71bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTImage addNewImage();

    CTImage getImage();

    void setImage(CTImage cTImage);
}
