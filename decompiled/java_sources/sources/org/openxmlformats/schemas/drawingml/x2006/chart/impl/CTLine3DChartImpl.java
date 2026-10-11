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
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTGapAmount;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTGrouping;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTUnsignedInt;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTLine3DChartImpl;

/* loaded from: classes14.dex */
public class CTLine3DChartImpl extends XmlComplexContentImpl implements CTLine3DChart {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "grouping"), new QName(XSSFRelation.NS_CHART, "varyColors"), new QName(XSSFRelation.NS_CHART, "ser"), new QName(XSSFRelation.NS_CHART, "dLbls"), new QName(XSSFRelation.NS_CHART, "dropLines"), new QName(XSSFRelation.NS_CHART, "gapDepth"), new QName(XSSFRelation.NS_CHART, "axId"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTLine3DChartImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTUnsignedInt addNewAxId() {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTDLbls addNewDLbls() {
        CTDLbls cTDLbls;
        synchronized (monitor()) {
            check_orphaned();
            cTDLbls = (CTDLbls) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTDLbls;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTChartLines addNewDropLines() {
        CTChartLines cTChartLines;
        synchronized (monitor()) {
            check_orphaned();
            cTChartLines = (CTChartLines) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTChartLines;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTGapAmount addNewGapDepth() {
        CTGapAmount cTGapAmount;
        synchronized (monitor()) {
            check_orphaned();
            cTGapAmount = (CTGapAmount) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTGapAmount;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTGrouping addNewGrouping() {
        CTGrouping cTGrouping;
        synchronized (monitor()) {
            check_orphaned();
            cTGrouping = (CTGrouping) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGrouping;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTLineSer addNewSer() {
        CTLineSer cTLineSer;
        synchronized (monitor()) {
            check_orphaned();
            cTLineSer = (CTLineSer) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTLineSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTBoolean addNewVaryColors() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTUnsignedInt[] getAxIdArray() {
        return (CTUnsignedInt[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTUnsignedInt[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public List<CTUnsignedInt> getAxIdList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.id5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLine3DChartImpl.this.getAxIdArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jd5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLine3DChartImpl.this.setAxIdArray(((Integer) obj).intValue(), (CTUnsignedInt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kd5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLine3DChartImpl.this.insertNewAxId(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ld5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLine3DChartImpl.this.removeAxId(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.md5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLine3DChartImpl.this.sizeOfAxIdArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTChartLines getDropLines() {
        CTChartLines cTChartLines;
        synchronized (monitor()) {
            check_orphaned();
            cTChartLines = (CTChartLines) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTChartLines == null) {
                cTChartLines = null;
            }
        }
        return cTChartLines;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTGapAmount getGapDepth() {
        CTGapAmount cTGapAmount;
        synchronized (monitor()) {
            check_orphaned();
            cTGapAmount = (CTGapAmount) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTGapAmount == null) {
                cTGapAmount = null;
            }
        }
        return cTGapAmount;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTGrouping getGrouping() {
        CTGrouping cTGrouping;
        synchronized (monitor()) {
            check_orphaned();
            cTGrouping = (CTGrouping) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGrouping == null) {
                cTGrouping = null;
            }
        }
        return cTGrouping;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTLineSer[] getSerArray() {
        return (CTLineSer[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTLineSer[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public List<CTLineSer> getSerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nd5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLine3DChartImpl.this.getSerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.od5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLine3DChartImpl.this.setSerArray(((Integer) obj).intValue(), (CTLineSer) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pd5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLine3DChartImpl.this.insertNewSer(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qd5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLine3DChartImpl.this.removeSer(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rd5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLine3DChartImpl.this.sizeOfSerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTUnsignedInt insertNewAxId(int i) {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTLineSer insertNewSer(int i) {
        CTLineSer cTLineSer;
        synchronized (monitor()) {
            check_orphaned();
            cTLineSer = (CTLineSer) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTLineSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public boolean isSetDLbls() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public boolean isSetDropLines() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public boolean isSetGapDepth() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void removeAxId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void removeSer(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void setAxIdArray(CTUnsignedInt[] cTUnsignedIntArr) {
        check_orphaned();
        arraySetterHelper(cTUnsignedIntArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void setDLbls(CTDLbls cTDLbls) {
        generatedSetterHelperImpl(cTDLbls, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void setDropLines(CTChartLines cTChartLines) {
        generatedSetterHelperImpl(cTChartLines, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void setGapDepth(CTGapAmount cTGapAmount) {
        generatedSetterHelperImpl(cTGapAmount, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void setGrouping(CTGrouping cTGrouping) {
        generatedSetterHelperImpl(cTGrouping, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void setSerArray(CTLineSer[] cTLineSerArr) {
        check_orphaned();
        arraySetterHelper(cTLineSerArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void setVaryColors(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public int sizeOfAxIdArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public int sizeOfSerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void unsetDLbls() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void unsetDropLines() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void unsetGapDepth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void unsetVaryColors() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTUnsignedInt getAxIdArray(int i) {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTUnsignedInt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public CTLineSer getSerArray(int i) {
        CTLineSer cTLineSer;
        synchronized (monitor()) {
            check_orphaned();
            cTLineSer = (CTLineSer) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTLineSer == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLineSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void setAxIdArray(int i, CTUnsignedInt cTUnsignedInt) {
        generatedSetterHelperImpl(cTUnsignedInt, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLine3DChart
    public void setSerArray(int i, CTLineSer cTLineSer) {
        generatedSetterHelperImpl(cTLineSer, PROPERTY_QNAME[2], i, (short) 2);
    }
}
