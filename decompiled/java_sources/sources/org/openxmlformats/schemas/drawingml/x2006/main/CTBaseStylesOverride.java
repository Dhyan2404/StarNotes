package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBaseStylesOverride extends XmlObject {
    public static final DocumentFactory<CTBaseStylesOverride> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBaseStylesOverride> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbasestylesoverride711atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColorScheme addNewClrScheme();

    CTStyleMatrix addNewFmtScheme();

    CTFontScheme addNewFontScheme();

    CTColorScheme getClrScheme();

    CTStyleMatrix getFmtScheme();

    CTFontScheme getFontScheme();

    boolean isSetClrScheme();

    boolean isSetFmtScheme();

    boolean isSetFontScheme();

    void setClrScheme(CTColorScheme cTColorScheme);

    void setFmtScheme(CTStyleMatrix cTStyleMatrix);

    void setFontScheme(CTFontScheme cTFontScheme);

    void unsetClrScheme();

    void unsetFmtScheme();

    void unsetFontScheme();
}
