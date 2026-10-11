package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.chart.STCrossBetween;

/* loaded from: classes14.dex */
public interface CTCrossBetween extends XmlObject {
    public static final DocumentFactory<CTCrossBetween> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCrossBetween> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcrossbetweeneb14type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STCrossBetween.Enum getVal();

    void setVal(STCrossBetween.Enum r1);

    STCrossBetween xgetVal();

    void xsetVal(STCrossBetween sTCrossBetween);
}
