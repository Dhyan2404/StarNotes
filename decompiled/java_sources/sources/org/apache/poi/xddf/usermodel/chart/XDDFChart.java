package org.apache.poi.xddf.usermodel.chart;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;
import javax.xml.namespace.QName;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLFactory;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.NotOfficeXmlFileException;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.XDDFShapeProperties;
import org.apache.poi.xddf.usermodel.chart.XDDFChartData;
import org.apache.poi.xddf.usermodel.text.TextContainer;
import org.apache.poi.xddf.usermodel.text.XDDFTextBody;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBoolean;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTCatAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTChartSpace;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDateAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTTitle;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTValAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.ChartSpaceDocument;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties;

/* loaded from: classes13.dex */
public abstract class XDDFChart extends POIXMLDocumentPart implements TextContainer {
    public static final int DEFAULT_HEIGHT = 500000;
    public static final int DEFAULT_WIDTH = 500000;
    public static final int DEFAULT_X = 10;
    public static final int DEFAULT_Y = 10;
    protected List<XDDFChartAxis> axes;
    private int chartIndex;
    protected final CTChartSpace chartSpace;
    private long seriesCount;
    private XSSFWorkbook workbook;

    /* renamed from: org.apache.poi.xddf.usermodel.chart.XDDFChart$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198761 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes;

        static {
            int[] iArr = new int[ChartTypes.values().length];
            $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes = iArr;
            try {
                iArr[ChartTypes.AREA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.AREA3D.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.BAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.BAR3D.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.DOUGHNUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.LINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.LINE3D.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.PIE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.PIE3D.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.RADAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.SCATTER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.SURFACE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[ChartTypes.SURFACE3D.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public XDDFChart() {
        this.chartIndex = 0;
        this.axes = new ArrayList();
        this.seriesCount = 0L;
        CTChartSpace newInstance = CTChartSpace.Factory.newInstance();
        this.chartSpace = newInstance;
        newInstance.addNewChart().addNewPlotArea();
    }

    private void addAxis(XDDFChartAxis xDDFChartAxis) {
        if (this.axes.size() == 1) {
            XDDFChartAxis xDDFChartAxis2 = this.axes.get(0);
            xDDFChartAxis2.crossAxis(xDDFChartAxis);
            xDDFChartAxis.crossAxis(xDDFChartAxis2);
            AxisCrosses axisCrosses = AxisCrosses.AUTO_ZERO;
            xDDFChartAxis2.setCrosses(axisCrosses);
            xDDFChartAxis.setCrosses(axisCrosses);
        }
        this.axes.add(xDDFChartAxis);
    }

    private PackagePart createWorksheetPart(POIXMLRelation pOIXMLRelation, POIXMLFactory pOIXMLFactory) throws InvalidFormatException {
        PackageRelationship createRelationshipInChart = createRelationshipInChart(pOIXMLRelation, pOIXMLFactory, this.chartIndex);
        setExternalId(createRelationshipInChart.getId());
        return getTargetPart(createRelationshipInChart);
    }

    private Map<Long, XDDFChartAxis> getCategoryAxes() {
        CTPlotArea cTPlotArea = getCTPlotArea();
        int sizeOfCatAxArray = cTPlotArea.sizeOfCatAxArray();
        HashMap hashMap = new HashMap(sizeOfCatAxArray);
        for (int i = 0; i < sizeOfCatAxArray; i++) {
            CTCatAx catAxArray = cTPlotArea.getCatAxArray(i);
            hashMap.put(Long.valueOf(catAxArray.getAxId().getVal()), new XDDFCategoryAxis(catAxArray));
        }
        return hashMap;
    }

    private XSSFCell getCell(XSSFRow xSSFRow, int i) {
        XSSFCell cell = xSSFRow.getCell(i);
        return cell == null ? xSSFRow.createCell(i) : cell;
    }

    private XSSFRow getRow(XSSFSheet xSSFSheet, int i) {
        XSSFRow row = xSSFSheet.getRow(i);
        return row == null ? xSSFSheet.createRow(i) : row;
    }

    private XSSFSheet getSheet() {
        try {
            return getWorkbook().getSheetAt(0);
        } catch (IOException | InvalidFormatException unused) {
            return null;
        }
    }

    private Map<Long, XDDFValueAxis> getValueAxes() {
        CTPlotArea cTPlotArea = getCTPlotArea();
        int sizeOfValAxArray = cTPlotArea.sizeOfValAxArray();
        HashMap hashMap = new HashMap(sizeOfValAxArray);
        for (int i = 0; i < sizeOfValAxArray; i++) {
            CTValAx valAxArray = cTPlotArea.getValAxArray(i);
            hashMap.put(Long.valueOf(valAxArray.getAxId().getVal()), new XDDFValueAxis(valAxArray));
        }
        return hashMap;
    }

    private PackagePart getWorksheetPart() throws InvalidFormatException {
        for (POIXMLDocumentPart.RelationPart relationPart : getRelationParts()) {
            if (POIXMLDocument.PACK_OBJECT_REL_TYPE.equals(relationPart.getRelationship().getRelationshipType())) {
                return getTargetPart(relationPart.getRelationship());
            }
        }
        return null;
    }

    private boolean hasAxes() {
        CTPlotArea cTPlotArea = getCTPlotArea();
        return ((cTPlotArea.sizeOfValAxArray() + cTPlotArea.sizeOfCatAxArray()) + cTPlotArea.sizeOfDateAxArray()) + cTPlotArea.sizeOfSerAxArray() > 0;
    }

    private void parseAxes() {
        for (CTCatAx cTCatAx : getCTPlotArea().getCatAxArray()) {
            this.axes.add(new XDDFCategoryAxis(cTCatAx));
        }
        for (CTDateAx cTDateAx : getCTPlotArea().getDateAxArray()) {
            this.axes.add(new XDDFDateAxis(cTDateAx));
        }
        for (CTSerAx cTSerAx : getCTPlotArea().getSerAxArray()) {
            this.axes.add(new XDDFSeriesAxis(cTSerAx));
        }
        for (CTValAx cTValAx : getCTPlotArea().getValAxArray()) {
            this.axes.add(new XDDFValueAxis(cTValAx));
        }
    }

    private void setWorksheetPartCommitted() {
        for (POIXMLDocumentPart.RelationPart relationPart : getRelationParts()) {
            if (POIXMLDocument.PACK_OBJECT_REL_TYPE.equals(relationPart.getRelationship().getRelationshipType())) {
                relationPart.getDocumentPart().setCommitted(true);
                return;
            }
        }
    }

    public void clear() {
        this.axes.clear();
        this.seriesCount = 0L;
        XSSFWorkbook xSSFWorkbook = this.workbook;
        if (xSSFWorkbook != null) {
            xSSFWorkbook.removeSheetAt(0);
            this.workbook.createSheet();
        }
        getCTChart().set(CTChart.Factory.newInstance());
        getCTChart().addNewPlotArea();
    }

    public void clearChartSeries() {
        CTPlotArea cTPlotArea = getCTPlotArea();
        for (int sizeOfAreaChartArray = cTPlotArea.sizeOfAreaChartArray(); sizeOfAreaChartArray > 0; sizeOfAreaChartArray--) {
            cTPlotArea.removeAreaChart(sizeOfAreaChartArray - 1);
        }
        for (int sizeOfArea3DChartArray = cTPlotArea.sizeOfArea3DChartArray(); sizeOfArea3DChartArray > 0; sizeOfArea3DChartArray--) {
            cTPlotArea.removeArea3DChart(sizeOfArea3DChartArray - 1);
        }
        for (int sizeOfBarChartArray = cTPlotArea.sizeOfBarChartArray(); sizeOfBarChartArray > 0; sizeOfBarChartArray--) {
            cTPlotArea.removeBarChart(sizeOfBarChartArray - 1);
        }
        for (int sizeOfBar3DChartArray = cTPlotArea.sizeOfBar3DChartArray(); sizeOfBar3DChartArray > 0; sizeOfBar3DChartArray--) {
            cTPlotArea.removeBar3DChart(sizeOfBar3DChartArray - 1);
        }
        for (int sizeOfBubbleChartArray = cTPlotArea.sizeOfBubbleChartArray(); sizeOfBubbleChartArray > 0; sizeOfBubbleChartArray--) {
            cTPlotArea.removeBubbleChart(sizeOfBubbleChartArray - 1);
        }
        for (int sizeOfDoughnutChartArray = cTPlotArea.sizeOfDoughnutChartArray(); sizeOfDoughnutChartArray > 0; sizeOfDoughnutChartArray--) {
            cTPlotArea.removeDoughnutChart(sizeOfDoughnutChartArray - 1);
        }
        for (int sizeOfLineChartArray = cTPlotArea.sizeOfLineChartArray(); sizeOfLineChartArray > 0; sizeOfLineChartArray--) {
            cTPlotArea.removeLineChart(sizeOfLineChartArray - 1);
        }
        for (int sizeOfLine3DChartArray = cTPlotArea.sizeOfLine3DChartArray(); sizeOfLine3DChartArray > 0; sizeOfLine3DChartArray--) {
            cTPlotArea.removeLine3DChart(sizeOfLine3DChartArray - 1);
        }
        for (int sizeOfOfPieChartArray = cTPlotArea.sizeOfOfPieChartArray(); sizeOfOfPieChartArray > 0; sizeOfOfPieChartArray--) {
            cTPlotArea.removeOfPieChart(sizeOfOfPieChartArray - 1);
        }
        for (int sizeOfPieChartArray = cTPlotArea.sizeOfPieChartArray(); sizeOfPieChartArray > 0; sizeOfPieChartArray--) {
            cTPlotArea.removePieChart(sizeOfPieChartArray - 1);
        }
        for (int sizeOfPie3DChartArray = cTPlotArea.sizeOfPie3DChartArray(); sizeOfPie3DChartArray > 0; sizeOfPie3DChartArray--) {
            cTPlotArea.removePie3DChart(sizeOfPie3DChartArray - 1);
        }
        for (int sizeOfRadarChartArray = cTPlotArea.sizeOfRadarChartArray(); sizeOfRadarChartArray > 0; sizeOfRadarChartArray--) {
            cTPlotArea.removeRadarChart(sizeOfRadarChartArray - 1);
        }
        for (int sizeOfScatterChartArray = cTPlotArea.sizeOfScatterChartArray(); sizeOfScatterChartArray > 0; sizeOfScatterChartArray--) {
            cTPlotArea.removeScatterChart(sizeOfScatterChartArray - 1);
        }
        for (int sizeOfStockChartArray = cTPlotArea.sizeOfStockChartArray(); sizeOfStockChartArray > 0; sizeOfStockChartArray--) {
            cTPlotArea.removeStockChart(sizeOfStockChartArray - 1);
        }
        for (int sizeOfSurfaceChartArray = cTPlotArea.sizeOfSurfaceChartArray(); sizeOfSurfaceChartArray > 0; sizeOfSurfaceChartArray--) {
            cTPlotArea.removeSurfaceChart(sizeOfSurfaceChartArray - 1);
        }
        for (int sizeOfSurface3DChartArray = cTPlotArea.sizeOfSurface3DChartArray(); sizeOfSurface3DChartArray > 0; sizeOfSurface3DChartArray--) {
            cTPlotArea.removeSurface3DChart(sizeOfSurface3DChartArray - 1);
        }
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(CTChartSpace.type.getName().getNamespaceURI(), "chartSpace", "c"));
        XSSFWorkbook xSSFWorkbook = this.workbook;
        if (xSSFWorkbook != null) {
            try {
                saveWorkbook(xSSFWorkbook);
            } catch (InvalidFormatException e) {
                throw new POIXMLException(e);
            }
        }
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this.chartSpace.save(outputStream, xmlOptions);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public XDDFCategoryAxis createCategoryAxis(AxisPosition axisPosition) {
        XDDFCategoryAxis xDDFCategoryAxis = new XDDFCategoryAxis(getCTPlotArea(), axisPosition);
        addAxis(xDDFCategoryAxis);
        return xDDFCategoryAxis;
    }

    public XDDFChartData createData(ChartTypes chartTypes, XDDFChartAxis xDDFChartAxis, XDDFValueAxis xDDFValueAxis) {
        Map map;
        Map map2;
        if (ChartTypes.PIE == chartTypes || ChartTypes.PIE3D == chartTypes || ChartTypes.DOUGHNUT == chartTypes) {
            map = null;
            map2 = null;
        } else {
            map = Collections.singletonMap(Long.valueOf(xDDFChartAxis.getId()), xDDFChartAxis);
            map2 = Collections.singletonMap(Long.valueOf(xDDFValueAxis.getId()), xDDFValueAxis);
        }
        CTPlotArea cTPlotArea = getCTPlotArea();
        switch (C198761.$SwitchMap$org$apache$poi$xddf$usermodel$chart$ChartTypes[chartTypes.ordinal()]) {
            case 1:
                return new XDDFAreaChartData(this, cTPlotArea.addNewAreaChart(), map, map2);
            case 2:
                return new XDDFArea3DChartData(this, cTPlotArea.addNewArea3DChart(), map, map2);
            case 3:
                return new XDDFBarChartData(this, cTPlotArea.addNewBarChart(), map, map2);
            case 4:
                return new XDDFBar3DChartData(this, cTPlotArea.addNewBar3DChart(), map, map2);
            case 5:
                return new XDDFDoughnutChartData(this, cTPlotArea.addNewDoughnutChart());
            case 6:
                return new XDDFLineChartData(this, cTPlotArea.addNewLineChart(), map, map2);
            case 7:
                return new XDDFLine3DChartData(this, cTPlotArea.addNewLine3DChart(), map, map2);
            case 8:
                return new XDDFPieChartData(this, cTPlotArea.addNewPieChart());
            case 9:
                return new XDDFPie3DChartData(this, cTPlotArea.addNewPie3DChart());
            case 10:
                return new XDDFRadarChartData(this, cTPlotArea.addNewRadarChart(), map, map2);
            case 11:
                return new XDDFScatterChartData(this, cTPlotArea.addNewScatterChart(), map, map2);
            case 12:
                return new XDDFSurfaceChartData(this, cTPlotArea.addNewSurfaceChart(), map, map2);
            case 13:
                return new XDDFSurface3DChartData(this, cTPlotArea.addNewSurface3DChart(), map, map2);
            default:
                return null;
        }
    }

    public XDDFDateAxis createDateAxis(AxisPosition axisPosition) {
        XDDFDateAxis xDDFDateAxis = new XDDFDateAxis(getCTPlotArea(), axisPosition);
        addAxis(xDDFDateAxis);
        return xDDFDateAxis;
    }

    public PackageRelationship createRelationshipInChart(POIXMLRelation pOIXMLRelation, POIXMLFactory pOIXMLFactory, int i) {
        return addRelation(null, pOIXMLRelation, createRelationship(pOIXMLRelation, pOIXMLFactory, i, true).getDocumentPart()).getRelationship();
    }

    public XDDFSeriesAxis createSeriesAxis(AxisPosition axisPosition) {
        XDDFSeriesAxis xDDFSeriesAxis = new XDDFSeriesAxis(getCTPlotArea(), axisPosition);
        addAxis(xDDFSeriesAxis);
        return xDDFSeriesAxis;
    }

    public XDDFValueAxis createValueAxis(AxisPosition axisPosition) {
        XDDFValueAxis xDDFValueAxis = new XDDFValueAxis(getCTPlotArea(), axisPosition);
        addAxis(xDDFValueAxis);
        return xDDFValueAxis;
    }

    public void deleteLegend() {
        if (getCTChart().isSetLegend()) {
            getCTChart().unsetLegend();
        }
    }

    public void deleteShapeProperties() {
        if (getCTPlotArea().isSetSpPr()) {
            getCTPlotArea().unsetSpPr();
        }
    }

    public void displayBlanksAs(DisplayBlanks displayBlanks) {
        if (displayBlanks == null) {
            if (getCTChart().isSetDispBlanksAs()) {
                getCTChart().unsetDispBlanksAs();
            }
        } else if (getCTChart().isSetDispBlanksAs()) {
            getCTChart().getDispBlanksAs().setVal(displayBlanks.underlying);
        } else {
            getCTChart().addNewDispBlanksAs().setVal(displayBlanks.underlying);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void fillSheet(XSSFSheet xSSFSheet, XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<?> xDDFNumericalDataSource) {
        int pointCount = xDDFDataSource.getPointCount();
        int i = 0;
        while (i < pointCount) {
            int i2 = i + 1;
            XSSFRow row = getRow(xSSFSheet, i2);
            Object pointAt = xDDFDataSource.getPointAt(i);
            if (pointAt != null) {
                getCell(row, xDDFDataSource.getColIndex()).setCellValue(pointAt.toString());
            }
            Number number = (Number) xDDFNumericalDataSource.getPointAt(i);
            if (number != null) {
                getCell(row, xDDFNumericalDataSource.getColIndex()).setCellValue(number.doubleValue());
            }
            i = i2;
        }
    }

    @Override // org.apache.poi.xddf.usermodel.text.TextContainer
    public <R> Optional<R> findDefinedParagraphProperty(Predicate<CTTextParagraphProperties> predicate, Function<CTTextParagraphProperties, R> function) {
        return Optional.empty();
    }

    @Override // org.apache.poi.xddf.usermodel.text.TextContainer
    public <R> Optional<R> findDefinedRunProperty(Predicate<CTTextCharacterProperties> predicate, Function<CTTextCharacterProperties, R> function) {
        return Optional.empty();
    }

    public String formatRange(CellRangeAddress cellRangeAddress) {
        XSSFSheet sheet = getSheet();
        if (sheet == null) {
            return null;
        }
        return cellRangeAddress.formatAsString(sheet.getSheetName(), true);
    }

    public List<? extends XDDFChartAxis> getAxes() {
        if (this.axes.isEmpty() && hasAxes()) {
            parseAxes();
        }
        return this.axes;
    }

    @Internal
    public CTChart getCTChart() {
        return this.chartSpace.getChart();
    }

    @Internal
    public CTChartSpace getCTChartSpace() {
        return this.chartSpace;
    }

    @Internal
    public CTPlotArea getCTPlotArea() {
        return getCTChart().getPlotArea();
    }

    public abstract POIXMLFactory getChartFactory();

    public int getChartIndex() {
        return this.chartIndex;
    }

    public abstract POIXMLRelation getChartRelation();

    public List<XDDFChartData> getChartSeries() {
        LinkedList linkedList = new LinkedList();
        CTPlotArea cTPlotArea = getCTPlotArea();
        Map<Long, XDDFChartAxis> categoryAxes = getCategoryAxes();
        Map<Long, XDDFValueAxis> valueAxes = getValueAxes();
        for (int i = 0; i < cTPlotArea.sizeOfAreaChartArray(); i++) {
            linkedList.add(new XDDFAreaChartData(this, cTPlotArea.getAreaChartArray(i), categoryAxes, valueAxes));
        }
        for (int i2 = 0; i2 < cTPlotArea.sizeOfArea3DChartArray(); i2++) {
            linkedList.add(new XDDFArea3DChartData(this, cTPlotArea.getArea3DChartArray(i2), categoryAxes, valueAxes));
        }
        for (int i3 = 0; i3 < cTPlotArea.sizeOfBarChartArray(); i3++) {
            linkedList.add(new XDDFBarChartData(this, cTPlotArea.getBarChartArray(i3), categoryAxes, valueAxes));
        }
        for (int i4 = 0; i4 < cTPlotArea.sizeOfBar3DChartArray(); i4++) {
            linkedList.add(new XDDFBar3DChartData(this, cTPlotArea.getBar3DChartArray(i4), categoryAxes, valueAxes));
        }
        for (int i5 = 0; i5 < cTPlotArea.sizeOfDoughnutChartArray(); i5++) {
            linkedList.add(new XDDFDoughnutChartData(this, cTPlotArea.getDoughnutChartArray(i5)));
        }
        for (int i6 = 0; i6 < cTPlotArea.sizeOfLineChartArray(); i6++) {
            linkedList.add(new XDDFLineChartData(this, cTPlotArea.getLineChartArray(i6), categoryAxes, valueAxes));
        }
        for (int i7 = 0; i7 < cTPlotArea.sizeOfLine3DChartArray(); i7++) {
            linkedList.add(new XDDFLine3DChartData(this, cTPlotArea.getLine3DChartArray(i7), categoryAxes, valueAxes));
        }
        for (int i8 = 0; i8 < cTPlotArea.sizeOfPieChartArray(); i8++) {
            linkedList.add(new XDDFPieChartData(this, cTPlotArea.getPieChartArray(i8)));
        }
        for (int i9 = 0; i9 < cTPlotArea.sizeOfPie3DChartArray(); i9++) {
            linkedList.add(new XDDFPie3DChartData(this, cTPlotArea.getPie3DChartArray(i9)));
        }
        for (int i10 = 0; i10 < cTPlotArea.sizeOfRadarChartArray(); i10++) {
            linkedList.add(new XDDFRadarChartData(this, cTPlotArea.getRadarChartArray(i10), categoryAxes, valueAxes));
        }
        for (int i11 = 0; i11 < cTPlotArea.sizeOfScatterChartArray(); i11++) {
            linkedList.add(new XDDFScatterChartData(this, cTPlotArea.getScatterChartArray(i11), categoryAxes, valueAxes));
        }
        for (int i12 = 0; i12 < cTPlotArea.sizeOfSurfaceChartArray(); i12++) {
            linkedList.add(new XDDFSurfaceChartData(this, cTPlotArea.getSurfaceChartArray(i12), categoryAxes, valueAxes));
        }
        for (int i13 = 0; i13 < cTPlotArea.sizeOfSurface3DChartArray(); i13++) {
            linkedList.add(new XDDFSurface3DChartData(this, cTPlotArea.getSurface3DChartArray(i13), categoryAxes, valueAxes));
        }
        this.seriesCount = linkedList.size();
        return linkedList;
    }

    public abstract POIXMLRelation getChartWorkbookRelation();

    public XDDFTextBody getFormattedTitle() {
        if (getCTChart().isSetTitle()) {
            return new XDDFTitle(this, getCTChart().getTitle()).getBody();
        }
        return null;
    }

    public XDDFChartLegend getOrAddLegend() {
        return new XDDFChartLegend(getCTChart());
    }

    public XDDFManualLayout getOrAddManualLayout() {
        return new XDDFManualLayout(getCTPlotArea());
    }

    public XDDFShapeProperties getOrAddShapeProperties() {
        CTPlotArea cTPlotArea = getCTPlotArea();
        return new XDDFShapeProperties(cTPlotArea.isSetSpPr() ? cTPlotArea.getSpPr() : cTPlotArea.addNewSpPr());
    }

    public XDDFView3D getOrAddView3D() {
        return new XDDFView3D(getCTChart().isSetView3D() ? getCTChart().getView3D() : getCTChart().addNewView3D());
    }

    public XDDFTitle getTitle() {
        if (getCTChart().isSetTitle()) {
            return new XDDFTitle(this, getCTChart().getTitle());
        }
        return null;
    }

    public Boolean getTitleOverlay() {
        if (!getCTChart().isSetTitle()) {
            return null;
        }
        CTTitle title = getCTChart().getTitle();
        if (title.isSetOverlay()) {
            return Boolean.valueOf(title.getOverlay().getVal());
        }
        return null;
    }

    public XSSFWorkbook getWorkbook() throws IOException, InvalidFormatException {
        if (this.workbook == null) {
            try {
                PackagePart worksheetPart = getWorksheetPart();
                if (worksheetPart == null) {
                    XSSFWorkbook xSSFWorkbook = new XSSFWorkbook();
                    this.workbook = xSSFWorkbook;
                    xSSFWorkbook.createSheet();
                } else {
                    InputStream inputStream = worksheetPart.getInputStream();
                    try {
                        this.workbook = new XSSFWorkbook(inputStream);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } finally {
                    }
                }
            } catch (NotOfficeXmlFileException unused) {
                XSSFWorkbook xSSFWorkbook2 = new XSSFWorkbook();
                this.workbook = xSSFWorkbook2;
                xSSFWorkbook2.createSheet();
            }
        }
        return this.workbook;
    }

    public void importContent(XDDFChart xDDFChart) {
        getCTChartSpace().set(xDDFChart.getCTChartSpace());
    }

    public long incrementSeriesCount() {
        long j = this.seriesCount;
        this.seriesCount = 1 + j;
        return j;
    }

    public boolean isPlotOnlyVisibleCells() {
        if (getCTChart().isSetPlotVisOnly()) {
            return getCTChart().getPlotVisOnly().getVal();
        }
        return false;
    }

    public void plot(XDDFChartData xDDFChartData) {
        XSSFSheet sheet = getSheet();
        for (int i = 0; i < xDDFChartData.getSeriesCount(); i++) {
            XDDFChartData.Series series = xDDFChartData.getSeries(i);
            series.plot();
            XDDFDataSource<?> categoryData = series.getCategoryData();
            XDDFNumericalDataSource<? extends Number> valuesData = series.getValuesData();
            if (categoryData != null && !categoryData.isCellRange() && !categoryData.isLiteral() && valuesData != null && !valuesData.isCellRange() && !valuesData.isLiteral()) {
                fillSheet(sheet, categoryData, valuesData);
            }
        }
    }

    public void removeTitle() {
        setAutoTitleDeleted(true);
    }

    public void replaceReferences(XSSFSheet xSSFSheet) {
        Iterator<XDDFChartData> it2 = getChartSeries().iterator();
        while (it2.hasNext()) {
            for (XDDFChartData.Series series : it2.next().series) {
                XDDFDataSource<?> xDDFDataSource = series.categoryData;
                XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource = series.valuesData;
                if (xDDFDataSource != null) {
                    try {
                        if (xDDFDataSource.isReference()) {
                            String dataRangeReference = series.categoryData.getDataRangeReference();
                            CellRangeAddress valueOf = CellRangeAddress.valueOf(dataRangeReference.substring(dataRangeReference.indexOf(33) + 1));
                            xDDFDataSource = series.categoryData.isNumeric() ? XDDFDataSourcesFactory.fromNumericCellRange(xSSFSheet, valueOf) : XDDFDataSourcesFactory.fromStringCellRange(xSSFSheet, valueOf);
                            if (xDDFDataSource.isNumeric()) {
                                ((XDDFNumericalDataSource) xDDFDataSource).setFormatCode(series.categoryData.getFormatCode());
                            }
                        }
                    } catch (IllegalArgumentException unused) {
                    }
                }
                XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource2 = series.valuesData;
                if (xDDFNumericalDataSource2 != null && xDDFNumericalDataSource2.isReference()) {
                    String dataRangeReference2 = series.valuesData.getDataRangeReference();
                    xDDFNumericalDataSource = XDDFDataSourcesFactory.fromNumericCellRange(xSSFSheet, CellRangeAddress.valueOf(dataRangeReference2.substring(dataRangeReference2.indexOf(33) + 1)));
                    xDDFNumericalDataSource.setFormatCode(series.valuesData.getFormatCode());
                }
                series.replaceData(xDDFDataSource, xDDFNumericalDataSource);
                series.plot();
            }
        }
    }

    public void saveWorkbook(XSSFWorkbook xSSFWorkbook) throws IOException, InvalidFormatException {
        PackagePart worksheetPart = getWorksheetPart();
        if (worksheetPart == null) {
            POIXMLRelation chartWorkbookRelation = getChartWorkbookRelation();
            POIXMLFactory chartFactory = getChartFactory();
            if (chartWorkbookRelation == null || chartFactory == null) {
                throw new InvalidFormatException("unable to determine chart relations");
            }
            worksheetPart = createWorksheetPart(chartWorkbookRelation, chartFactory);
        }
        OutputStream outputStream = worksheetPart.getOutputStream();
        try {
            setWorksheetPartCommitted();
            xSSFWorkbook.write(outputStream);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public void setAutoTitleDeleted(boolean z) {
        if (!getCTChart().isSetAutoTitleDeleted()) {
            getCTChart().setAutoTitleDeleted(CTBoolean.Factory.newInstance());
        }
        getCTChart().getAutoTitleDeleted().setVal(z);
        if (z && getCTChart().isSetTitle()) {
            getCTChart().unsetTitle();
        }
    }

    public void setBackWall(int i) {
        if (!getCTChart().isSetBackWall()) {
            getCTChart().setBackWall(CTSurface.Factory.newInstance());
        }
        getCTChart().getBackWall().getThickness().setVal(Integer.valueOf(i));
    }

    public void setChartIndex(int i) {
        this.chartIndex = i;
    }

    public void setExternalId(String str) {
        CTChartSpace cTChartSpace = getCTChartSpace();
        (cTChartSpace.isSetExternalData() ? cTChartSpace.getExternalData() : cTChartSpace.addNewExternalData()).setId(str);
    }

    public void setFloor(int i) {
        if (!getCTChart().isSetFloor()) {
            getCTChart().setFloor(CTSurface.Factory.newInstance());
        }
        getCTChart().getFloor().getThickness().setVal(Integer.valueOf(i));
    }

    public void setPlotOnlyVisibleCells(boolean z) {
        if (!getCTChart().isSetPlotVisOnly()) {
            getCTChart().setPlotVisOnly(CTBoolean.Factory.newInstance());
        }
        getCTChart().getPlotVisOnly().setVal(z);
    }

    public CellReference setSheetTitle(String str, int i) {
        XSSFSheet sheet = getSheet();
        if (sheet == null) {
            return null;
        }
        getCell(getRow(sheet, 0), i).setCellValue(str);
        return new CellReference(sheet.getSheetName(), 0, i, true, true);
    }

    public void setSideWall(int i) {
        if (!getCTChart().isSetSideWall()) {
            getCTChart().setSideWall(CTSurface.Factory.newInstance());
        }
        getCTChart().getSideWall().getThickness().setVal(Integer.valueOf(i));
    }

    public void setTitleOverlay(boolean z) {
        if (!getCTChart().isSetTitle()) {
            getCTChart().addNewTitle();
        }
        new XDDFTitle(this, getCTChart().getTitle()).setOverlay(Boolean.valueOf(z));
    }

    public void setTitleText(String str) {
        if (!getCTChart().isSetTitle()) {
            getCTChart().addNewTitle();
        }
        new XDDFTitle(this, getCTChart().getTitle()).setText(str);
    }

    public void setValueRange(int i, Double d, Double d2, Double d3, Double d4) {
        XDDFChartAxis xDDFChartAxis = getAxes().get(i);
        if (xDDFChartAxis == null) {
            return;
        }
        if (d != null) {
            xDDFChartAxis.setMinimum(d.doubleValue());
        }
        if (d2 != null) {
            xDDFChartAxis.setMaximum(d2.doubleValue());
        }
        if (d3 != null) {
            xDDFChartAxis.setMajorUnit(d3.doubleValue());
        }
        if (d4 != null) {
            xDDFChartAxis.setMinorUnit(d4.doubleValue());
        }
    }

    public void setWorkbook(XSSFWorkbook xSSFWorkbook) {
        this.workbook = xSSFWorkbook;
    }

    public XDDFChart(PackagePart packagePart) throws IOException, XmlException {
        super(packagePart);
        this.chartIndex = 0;
        this.axes = new ArrayList();
        this.seriesCount = 0L;
        InputStream inputStream = packagePart.getInputStream();
        try {
            this.chartSpace = ChartSpaceDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getChartSpace();
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}
