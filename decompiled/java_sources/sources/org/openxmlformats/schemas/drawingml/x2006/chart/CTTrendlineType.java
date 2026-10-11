package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.chart.STTrendlineType;

/* loaded from: classes14.dex */
public interface CTTrendlineType extends XmlObject {
    public static final DocumentFactory<CTTrendlineType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTrendlineType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttrendlinetypeeb5btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrendlineType.Enum getVal();

    boolean isSetVal();

    void setVal(STTrendlineType.Enum r1);

    void unsetVal();

    STTrendlineType xgetVal();

    void xsetVal(STTrendlineType sTTrendlineType);
}
