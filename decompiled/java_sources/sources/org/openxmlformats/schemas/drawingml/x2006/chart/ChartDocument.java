package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface ChartDocument extends XmlObject {
    public static final DocumentFactory<ChartDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ChartDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "chartf85cdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRelId addNewChart();

    CTRelId getChart();

    void setChart(CTRelId cTRelId);
}
