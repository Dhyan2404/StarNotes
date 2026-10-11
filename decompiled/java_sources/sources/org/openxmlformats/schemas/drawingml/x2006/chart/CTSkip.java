package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSkip extends XmlObject {
    public static final DocumentFactory<CTSkip> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSkip> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctskip0e5dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getVal();

    void setVal(long j);

    STSkip xgetVal();

    void xsetVal(STSkip sTSkip);
}
