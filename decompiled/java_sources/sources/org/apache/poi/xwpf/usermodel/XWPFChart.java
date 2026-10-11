package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLFactory;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xddf.usermodel.chart.XDDFChart;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTInline;

/* loaded from: classes13.dex */
public class XWPFChart extends XDDFChart {
    public static final int DEFAULT_HEIGHT = 500000;
    public static final int DEFAULT_WIDTH = 500000;
    private Long checksum;
    private CTInline ctInline;

    public XWPFChart() {
    }

    public void attach(String str, XWPFRun xWPFRun) throws InvalidFormatException, IOException {
        CTInline addChart = xWPFRun.addChart(str);
        this.ctInline = addChart;
        addChart.addNewExtent();
        setChartBoundingBox(500000L, 500000L);
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public long getChartBottomMargin(long j) {
        return this.ctInline.getDistB();
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChart
    public POIXMLFactory getChartFactory() {
        return XWPFFactory.getInstance();
    }

    public long getChartHeight() {
        return this.ctInline.getExtent().getCy();
    }

    public long getChartLeftMargin(long j) {
        return this.ctInline.getDistL();
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChart
    public POIXMLRelation getChartRelation() {
        return XWPFRelation.CHART;
    }

    public long getChartRightMargin(long j) {
        return this.ctInline.getDistR();
    }

    public long getChartTopMargin(long j) {
        return this.ctInline.getDistT();
    }

    public long getChartWidth() {
        return this.ctInline.getExtent().getCx();
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChart
    public POIXMLRelation getChartWorkbookRelation() {
        return XWPFRelation.WORKBOOK;
    }

    public Long getChecksum() {
        if (this.checksum == null) {
            try {
                InputStream inputStream = getPackagePart().getInputStream();
                try {
                    this.checksum = Long.valueOf(IOUtils.calculateChecksum(inputStream));
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } finally {
                }
            } catch (IOException e) {
                throw new POIXMLException(e);
            }
        }
        return this.checksum;
    }

    public int hashCode() {
        return getChecksum().hashCode();
    }

    public void setChartBottomMargin(long j) {
        this.ctInline.setDistB(j);
    }

    public void setChartBoundingBox(long j, long j2) {
        setChartWidth(j);
        setChartHeight(j2);
    }

    public void setChartHeight(long j) {
        this.ctInline.getExtent().setCy(j);
    }

    public void setChartLeftMargin(long j) {
        this.ctInline.setDistL(j);
    }

    public void setChartMargin(long j, long j2, long j3, long j4) {
        setChartBottomMargin(j3);
        setChartRightMargin(j2);
        setChartLeftMargin(j4);
        setChartRightMargin(j2);
    }

    public void setChartRightMargin(long j) {
        this.ctInline.setDistR(j);
    }

    public void setChartTopMargin(long j) {
        this.ctInline.setDistT(j);
    }

    public void setChartWidth(long j) {
        this.ctInline.getExtent().setCx(j);
    }

    public XWPFChart(PackagePart packagePart) throws IOException, XmlException {
        super(packagePart);
    }
}
