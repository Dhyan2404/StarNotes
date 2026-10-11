package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBubbleScale extends XmlObject {
    public static final DocumentFactory<CTBubbleScale> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBubbleScale> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbubblescalee508type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    boolean isSetVal();

    void setVal(Object obj);

    void unsetVal();

    STBubbleScale xgetVal();

    void xsetVal(STBubbleScale sTBubbleScale);
}
