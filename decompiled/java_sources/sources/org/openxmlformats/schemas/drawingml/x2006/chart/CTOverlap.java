package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTOverlap extends XmlObject {
    public static final DocumentFactory<CTOverlap> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOverlap> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctoverlapfd3ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    boolean isSetVal();

    void setVal(Object obj);

    void unsetVal();

    STOverlap xgetVal();

    void xsetVal(STOverlap sTOverlap);
}
