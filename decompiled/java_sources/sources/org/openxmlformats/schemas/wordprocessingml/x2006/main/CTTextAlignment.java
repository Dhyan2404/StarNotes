package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTextAlignment;

/* loaded from: classes16.dex */
public interface CTTextAlignment extends XmlObject {
    public static final DocumentFactory<CTTextAlignment> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTextAlignment> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttextalignment495ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTextAlignment.Enum getVal();

    void setVal(STTextAlignment.Enum r1);

    STTextAlignment xgetVal();

    void xsetVal(STTextAlignment sTTextAlignment);
}
