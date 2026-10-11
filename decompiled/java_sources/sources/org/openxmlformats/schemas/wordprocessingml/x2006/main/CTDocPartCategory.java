package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDocPartCategory extends XmlObject {
    public static final DocumentFactory<CTDocPartCategory> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocPartCategory> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocpartcategory38c9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDocPartGallery addNewGallery();

    CTString addNewName();

    CTDocPartGallery getGallery();

    CTString getName();

    void setGallery(CTDocPartGallery cTDocPartGallery);

    void setName(CTString cTString);
}
