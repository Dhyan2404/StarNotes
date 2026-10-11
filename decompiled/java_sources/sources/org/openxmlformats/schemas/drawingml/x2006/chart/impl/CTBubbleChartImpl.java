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
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleScale;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSizeRepresents;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTUnsignedInt;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTBubbleChartImpl;

/* loaded from: classes14.dex */
public class CTBubbleChartImpl extends XmlComplexContentImpl implements CTBubbleChart {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "varyColors"), new QName(XSSFRelation.NS_CHART, "ser"), new QName(XSSFRelation.NS_CHART, "dLbls"), new QName(XSSFRelation.NS_CHART, "bubble3D"), new QName(XSSFRelation.NS_CHART, "bubbleScale"), new QName(XSSFRelation.NS_CHART, "showNegBubbles"), new QName(XSSFRelation.NS_CHART, "sizeRepresents"), new QName(XSSFRelation.NS_CHART, "axId"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTBubbleChartImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTUnsignedInt addNewAxId() {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBoolean addNewBubble3D() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBubbleScale addNewBubbleScale() {
        CTBubbleScale cTBubbleScale;
        synchronized (monitor()) {
            check_orphaned();
            cTBubbleScale = (CTBubbleScale) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTBubbleScale;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTDLbls addNewDLbls() {
        CTDLbls cTDLbls;
        synchronized (monitor()) {
            check_orphaned();
            cTDLbls = (CTDLbls) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTDLbls;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBubbleSer addNewSer() {
        CTBubbleSer cTBubbleSer;
        synchronized (monitor()) {
            check_orphaned();
            cTBubbleSer = (CTBubbleSer) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTBubbleSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBoolean addNewShowNegBubbles() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTSizeRepresents addNewSizeRepresents() {
        CTSizeRepresents cTSizeRepresents;
        synchronized (monitor()) {
            check_orphaned();
            cTSizeRepresents = (CTSizeRepresents) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTSizeRepresents;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBoolean addNewVaryColors() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTUnsignedInt[] getAxIdArray() {
        return (CTUnsignedInt[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTUnsignedInt[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public List<CTUnsignedInt> getAxIdList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t21
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBubbleChartImpl.this.getAxIdArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u21
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBubbleChartImpl.this.setAxIdArray(((Integer) obj).intValue(), (CTUnsignedInt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v21
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBubbleChartImpl.this.insertNewAxId(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w21
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBubbleChartImpl.this.removeAxId(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x21
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBubbleChartImpl.this.sizeOfAxIdArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBoolean getBubble3D() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTBoolean == null) {
                cTBoolean = null;
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBubbleScale getBubbleScale() {
        CTBubbleScale cTBubbleScale;
        synchronized (monitor()) {
            check_orphaned();
            cTBubbleScale = (CTBubbleScale) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTBubbleScale == null) {
                cTBubbleScale = null;
            }
        }
        return cTBubbleScale;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTDLbls getDLbls() {
        CTDLbls cTDLbls;
        synchronized (monitor()) {
            check_orphaned();
            cTDLbls = (CTDLbls) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTDLbls == null) {
                cTDLbls = null;
            }
        }
        return cTDLbls;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBubbleSer[] getSerArray() {
        return (CTBubbleSer[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTBubbleSer[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public List<CTBubbleSer> getSerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y21
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBubbleChartImpl.this.getSerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z21
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBubbleChartImpl.this.setSerArray(((Integer) obj).intValue(), (CTBubbleSer) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a31
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBubbleChartImpl.this.insertNewSer(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b31
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBubbleChartImpl.this.removeSer(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c31
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBubbleChartImpl.this.sizeOfSerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBoolean getShowNegBubbles() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTBoolean == null) {
                cTBoolean = null;
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTSizeRepresents getSizeRepresents() {
        CTSizeRepresents cTSizeRepresents;
        synchronized (monitor()) {
            check_orphaned();
            cTSizeRepresents = (CTSizeRepresents) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTSizeRepresents == null) {
                cTSizeRepresents = null;
            }
        }
        return cTSizeRepresents;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBoolean getVaryColors() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBoolean == null) {
                cTBoolean = null;
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTUnsignedInt insertNewAxId(int i) {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBubbleSer insertNewSer(int i) {
        CTBubbleSer cTBubbleSer;
        synchronized (monitor()) {
            check_orphaned();
            cTBubbleSer = (CTBubbleSer) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTBubbleSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public boolean isSetBubble3D() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public boolean isSetBubbleScale() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public boolean isSetDLbls() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public boolean isSetShowNegBubbles() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public boolean isSetSizeRepresents() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public boolean isSetVaryColors() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void removeAxId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void removeSer(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setAxIdArray(CTUnsignedInt[] cTUnsignedIntArr) {
        check_orphaned();
        arraySetterHelper(cTUnsignedIntArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setBubble3D(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setBubbleScale(CTBubbleScale cTBubbleScale) {
        generatedSetterHelperImpl(cTBubbleScale, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setDLbls(CTDLbls cTDLbls) {
        generatedSetterHelperImpl(cTDLbls, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setSerArray(CTBubbleSer[] cTBubbleSerArr) {
        check_orphaned();
        arraySetterHelper(cTBubbleSerArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setShowNegBubbles(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setSizeRepresents(CTSizeRepresents cTSizeRepresents) {
        generatedSetterHelperImpl(cTSizeRepresents, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setVaryColors(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public int sizeOfAxIdArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public int sizeOfSerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void unsetBubble3D() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void unsetBubbleScale() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void unsetDLbls() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void unsetShowNegBubbles() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void unsetSizeRepresents() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void unsetVaryColors() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTUnsignedInt getAxIdArray(int i) {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTUnsignedInt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public CTBubbleSer getSerArray(int i) {
        CTBubbleSer cTBubbleSer;
        synchronized (monitor()) {
            check_orphaned();
            cTBubbleSer = (CTBubbleSer) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTBubbleSer == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBubbleSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setAxIdArray(int i, CTUnsignedInt cTUnsignedInt) {
        generatedSetterHelperImpl(cTUnsignedInt, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart
    public void setSerArray(int i, CTBubbleSer cTBubbleSer) {
        generatedSetterHelperImpl(cTBubbleSer, PROPERTY_QNAME[1], i, (short) 2);
    }
}
