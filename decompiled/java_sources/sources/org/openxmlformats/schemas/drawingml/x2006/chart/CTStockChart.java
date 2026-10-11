package org.openxmlformats.schemas.drawingml.x2006.chart;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTStockChart extends XmlObject {
    public static final DocumentFactory<CTStockChart> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStockChart> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstockchartfb14type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTUnsignedInt addNewAxId();

    CTDLbls addNewDLbls();

    CTChartLines addNewDropLines();

    CTExtensionList addNewExtLst();

    CTChartLines addNewHiLowLines();

    CTLineSer addNewSer();

    CTUpDownBars addNewUpDownBars();

    CTUnsignedInt getAxIdArray(int i);

    CTUnsignedInt[] getAxIdArray();

    List<CTUnsignedInt> getAxIdList();

    CTDLbls getDLbls();

    CTChartLines getDropLines();

    CTExtensionList getExtLst();

    CTChartLines getHiLowLines();

    CTLineSer getSerArray(int i);

    CTLineSer[] getSerArray();

    List<CTLineSer> getSerList();

    CTUpDownBars getUpDownBars();

    CTUnsignedInt insertNewAxId(int i);

    CTLineSer insertNewSer(int i);

    boolean isSetDLbls();

    boolean isSetDropLines();

    boolean isSetExtLst();

    boolean isSetHiLowLines();

    boolean isSetUpDownBars();

    void removeAxId(int i);

    void removeSer(int i);

    void setAxIdArray(int i, CTUnsignedInt cTUnsignedInt);

    void setAxIdArray(CTUnsignedInt[] cTUnsignedIntArr);

    void setDLbls(CTDLbls cTDLbls);

    void setDropLines(CTChartLines cTChartLines);

    void setExtLst(CTExtensionList cTExtensionList);

    void setHiLowLines(CTChartLines cTChartLines);

    void setSerArray(int i, CTLineSer cTLineSer);

    void setSerArray(CTLineSer[] cTLineSerArr);

    void setUpDownBars(CTUpDownBars cTUpDownBars);

    int sizeOfAxIdArray();

    int sizeOfSerArray();

    void unsetDLbls();

    void unsetDropLines();

    void unsetExtLst();

    void unsetHiLowLines();

    void unsetUpDownBars();
}
