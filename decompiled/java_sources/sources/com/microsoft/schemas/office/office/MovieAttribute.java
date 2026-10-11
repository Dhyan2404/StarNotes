package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface MovieAttribute extends XmlObject {
    public static final DocumentFactory<MovieAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MovieAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "movie24a3attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    float getMovie();

    boolean isSetMovie();

    void setMovie(float f);

    void unsetMovie();

    XmlFloat xgetMovie();

    void xsetMovie(XmlFloat xmlFloat);
}
