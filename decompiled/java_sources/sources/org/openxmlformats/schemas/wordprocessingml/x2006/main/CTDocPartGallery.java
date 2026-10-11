package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocPartGallery;

/* loaded from: classes16.dex */
public interface CTDocPartGallery extends XmlObject {
    public static final DocumentFactory<CTDocPartGallery> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocPartGallery> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocpartgallery5181type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STDocPartGallery.Enum getVal();

    void setVal(STDocPartGallery.Enum r1);

    STDocPartGallery xgetVal();

    void xsetVal(STDocPartGallery sTDocPartGallery);
}
