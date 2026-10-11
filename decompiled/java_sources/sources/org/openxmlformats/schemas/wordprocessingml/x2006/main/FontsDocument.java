package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface FontsDocument extends XmlObject {
    public static final DocumentFactory<FontsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FontsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "fonts7aa2doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFontsList addNewFonts();

    CTFontsList getFonts();

    void setFonts(CTFontsList cTFontsList);
}
