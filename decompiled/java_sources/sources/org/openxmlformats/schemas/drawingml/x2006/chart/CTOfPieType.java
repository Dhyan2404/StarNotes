package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.chart.STOfPieType;

/* loaded from: classes14.dex */
public interface CTOfPieType extends XmlObject {
    public static final DocumentFactory<CTOfPieType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOfPieType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctofpietype5237type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STOfPieType.Enum getVal();

    boolean isSetVal();

    void setVal(STOfPieType.Enum r1);

    void unsetVal();

    STOfPieType xgetVal();

    void xsetVal(STOfPieType sTOfPieType);
}
