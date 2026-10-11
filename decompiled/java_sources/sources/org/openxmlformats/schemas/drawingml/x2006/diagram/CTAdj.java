package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAdj extends XmlObject {
    public static final DocumentFactory<CTAdj> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAdj> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctadj1414type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getIdx();

    double getVal();

    void setIdx(long j);

    void setVal(double d);

    STIndex1 xgetIdx();

    XmlDouble xgetVal();

    void xsetIdx(STIndex1 sTIndex1);

    void xsetVal(XmlDouble xmlDouble);
}
