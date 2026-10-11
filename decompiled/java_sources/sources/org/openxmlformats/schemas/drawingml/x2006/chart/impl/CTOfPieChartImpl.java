package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

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
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBoolean;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTChartLines;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTCustSplit;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDouble;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTGapAmount;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieType;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPieSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSecondPieSize;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSplitType;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTOfPieChartImpl;

/* loaded from: classes14.dex */
public class CTOfPieChartImpl extends XmlComplexContentImpl implements CTOfPieChart {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "ofPieType"), new QName(XSSFRelation.NS_CHART, "varyColors"), new QName(XSSFRelation.NS_CHART, "ser"), new QName(XSSFRelation.NS_CHART, "dLbls"), new QName(XSSFRelation.NS_CHART, "gapWidth"), new QName(XSSFRelation.NS_CHART, "splitType"), new QName(XSSFRelation.NS_CHART, "splitPos"), new QName(XSSFRelation.NS_CHART, "custSplit"), new QName(XSSFRelation.NS_CHART, "secondPieSize"), new QName(XSSFRelation.NS_CHART, "serLines"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTOfPieChartImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTCustSplit addNewCustSplit() {
        CTCustSplit cTCustSplit;
        synchronized (monitor()) {
            check_orphaned();
            cTCustSplit = (CTCustSplit) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTCustSplit;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTDLbls addNewDLbls() {
        CTDLbls cTDLbls;
        synchronized (monitor()) {
            check_orphaned();
            cTDLbls = (CTDLbls) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTDLbls;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTGapAmount addNewGapWidth() {
        CTGapAmount cTGapAmount;
        synchronized (monitor()) {
            check_orphaned();
            cTGapAmount = (CTGapAmount) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTGapAmount;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTOfPieType addNewOfPieType() {
        CTOfPieType cTOfPieType;
        synchronized (monitor()) {
            check_orphaned();
            cTOfPieType = (CTOfPieType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOfPieType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTSecondPieSize addNewSecondPieSize() {
        CTSecondPieSize cTSecondPieSize;
        synchronized (monitor()) {
            check_orphaned();
            cTSecondPieSize = (CTSecondPieSize) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTSecondPieSize;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTPieSer addNewSer() {
        CTPieSer cTPieSer;
        synchronized (monitor()) {
            check_orphaned();
            cTPieSer = (CTPieSer) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTPieSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTChartLines addNewSerLines() {
        CTChartLines cTChartLines;
        synchronized (monitor()) {
            check_orphaned();
            cTChartLines = (CTChartLines) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTChartLines;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTDouble addNewSplitPos() {
        CTDouble cTDouble;
        synchronized (monitor()) {
            check_orphaned();
            cTDouble = (CTDouble) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTDouble;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTSplitType addNewSplitType() {
        CTSplitType cTSplitType;
        synchronized (monitor()) {
            check_orphaned();
            cTSplitType = (CTSplitType) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTSplitType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTBoolean addNewVaryColors() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTCustSplit getCustSplit() {
        CTCustSplit cTCustSplit;
        synchronized (monitor()) {
            check_orphaned();
            cTCustSplit = (CTCustSplit) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTCustSplit == null) {
                cTCustSplit = null;
            }
        }
        return cTCustSplit;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTDLbls getDLbls() {
        CTDLbls cTDLbls;
        synchronized (monitor()) {
            check_orphaned();
            cTDLbls = (CTDLbls) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTDLbls == null) {
                cTDLbls = null;
            }
        }
        return cTDLbls;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTGapAmount getGapWidth() {
        CTGapAmount cTGapAmount;
        synchronized (monitor()) {
            check_orphaned();
            cTGapAmount = (CTGapAmount) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTGapAmount == null) {
                cTGapAmount = null;
            }
        }
        return cTGapAmount;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTOfPieType getOfPieType() {
        CTOfPieType cTOfPieType;
        synchronized (monitor()) {
            check_orphaned();
            cTOfPieType = (CTOfPieType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOfPieType == null) {
                cTOfPieType = null;
            }
        }
        return cTOfPieType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTSecondPieSize getSecondPieSize() {
        CTSecondPieSize cTSecondPieSize;
        synchronized (monitor()) {
            check_orphaned();
            cTSecondPieSize = (CTSecondPieSize) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTSecondPieSize == null) {
                cTSecondPieSize = null;
            }
        }
        return cTSecondPieSize;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTPieSer[] getSerArray() {
        return (CTPieSer[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTPieSer[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTChartLines[] getSerLinesArray() {
        return (CTChartLines[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTChartLines[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public List<CTChartLines> getSerLinesList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q96
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOfPieChartImpl.this.getSerLinesArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r96
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOfPieChartImpl.this.setSerLinesArray(((Integer) obj).intValue(), (CTChartLines) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s96
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOfPieChartImpl.this.insertNewSerLines(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t96
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOfPieChartImpl.this.removeSerLines(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u96
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOfPieChartImpl.this.sizeOfSerLinesArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public List<CTPieSer> getSerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l96
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOfPieChartImpl.this.getSerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m96
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOfPieChartImpl.this.setSerArray(((Integer) obj).intValue(), (CTPieSer) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n96
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOfPieChartImpl.this.insertNewSer(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o96
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOfPieChartImpl.this.removeSer(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p96
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOfPieChartImpl.this.sizeOfSerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTDouble getSplitPos() {
        CTDouble cTDouble;
        synchronized (monitor()) {
            check_orphaned();
            cTDouble = (CTDouble) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTDouble == null) {
                cTDouble = null;
            }
        }
        return cTDouble;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTSplitType getSplitType() {
        CTSplitType cTSplitType;
        synchronized (monitor()) {
            check_orphaned();
            cTSplitType = (CTSplitType) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTSplitType == null) {
                cTSplitType = null;
            }
        }
        return cTSplitType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTBoolean getVaryColors() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTBoolean == null) {
                cTBoolean = null;
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTPieSer insertNewSer(int i) {
        CTPieSer cTPieSer;
        synchronized (monitor()) {
            check_orphaned();
            cTPieSer = (CTPieSer) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTPieSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTChartLines insertNewSerLines(int i) {
        CTChartLines cTChartLines;
        synchronized (monitor()) {
            check_orphaned();
            cTChartLines = (CTChartLines) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTChartLines;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public boolean isSetCustSplit() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public boolean isSetDLbls() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public boolean isSetGapWidth() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public boolean isSetSecondPieSize() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public boolean isSetSplitPos() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public boolean isSetSplitType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public boolean isSetVaryColors() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void removeSer(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void removeSerLines(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setCustSplit(CTCustSplit cTCustSplit) {
        generatedSetterHelperImpl(cTCustSplit, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setDLbls(CTDLbls cTDLbls) {
        generatedSetterHelperImpl(cTDLbls, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setGapWidth(CTGapAmount cTGapAmount) {
        generatedSetterHelperImpl(cTGapAmount, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setOfPieType(CTOfPieType cTOfPieType) {
        generatedSetterHelperImpl(cTOfPieType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setSecondPieSize(CTSecondPieSize cTSecondPieSize) {
        generatedSetterHelperImpl(cTSecondPieSize, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setSerArray(CTPieSer[] cTPieSerArr) {
        check_orphaned();
        arraySetterHelper(cTPieSerArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setSerLinesArray(CTChartLines[] cTChartLinesArr) {
        check_orphaned();
        arraySetterHelper(cTChartLinesArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setSplitPos(CTDouble cTDouble) {
        generatedSetterHelperImpl(cTDouble, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setSplitType(CTSplitType cTSplitType) {
        generatedSetterHelperImpl(cTSplitType, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setVaryColors(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public int sizeOfSerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public int sizeOfSerLinesArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void unsetCustSplit() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void unsetDLbls() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void unsetGapWidth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void unsetSecondPieSize() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void unsetSplitPos() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void unsetSplitType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void unsetVaryColors() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTPieSer getSerArray(int i) {
        CTPieSer cTPieSer;
        synchronized (monitor()) {
            check_orphaned();
            cTPieSer = (CTPieSer) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTPieSer == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPieSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public CTChartLines getSerLinesArray(int i) {
        CTChartLines cTChartLines;
        synchronized (monitor()) {
            check_orphaned();
            cTChartLines = (CTChartLines) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTChartLines == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTChartLines;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setSerArray(int i, CTPieSer cTPieSer) {
        generatedSetterHelperImpl(cTPieSer, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTOfPieChart
    public void setSerLinesArray(int i, CTChartLines cTChartLines) {
        generatedSetterHelperImpl(cTChartLines, PROPERTY_QNAME[9], i, (short) 2);
    }
}
