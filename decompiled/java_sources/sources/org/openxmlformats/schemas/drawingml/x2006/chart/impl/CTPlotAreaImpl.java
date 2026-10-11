package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import com.sunia.HTREnginev2.gon;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTArea3DChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAreaChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBar3DChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBarChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTCatAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDTable;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDateAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDoughnutChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLayout;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLineChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPie3DChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPieChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTRadarChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTScatterChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStockChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSurfaceChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTValAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTPlotAreaImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;

/* loaded from: classes14.dex */
public class CTPlotAreaImpl extends XmlComplexContentImpl implements CTPlotArea {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, gon.f71305w), new QName(XSSFRelation.NS_CHART, "areaChart"), new QName(XSSFRelation.NS_CHART, "area3DChart"), new QName(XSSFRelation.NS_CHART, "lineChart"), new QName(XSSFRelation.NS_CHART, "line3DChart"), new QName(XSSFRelation.NS_CHART, "stockChart"), new QName(XSSFRelation.NS_CHART, "radarChart"), new QName(XSSFRelation.NS_CHART, "scatterChart"), new QName(XSSFRelation.NS_CHART, "pieChart"), new QName(XSSFRelation.NS_CHART, "pie3DChart"), new QName(XSSFRelation.NS_CHART, "doughnutChart"), new QName(XSSFRelation.NS_CHART, "barChart"), new QName(XSSFRelation.NS_CHART, "bar3DChart"), new QName(XSSFRelation.NS_CHART, "ofPieChart"), new QName(XSSFRelation.NS_CHART, "surfaceChart"), new QName(XSSFRelation.NS_CHART, "surface3DChart"), new QName(XSSFRelation.NS_CHART, "bubbleChart"), new QName(XSSFRelation.NS_CHART, "valAx"), new QName(XSSFRelation.NS_CHART, "catAx"), new QName(XSSFRelation.NS_CHART, "dateAx"), new QName(XSSFRelation.NS_CHART, "serAx"), new QName(XSSFRelation.NS_CHART, "dTable"), new QName(XSSFRelation.NS_CHART, "spPr"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTPlotAreaImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTArea3DChart addNewArea3DChart() {
        CTArea3DChart cTArea3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTArea3DChart = (CTArea3DChart) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTArea3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTAreaChart addNewAreaChart() {
        CTAreaChart cTAreaChart;
        synchronized (monitor()) {
            check_orphaned();
            cTAreaChart = (CTAreaChart) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAreaChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBar3DChart addNewBar3DChart() {
        CTBar3DChart cTBar3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTBar3DChart = (CTBar3DChart) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTBar3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBarChart addNewBarChart() {
        CTBarChart cTBarChart;
        synchronized (monitor()) {
            check_orphaned();
            cTBarChart = (CTBarChart) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTBarChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBubbleChart addNewBubbleChart() {
        CTBubbleChart cTBubbleChart;
        synchronized (monitor()) {
            check_orphaned();
            cTBubbleChart = (CTBubbleChart) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTBubbleChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTCatAx addNewCatAx() {
        CTCatAx cTCatAx;
        synchronized (monitor()) {
            check_orphaned();
            cTCatAx = (CTCatAx) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTCatAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTDTable addNewDTable() {
        CTDTable cTDTable;
        synchronized (monitor()) {
            check_orphaned();
            cTDTable = (CTDTable) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTDTable;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTDateAx addNewDateAx() {
        CTDateAx cTDateAx;
        synchronized (monitor()) {
            check_orphaned();
            cTDateAx = (CTDateAx) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTDateAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTDoughnutChart addNewDoughnutChart() {
        CTDoughnutChart cTDoughnutChart;
        synchronized (monitor()) {
            check_orphaned();
            cTDoughnutChart = (CTDoughnutChart) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTDoughnutChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTLayout addNewLayout() {
        CTLayout cTLayout;
        synchronized (monitor()) {
            check_orphaned();
            cTLayout = (CTLayout) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTLayout;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTLine3DChart addNewLine3DChart() {
        CTLine3DChart cTLine3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTLine3DChart = (CTLine3DChart) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTLine3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTLineChart addNewLineChart() {
        CTLineChart cTLineChart;
        synchronized (monitor()) {
            check_orphaned();
            cTLineChart = (CTLineChart) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTLineChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTOfPieChart addNewOfPieChart() {
        CTOfPieChart cTOfPieChart;
        synchronized (monitor()) {
            check_orphaned();
            cTOfPieChart = (CTOfPieChart) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTOfPieChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTPie3DChart addNewPie3DChart() {
        CTPie3DChart cTPie3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTPie3DChart = (CTPie3DChart) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTPie3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTPieChart addNewPieChart() {
        CTPieChart cTPieChart;
        synchronized (monitor()) {
            check_orphaned();
            cTPieChart = (CTPieChart) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTPieChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTRadarChart addNewRadarChart() {
        CTRadarChart cTRadarChart;
        synchronized (monitor()) {
            check_orphaned();
            cTRadarChart = (CTRadarChart) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTRadarChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTScatterChart addNewScatterChart() {
        CTScatterChart cTScatterChart;
        synchronized (monitor()) {
            check_orphaned();
            cTScatterChart = (CTScatterChart) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTScatterChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSerAx addNewSerAx() {
        CTSerAx cTSerAx;
        synchronized (monitor()) {
            check_orphaned();
            cTSerAx = (CTSerAx) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTSerAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTShapeProperties addNewSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTStockChart addNewStockChart() {
        CTStockChart cTStockChart;
        synchronized (monitor()) {
            check_orphaned();
            cTStockChart = (CTStockChart) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTStockChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSurface3DChart addNewSurface3DChart() {
        CTSurface3DChart cTSurface3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTSurface3DChart = (CTSurface3DChart) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTSurface3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSurfaceChart addNewSurfaceChart() {
        CTSurfaceChart cTSurfaceChart;
        synchronized (monitor()) {
            check_orphaned();
            cTSurfaceChart = (CTSurfaceChart) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTSurfaceChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTValAx addNewValAx() {
        CTValAx cTValAx;
        synchronized (monitor()) {
            check_orphaned();
            cTValAx = (CTValAx) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTValAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTArea3DChart[] getArea3DChartArray() {
        return (CTArea3DChart[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTArea3DChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTArea3DChart> getArea3DChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hc7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getArea3DChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sc7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setArea3DChartArray(((Integer) obj).intValue(), (CTArea3DChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dd7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewArea3DChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.od7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeArea3DChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zd7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfArea3DChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTAreaChart[] getAreaChartArray() {
        return (CTAreaChart[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTAreaChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTAreaChart> getAreaChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tc7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getAreaChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.uc7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setAreaChartArray(((Integer) obj).intValue(), (CTAreaChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vc7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewAreaChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wc7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeAreaChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xc7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfAreaChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBar3DChart[] getBar3DChartArray() {
        return (CTBar3DChart[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTBar3DChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTBar3DChart> getBar3DChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.va7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getBar3DChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wa7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setBar3DChartArray(((Integer) obj).intValue(), (CTBar3DChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xa7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewBar3DChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ya7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeBar3DChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.za7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfBar3DChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBarChart[] getBarChartArray() {
        return (CTBarChart[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTBarChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTBarChart> getBarChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ud7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getBarChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vd7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setBarChartArray(((Integer) obj).intValue(), (CTBarChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wd7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewBarChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xd7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeBarChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yd7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfBarChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBubbleChart[] getBubbleChartArray() {
        return (CTBubbleChart[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTBubbleChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTBubbleChart> getBubbleChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xb7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getBubbleChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yb7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setBubbleChartArray(((Integer) obj).intValue(), (CTBubbleChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zb7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewBubbleChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ac7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeBubbleChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bc7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfBubbleChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTCatAx[] getCatAxArray() {
        return (CTCatAx[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTCatAx[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTCatAx> getCatAxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ka7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getCatAxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.la7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setCatAxArray(((Integer) obj).intValue(), (CTCatAx) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ma7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewCatAx(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.na7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeCatAx(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.oa7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfCatAxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTDTable getDTable() {
        CTDTable cTDTable;
        synchronized (monitor()) {
            check_orphaned();
            cTDTable = (CTDTable) get_store().find_element_user(PROPERTY_QNAME[21], 0);
            if (cTDTable == null) {
                cTDTable = null;
            }
        }
        return cTDTable;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTDateAx[] getDateAxArray() {
        return (CTDateAx[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTDateAx[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTDateAx> getDateAxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yc7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getDateAxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zc7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setDateAxArray(((Integer) obj).intValue(), (CTDateAx) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ad7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewDateAx(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bd7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeDateAx(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cd7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfDateAxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTDoughnutChart[] getDoughnutChartArray() {
        return (CTDoughnutChart[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTDoughnutChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTDoughnutChart> getDoughnutChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rb7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getDoughnutChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sb7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setDoughnutChartArray(((Integer) obj).intValue(), (CTDoughnutChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tb7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewDoughnutChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ub7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeDoughnutChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vb7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfDoughnutChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[23], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTLayout getLayout() {
        CTLayout cTLayout;
        synchronized (monitor()) {
            check_orphaned();
            cTLayout = (CTLayout) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTLayout == null) {
                cTLayout = null;
            }
        }
        return cTLayout;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTLine3DChart[] getLine3DChartArray() {
        return (CTLine3DChart[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTLine3DChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTLine3DChart> getLine3DChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qa7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getLine3DChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ra7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setLine3DChartArray(((Integer) obj).intValue(), (CTLine3DChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sa7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewLine3DChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ta7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeLine3DChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ua7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfLine3DChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTLineChart[] getLineChartArray() {
        return (CTLineChart[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTLineChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTLineChart> getLineChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ea7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getLineChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pa7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setLineChartArray(((Integer) obj).intValue(), (CTLineChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ab7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewLineChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lb7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeLineChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wb7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfLineChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTOfPieChart[] getOfPieChartArray() {
        return (CTOfPieChart[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTOfPieChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTOfPieChart> getOfPieChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bb7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getOfPieChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cb7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setOfPieChartArray(((Integer) obj).intValue(), (CTOfPieChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.db7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewOfPieChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.eb7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeOfPieChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fb7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfOfPieChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTPie3DChart[] getPie3DChartArray() {
        return (CTPie3DChart[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTPie3DChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTPie3DChart> getPie3DChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jd7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getPie3DChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kd7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setPie3DChartArray(((Integer) obj).intValue(), (CTPie3DChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ld7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewPie3DChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.md7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removePie3DChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nd7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfPie3DChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTPieChart[] getPieChartArray() {
        return (CTPieChart[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTPieChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTPieChart> getPieChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gb7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getPieChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hb7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setPieChartArray(((Integer) obj).intValue(), (CTPieChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ib7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewPieChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jb7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removePieChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kb7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfPieChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTRadarChart[] getRadarChartArray() {
        return (CTRadarChart[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTRadarChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTRadarChart> getRadarChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mb7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getRadarChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nb7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setRadarChartArray(((Integer) obj).intValue(), (CTRadarChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ob7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewRadarChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pb7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeRadarChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qb7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfRadarChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTScatterChart[] getScatterChartArray() {
        return (CTScatterChart[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTScatterChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTScatterChart> getScatterChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ed7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getScatterChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fd7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setScatterChartArray(((Integer) obj).intValue(), (CTScatterChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gd7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewScatterChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hd7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeScatterChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.id7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfScatterChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSerAx[] getSerAxArray() {
        return (CTSerAx[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTSerAx[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTSerAx> getSerAxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nc7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getSerAxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oc7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setSerAxArray(((Integer) obj).intValue(), (CTSerAx) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pc7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewSerAx(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qc7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeSerAx(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rc7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfSerAxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTShapeProperties getSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().find_element_user(PROPERTY_QNAME[22], 0);
            if (cTShapeProperties == null) {
                cTShapeProperties = null;
            }
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTStockChart[] getStockChartArray() {
        return (CTStockChart[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTStockChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTStockChart> getStockChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cc7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getStockChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dc7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setStockChartArray(((Integer) obj).intValue(), (CTStockChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ec7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewStockChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fc7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeStockChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gc7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfStockChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSurface3DChart[] getSurface3DChartArray() {
        return (CTSurface3DChart[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTSurface3DChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTSurface3DChart> getSurface3DChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ic7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getSurface3DChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jc7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setSurface3DChartArray(((Integer) obj).intValue(), (CTSurface3DChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kc7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewSurface3DChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lc7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeSurface3DChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mc7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfSurface3DChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSurfaceChart[] getSurfaceChartArray() {
        return (CTSurfaceChart[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTSurfaceChart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTSurfaceChart> getSurfaceChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fa7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getSurfaceChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ga7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setSurfaceChartArray(((Integer) obj).intValue(), (CTSurfaceChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ha7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewSurfaceChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ia7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeSurfaceChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ja7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfSurfaceChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTValAx[] getValAxArray() {
        return (CTValAx[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTValAx[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public List<CTValAx> getValAxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pd7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.getValAxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qd7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPlotAreaImpl.this.setValAxArray(((Integer) obj).intValue(), (CTValAx) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rd7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPlotAreaImpl.this.insertNewValAx(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sd7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPlotAreaImpl.this.removeValAx(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.td7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPlotAreaImpl.this.sizeOfValAxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTArea3DChart insertNewArea3DChart(int i) {
        CTArea3DChart cTArea3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTArea3DChart = (CTArea3DChart) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTArea3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTAreaChart insertNewAreaChart(int i) {
        CTAreaChart cTAreaChart;
        synchronized (monitor()) {
            check_orphaned();
            cTAreaChart = (CTAreaChart) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTAreaChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBar3DChart insertNewBar3DChart(int i) {
        CTBar3DChart cTBar3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTBar3DChart = (CTBar3DChart) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTBar3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBarChart insertNewBarChart(int i) {
        CTBarChart cTBarChart;
        synchronized (monitor()) {
            check_orphaned();
            cTBarChart = (CTBarChart) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTBarChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBubbleChart insertNewBubbleChart(int i) {
        CTBubbleChart cTBubbleChart;
        synchronized (monitor()) {
            check_orphaned();
            cTBubbleChart = (CTBubbleChart) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTBubbleChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTCatAx insertNewCatAx(int i) {
        CTCatAx cTCatAx;
        synchronized (monitor()) {
            check_orphaned();
            cTCatAx = (CTCatAx) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTCatAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTDateAx insertNewDateAx(int i) {
        CTDateAx cTDateAx;
        synchronized (monitor()) {
            check_orphaned();
            cTDateAx = (CTDateAx) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return cTDateAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTDoughnutChart insertNewDoughnutChart(int i) {
        CTDoughnutChart cTDoughnutChart;
        synchronized (monitor()) {
            check_orphaned();
            cTDoughnutChart = (CTDoughnutChart) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTDoughnutChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTLine3DChart insertNewLine3DChart(int i) {
        CTLine3DChart cTLine3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTLine3DChart = (CTLine3DChart) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTLine3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTLineChart insertNewLineChart(int i) {
        CTLineChart cTLineChart;
        synchronized (monitor()) {
            check_orphaned();
            cTLineChart = (CTLineChart) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTLineChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTOfPieChart insertNewOfPieChart(int i) {
        CTOfPieChart cTOfPieChart;
        synchronized (monitor()) {
            check_orphaned();
            cTOfPieChart = (CTOfPieChart) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTOfPieChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTPie3DChart insertNewPie3DChart(int i) {
        CTPie3DChart cTPie3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTPie3DChart = (CTPie3DChart) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTPie3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTPieChart insertNewPieChart(int i) {
        CTPieChart cTPieChart;
        synchronized (monitor()) {
            check_orphaned();
            cTPieChart = (CTPieChart) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTPieChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTRadarChart insertNewRadarChart(int i) {
        CTRadarChart cTRadarChart;
        synchronized (monitor()) {
            check_orphaned();
            cTRadarChart = (CTRadarChart) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTRadarChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTScatterChart insertNewScatterChart(int i) {
        CTScatterChart cTScatterChart;
        synchronized (monitor()) {
            check_orphaned();
            cTScatterChart = (CTScatterChart) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTScatterChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSerAx insertNewSerAx(int i) {
        CTSerAx cTSerAx;
        synchronized (monitor()) {
            check_orphaned();
            cTSerAx = (CTSerAx) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return cTSerAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTStockChart insertNewStockChart(int i) {
        CTStockChart cTStockChart;
        synchronized (monitor()) {
            check_orphaned();
            cTStockChart = (CTStockChart) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTStockChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSurface3DChart insertNewSurface3DChart(int i) {
        CTSurface3DChart cTSurface3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTSurface3DChart = (CTSurface3DChart) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTSurface3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSurfaceChart insertNewSurfaceChart(int i) {
        CTSurfaceChart cTSurfaceChart;
        synchronized (monitor()) {
            check_orphaned();
            cTSurfaceChart = (CTSurfaceChart) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTSurfaceChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTValAx insertNewValAx(int i) {
        CTValAx cTValAx;
        synchronized (monitor()) {
            check_orphaned();
            cTValAx = (CTValAx) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTValAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public boolean isSetDTable() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[21]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[23]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public boolean isSetLayout() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public boolean isSetSpPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[22]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeArea3DChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeAreaChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeBar3DChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeBarChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeBubbleChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeCatAx(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeDateAx(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeDoughnutChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeLine3DChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeLineChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeOfPieChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removePie3DChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removePieChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeRadarChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeScatterChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeSerAx(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeStockChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeSurface3DChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeSurfaceChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void removeValAx(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setArea3DChartArray(CTArea3DChart[] cTArea3DChartArr) {
        check_orphaned();
        arraySetterHelper(cTArea3DChartArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setAreaChartArray(CTAreaChart[] cTAreaChartArr) {
        check_orphaned();
        arraySetterHelper(cTAreaChartArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setBar3DChartArray(CTBar3DChart[] cTBar3DChartArr) {
        check_orphaned();
        arraySetterHelper(cTBar3DChartArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setBarChartArray(CTBarChart[] cTBarChartArr) {
        check_orphaned();
        arraySetterHelper(cTBarChartArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setBubbleChartArray(CTBubbleChart[] cTBubbleChartArr) {
        check_orphaned();
        arraySetterHelper(cTBubbleChartArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setCatAxArray(CTCatAx[] cTCatAxArr) {
        check_orphaned();
        arraySetterHelper(cTCatAxArr, PROPERTY_QNAME[18]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setDTable(CTDTable cTDTable) {
        generatedSetterHelperImpl(cTDTable, PROPERTY_QNAME[21], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setDateAxArray(CTDateAx[] cTDateAxArr) {
        check_orphaned();
        arraySetterHelper(cTDateAxArr, PROPERTY_QNAME[19]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setDoughnutChartArray(CTDoughnutChart[] cTDoughnutChartArr) {
        check_orphaned();
        arraySetterHelper(cTDoughnutChartArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[23], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setLayout(CTLayout cTLayout) {
        generatedSetterHelperImpl(cTLayout, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setLine3DChartArray(CTLine3DChart[] cTLine3DChartArr) {
        check_orphaned();
        arraySetterHelper(cTLine3DChartArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setLineChartArray(CTLineChart[] cTLineChartArr) {
        check_orphaned();
        arraySetterHelper(cTLineChartArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setOfPieChartArray(CTOfPieChart[] cTOfPieChartArr) {
        check_orphaned();
        arraySetterHelper(cTOfPieChartArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setPie3DChartArray(CTPie3DChart[] cTPie3DChartArr) {
        check_orphaned();
        arraySetterHelper(cTPie3DChartArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setPieChartArray(CTPieChart[] cTPieChartArr) {
        check_orphaned();
        arraySetterHelper(cTPieChartArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setRadarChartArray(CTRadarChart[] cTRadarChartArr) {
        check_orphaned();
        arraySetterHelper(cTRadarChartArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setScatterChartArray(CTScatterChart[] cTScatterChartArr) {
        check_orphaned();
        arraySetterHelper(cTScatterChartArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setSerAxArray(CTSerAx[] cTSerAxArr) {
        check_orphaned();
        arraySetterHelper(cTSerAxArr, PROPERTY_QNAME[20]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setSpPr(CTShapeProperties cTShapeProperties) {
        generatedSetterHelperImpl(cTShapeProperties, PROPERTY_QNAME[22], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setStockChartArray(CTStockChart[] cTStockChartArr) {
        check_orphaned();
        arraySetterHelper(cTStockChartArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setSurface3DChartArray(CTSurface3DChart[] cTSurface3DChartArr) {
        check_orphaned();
        arraySetterHelper(cTSurface3DChartArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setSurfaceChartArray(CTSurfaceChart[] cTSurfaceChartArr) {
        check_orphaned();
        arraySetterHelper(cTSurfaceChartArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setValAxArray(CTValAx[] cTValAxArr) {
        check_orphaned();
        arraySetterHelper(cTValAxArr, PROPERTY_QNAME[17]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfArea3DChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfAreaChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfBar3DChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfBarChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfBubbleChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfCatAxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfDateAxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfDoughnutChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfLine3DChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfLineChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfOfPieChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfPie3DChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfPieChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfRadarChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfScatterChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfSerAxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfStockChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfSurface3DChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfSurfaceChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public int sizeOfValAxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void unsetDTable() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void unsetLayout() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void unsetSpPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTArea3DChart getArea3DChartArray(int i) {
        CTArea3DChart cTArea3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTArea3DChart = (CTArea3DChart) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTArea3DChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTArea3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTAreaChart getAreaChartArray(int i) {
        CTAreaChart cTAreaChart;
        synchronized (monitor()) {
            check_orphaned();
            cTAreaChart = (CTAreaChart) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTAreaChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAreaChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBar3DChart getBar3DChartArray(int i) {
        CTBar3DChart cTBar3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTBar3DChart = (CTBar3DChart) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTBar3DChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBar3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBarChart getBarChartArray(int i) {
        CTBarChart cTBarChart;
        synchronized (monitor()) {
            check_orphaned();
            cTBarChart = (CTBarChart) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTBarChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBarChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTBubbleChart getBubbleChartArray(int i) {
        CTBubbleChart cTBubbleChart;
        synchronized (monitor()) {
            check_orphaned();
            cTBubbleChart = (CTBubbleChart) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTBubbleChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBubbleChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTCatAx getCatAxArray(int i) {
        CTCatAx cTCatAx;
        synchronized (monitor()) {
            check_orphaned();
            cTCatAx = (CTCatAx) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (cTCatAx == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCatAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTDateAx getDateAxArray(int i) {
        CTDateAx cTDateAx;
        synchronized (monitor()) {
            check_orphaned();
            cTDateAx = (CTDateAx) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (cTDateAx == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDateAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTDoughnutChart getDoughnutChartArray(int i) {
        CTDoughnutChart cTDoughnutChart;
        synchronized (monitor()) {
            check_orphaned();
            cTDoughnutChart = (CTDoughnutChart) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTDoughnutChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDoughnutChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTLine3DChart getLine3DChartArray(int i) {
        CTLine3DChart cTLine3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTLine3DChart = (CTLine3DChart) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTLine3DChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLine3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTLineChart getLineChartArray(int i) {
        CTLineChart cTLineChart;
        synchronized (monitor()) {
            check_orphaned();
            cTLineChart = (CTLineChart) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTLineChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLineChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTOfPieChart getOfPieChartArray(int i) {
        CTOfPieChart cTOfPieChart;
        synchronized (monitor()) {
            check_orphaned();
            cTOfPieChart = (CTOfPieChart) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTOfPieChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOfPieChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTPie3DChart getPie3DChartArray(int i) {
        CTPie3DChart cTPie3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTPie3DChart = (CTPie3DChart) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTPie3DChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPie3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTPieChart getPieChartArray(int i) {
        CTPieChart cTPieChart;
        synchronized (monitor()) {
            check_orphaned();
            cTPieChart = (CTPieChart) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTPieChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPieChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTRadarChart getRadarChartArray(int i) {
        CTRadarChart cTRadarChart;
        synchronized (monitor()) {
            check_orphaned();
            cTRadarChart = (CTRadarChart) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTRadarChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRadarChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTScatterChart getScatterChartArray(int i) {
        CTScatterChart cTScatterChart;
        synchronized (monitor()) {
            check_orphaned();
            cTScatterChart = (CTScatterChart) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTScatterChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTScatterChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSerAx getSerAxArray(int i) {
        CTSerAx cTSerAx;
        synchronized (monitor()) {
            check_orphaned();
            cTSerAx = (CTSerAx) get_store().find_element_user(PROPERTY_QNAME[20], i);
            if (cTSerAx == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSerAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTStockChart getStockChartArray(int i) {
        CTStockChart cTStockChart;
        synchronized (monitor()) {
            check_orphaned();
            cTStockChart = (CTStockChart) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTStockChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTStockChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSurface3DChart getSurface3DChartArray(int i) {
        CTSurface3DChart cTSurface3DChart;
        synchronized (monitor()) {
            check_orphaned();
            cTSurface3DChart = (CTSurface3DChart) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTSurface3DChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSurface3DChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTSurfaceChart getSurfaceChartArray(int i) {
        CTSurfaceChart cTSurfaceChart;
        synchronized (monitor()) {
            check_orphaned();
            cTSurfaceChart = (CTSurfaceChart) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTSurfaceChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSurfaceChart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public CTValAx getValAxArray(int i) {
        CTValAx cTValAx;
        synchronized (monitor()) {
            check_orphaned();
            cTValAx = (CTValAx) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (cTValAx == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTValAx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setArea3DChartArray(int i, CTArea3DChart cTArea3DChart) {
        generatedSetterHelperImpl(cTArea3DChart, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setAreaChartArray(int i, CTAreaChart cTAreaChart) {
        generatedSetterHelperImpl(cTAreaChart, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setBar3DChartArray(int i, CTBar3DChart cTBar3DChart) {
        generatedSetterHelperImpl(cTBar3DChart, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setBarChartArray(int i, CTBarChart cTBarChart) {
        generatedSetterHelperImpl(cTBarChart, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setBubbleChartArray(int i, CTBubbleChart cTBubbleChart) {
        generatedSetterHelperImpl(cTBubbleChart, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setCatAxArray(int i, CTCatAx cTCatAx) {
        generatedSetterHelperImpl(cTCatAx, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setDateAxArray(int i, CTDateAx cTDateAx) {
        generatedSetterHelperImpl(cTDateAx, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setDoughnutChartArray(int i, CTDoughnutChart cTDoughnutChart) {
        generatedSetterHelperImpl(cTDoughnutChart, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setLine3DChartArray(int i, CTLine3DChart cTLine3DChart) {
        generatedSetterHelperImpl(cTLine3DChart, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setLineChartArray(int i, CTLineChart cTLineChart) {
        generatedSetterHelperImpl(cTLineChart, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setOfPieChartArray(int i, CTOfPieChart cTOfPieChart) {
        generatedSetterHelperImpl(cTOfPieChart, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setPie3DChartArray(int i, CTPie3DChart cTPie3DChart) {
        generatedSetterHelperImpl(cTPie3DChart, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setPieChartArray(int i, CTPieChart cTPieChart) {
        generatedSetterHelperImpl(cTPieChart, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setRadarChartArray(int i, CTRadarChart cTRadarChart) {
        generatedSetterHelperImpl(cTRadarChart, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setScatterChartArray(int i, CTScatterChart cTScatterChart) {
        generatedSetterHelperImpl(cTScatterChart, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setSerAxArray(int i, CTSerAx cTSerAx) {
        generatedSetterHelperImpl(cTSerAx, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setStockChartArray(int i, CTStockChart cTStockChart) {
        generatedSetterHelperImpl(cTStockChart, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setSurface3DChartArray(int i, CTSurface3DChart cTSurface3DChart) {
        generatedSetterHelperImpl(cTSurface3DChart, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setSurfaceChartArray(int i, CTSurfaceChart cTSurfaceChart) {
        generatedSetterHelperImpl(cTSurfaceChart, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea
    public void setValAxArray(int i, CTValAx cTValAx) {
        generatedSetterHelperImpl(cTValAx, PROPERTY_QNAME[17], i, (short) 2);
    }
}
