package org.apache.poi.xddf.usermodel.chart;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;
import org.apache.poi.xddf.usermodel.XDDFFillProperties;
import org.apache.poi.xddf.usermodel.XDDFLineProperties;
import org.apache.poi.xddf.usermodel.XDDFShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDPt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumRef;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerTx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStrData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStrRef;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTUnsignedInt;

/* loaded from: classes13.dex */
public abstract class XDDFChartData {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) XDDFChartData.class);
    private XDDFCategoryAxis categoryAxis;
    protected XDDFChart parent;
    protected List<Series> series = new ArrayList();
    private List<XDDFValueAxis> valueAxes;

    /* loaded from: classes13.dex */
    public static abstract class Series {
        protected XDDFDataSource<?> categoryData;
        protected XDDFNumericalDataSource<? extends Number> valuesData;

        public Series(XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource) {
            replaceData(xDDFDataSource, xDDFNumericalDataSource);
        }

        private CTNumData retrieveNumCache(CTAxDataSource cTAxDataSource, XDDFDataSource<?> xDDFDataSource) {
            CTNumData addNewNumLit;
            CTNumData cTNumData;
            CTNumRef addNewNumRef;
            if (xDDFDataSource.isReference()) {
                if (cTAxDataSource.isSetNumRef()) {
                    addNewNumRef = cTAxDataSource.getNumRef();
                } else {
                    addNewNumRef = cTAxDataSource.addNewNumRef();
                }
                if (addNewNumRef.isSetNumCache()) {
                    cTNumData = addNewNumRef.getNumCache();
                } else {
                    cTNumData = addNewNumRef.addNewNumCache();
                }
                addNewNumRef.setF(xDDFDataSource.getDataRangeReference());
                if (cTAxDataSource.isSetNumLit()) {
                    cTAxDataSource.unsetNumLit();
                }
            } else {
                if (cTAxDataSource.isSetNumLit()) {
                    addNewNumLit = cTAxDataSource.getNumLit();
                } else {
                    addNewNumLit = cTAxDataSource.addNewNumLit();
                }
                cTNumData = addNewNumLit;
                if (cTAxDataSource.isSetNumRef()) {
                    cTAxDataSource.unsetNumRef();
                }
            }
            return cTNumData;
        }

        private CTStrData retrieveStrCache(CTAxDataSource cTAxDataSource, XDDFDataSource<?> xDDFDataSource) {
            CTStrData strLit;
            if (xDDFDataSource.isReference()) {
                CTStrRef strRef = cTAxDataSource.isSetStrRef() ? cTAxDataSource.getStrRef() : cTAxDataSource.addNewStrRef();
                strLit = strRef.isSetStrCache() ? strRef.getStrCache() : strRef.addNewStrCache();
                strRef.setF(xDDFDataSource.getDataRangeReference());
                if (cTAxDataSource.isSetStrLit()) {
                    cTAxDataSource.unsetStrLit();
                }
            } else {
                strLit = cTAxDataSource.isSetStrLit() ? cTAxDataSource.getStrLit() : cTAxDataSource.addNewStrLit();
                if (cTAxDataSource.isSetStrRef()) {
                    cTAxDataSource.unsetStrRef();
                }
            }
            return strLit;
        }

        public void clearDataPoint(long j) {
            List<CTDPt> dPtList = getDPtList();
            for (int i = 0; i < dPtList.size(); i++) {
                if (dPtList.get(i).getIdx().getVal() == j) {
                    dPtList.remove(i);
                    return;
                }
            }
        }

        public abstract CTAxDataSource getAxDS();

        public XDDFDataSource<?> getCategoryData() {
            return this.categoryData;
        }

        public abstract List<CTDPt> getDPtList();

        public XDDFDataPoint getDataPoint(long j) {
            List<CTDPt> dPtList = getDPtList();
            for (int i = 0; i < dPtList.size(); i++) {
                if (dPtList.get(i).getIdx().getVal() == j) {
                    return new XDDFDataPoint(dPtList.get(i));
                }
                if (dPtList.get(i).getIdx().getVal() > j) {
                    dPtList.add(i, CTDPt.Factory.newInstance());
                    CTDPt cTDPt = dPtList.get(i);
                    cTDPt.addNewIdx().setVal(j);
                    return new XDDFDataPoint(cTDPt);
                }
            }
            dPtList.add(CTDPt.Factory.newInstance());
            CTDPt cTDPt2 = dPtList.get(dPtList.size() - 1);
            cTDPt2.addNewIdx().setVal(j);
            return new XDDFDataPoint(cTDPt2);
        }

        public abstract CTNumDataSource getNumDS();

        public abstract CTSerTx getSeriesText();

        public abstract XDDFShapeProperties getShapeProperties();

        public XDDFNumericalDataSource<? extends Number> getValuesData() {
            return this.valuesData;
        }

        public void plot() {
            XDDFDataSource<?> xDDFDataSource = this.categoryData;
            if (xDDFDataSource != null) {
                if (xDDFDataSource.isNumeric()) {
                    this.categoryData.fillNumericalCache(retrieveNumCache(getAxDS(), this.categoryData));
                } else {
                    this.categoryData.fillStringCache(retrieveStrCache(getAxDS(), this.categoryData));
                }
            }
            if (this.valuesData != null) {
                this.valuesData.fillNumericalCache(retrieveNumCache(getNumDS(), this.valuesData));
            }
        }

        public void replaceData(XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource) {
            int pointCount;
            if (this.categoryData != null && xDDFNumericalDataSource != null && (pointCount = xDDFDataSource.getPointCount()) != xDDFNumericalDataSource.getPointCount()) {
                XDDFChartData.LOGGER.warn("Category and values must have the same point count, but had " + pointCount + " categories and " + xDDFNumericalDataSource.getPointCount() + " values.");
            }
            this.categoryData = xDDFDataSource;
            this.valuesData = xDDFNumericalDataSource;
        }

        public void setFillProperties(XDDFFillProperties xDDFFillProperties) {
            XDDFShapeProperties shapeProperties = getShapeProperties();
            if (shapeProperties == null) {
                shapeProperties = new XDDFShapeProperties();
            }
            shapeProperties.setFillProperties(xDDFFillProperties);
            setShapeProperties(shapeProperties);
        }

        public abstract void setIndex(long j);

        public void setLineProperties(XDDFLineProperties xDDFLineProperties) {
            XDDFShapeProperties shapeProperties = getShapeProperties();
            if (shapeProperties == null) {
                shapeProperties = new XDDFShapeProperties();
            }
            shapeProperties.setLineProperties(xDDFLineProperties);
            setShapeProperties(shapeProperties);
        }

        public abstract void setOrder(long j);

        public abstract void setShapeProperties(XDDFShapeProperties xDDFShapeProperties);

        public abstract void setShowLeaderLines(boolean z);

        public void setTitle(String str) {
            setTitle(str, null);
        }

        public void setTitle(String str, CellReference cellReference) {
            CTStrRef addNewStrRef;
            CTStrData addNewStrCache;
            if (cellReference == null) {
                getSeriesText().setV(str);
                return;
            }
            if (getSeriesText().isSetStrRef()) {
                addNewStrRef = getSeriesText().getStrRef();
            } else {
                addNewStrRef = getSeriesText().addNewStrRef();
            }
            addNewStrRef.setF(cellReference.formatAsString());
            if (str != null) {
                if (addNewStrRef.isSetStrCache()) {
                    addNewStrCache = addNewStrRef.getStrCache();
                } else {
                    addNewStrCache = addNewStrRef.addNewStrCache();
                }
                if (addNewStrCache.sizeOfPtArray() < 1) {
                    addNewStrCache.addNewPtCount().setVal(1L);
                    addNewStrCache.addNewPt().setIdx(0L);
                }
                addNewStrCache.getPtArray(0).setV(str);
            }
        }

        public CTNumData retrieveNumCache(CTNumDataSource cTNumDataSource, XDDFDataSource<?> xDDFDataSource) {
            CTNumData addNewNumLit;
            CTNumData cTNumData;
            CTNumRef addNewNumRef;
            if (xDDFDataSource.isReference()) {
                if (cTNumDataSource.isSetNumRef()) {
                    addNewNumRef = cTNumDataSource.getNumRef();
                } else {
                    addNewNumRef = cTNumDataSource.addNewNumRef();
                }
                if (addNewNumRef.isSetNumCache()) {
                    cTNumData = addNewNumRef.getNumCache();
                } else {
                    cTNumData = addNewNumRef.addNewNumCache();
                }
                addNewNumRef.setF(xDDFDataSource.getDataRangeReference());
                if (cTNumDataSource.isSetNumLit()) {
                    cTNumDataSource.unsetNumLit();
                }
            } else {
                if (cTNumDataSource.isSetNumLit()) {
                    addNewNumLit = cTNumDataSource.getNumLit();
                } else {
                    addNewNumLit = cTNumDataSource.addNewNumLit();
                }
                cTNumData = addNewNumLit;
                if (cTNumDataSource.isSetNumRef()) {
                    cTNumDataSource.unsetNumRef();
                }
            }
            return cTNumData;
        }
    }

    public XDDFChartData(XDDFChart xDDFChart) {
        this.parent = xDDFChart;
    }

    public abstract Series addSeries(XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource);

    public void defineAxes(CTUnsignedInt[] cTUnsignedIntArr, Map<Long, XDDFChartAxis> map, Map<Long, XDDFValueAxis> map2) {
        ArrayList arrayList = new ArrayList(cTUnsignedIntArr.length);
        for (CTUnsignedInt cTUnsignedInt : cTUnsignedIntArr) {
            Long valueOf = Long.valueOf(cTUnsignedInt.getVal());
            XDDFChartAxis xDDFChartAxis = map.get(valueOf);
            if (xDDFChartAxis == null) {
                XDDFValueAxis xDDFValueAxis = map2.get(valueOf);
                if (xDDFValueAxis != null) {
                    arrayList.add(xDDFValueAxis);
                }
            } else if (xDDFChartAxis instanceof XDDFCategoryAxis) {
                this.categoryAxis = (XDDFCategoryAxis) xDDFChartAxis;
            }
        }
        this.valueAxes = Collections.unmodifiableList(arrayList);
    }

    public XDDFCategoryAxis getCategoryAxis() {
        return this.categoryAxis;
    }

    @Removal(version = "5.3")
    @Deprecated
    public List<Series> getSeries() {
        return Collections.unmodifiableList(this.series);
    }

    public final int getSeriesCount() {
        return this.series.size();
    }

    public List<XDDFValueAxis> getValueAxes() {
        return this.valueAxes;
    }

    @Internal
    public abstract void removeCTSeries(int i);

    public final void removeSeries(int i) {
        if (i < 0 || this.series.size() <= i) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "%s(%d): illegal index", "removeSeries", Integer.valueOf(i)));
        }
        this.series.remove(i);
        removeCTSeries(i);
    }

    public abstract void setVaryColors(Boolean bool);

    public final Series getSeries(int i) {
        return this.series.get(i);
    }
}
