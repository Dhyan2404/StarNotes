package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface StylesDocument extends XmlObject {
    public static final DocumentFactory<StylesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<StylesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "styles2732doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStyles addNewStyles();

    CTStyles getStyles();

    void setStyles(CTStyles cTStyles);
}
