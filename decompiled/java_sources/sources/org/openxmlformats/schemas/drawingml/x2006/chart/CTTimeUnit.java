package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.chart.STTimeUnit;

/* loaded from: classes14.dex */
public interface CTTimeUnit extends XmlObject {
    public static final DocumentFactory<CTTimeUnit> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTimeUnit> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttimeunit942btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTimeUnit.Enum getVal();

    boolean isSetVal();

    void setVal(STTimeUnit.Enum r1);

    void unsetVal();

    STTimeUnit xgetVal();

    void xsetVal(STTimeUnit sTTimeUnit);
}
