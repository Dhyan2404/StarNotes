package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTChartFormat extends XmlObject {
    public static final DocumentFactory<CTChartFormat> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTChartFormat> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctchartformat0e14type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPivotArea addNewPivotArea();

    long getChart();

    long getFormat();

    CTPivotArea getPivotArea();

    boolean getSeries();

    boolean isSetSeries();

    void setChart(long j);

    void setFormat(long j);

    void setPivotArea(CTPivotArea cTPivotArea);

    void setSeries(boolean z);

    void unsetSeries();

    XmlUnsignedInt xgetChart();

    XmlUnsignedInt xgetFormat();

    XmlBoolean xgetSeries();

    void xsetChart(XmlUnsignedInt xmlUnsignedInt);

    void xsetFormat(XmlUnsignedInt xmlUnsignedInt);

    void xsetSeries(XmlBoolean xmlBoolean);
}
