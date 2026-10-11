package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTStyle extends XmlObject {
    public static final DocumentFactory<CTStyle> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStyle> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstyle29d5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    short getVal();

    void setVal(short s);

    STStyle xgetVal();

    void xsetVal(STStyle sTStyle);
}
