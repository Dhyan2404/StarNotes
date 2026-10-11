package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFontFamily;

/* loaded from: classes16.dex */
public interface CTFontFamily extends XmlObject {
    public static final DocumentFactory<CTFontFamily> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFontFamily> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfontfamilyb975type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STFontFamily.Enum getVal();

    void setVal(STFontFamily.Enum r1);

    STFontFamily xgetVal();

    void xsetVal(STFontFamily sTFontFamily);
}
