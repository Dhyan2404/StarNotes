package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
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
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBoolean;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDPt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTErrBars;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTMarker;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerTx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTTrendline;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTUnsignedInt;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTLineSerImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;

/* loaded from: classes14.dex */
public class CTLineSerImpl extends XmlComplexContentImpl implements CTLineSer {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "idx"), new QName(XSSFRelation.NS_CHART, Constants.ATTRNAME_ORDER), new QName(XSSFRelation.NS_CHART, "tx"), new QName(XSSFRelation.NS_CHART, "spPr"), new QName(XSSFRelation.NS_CHART, "marker"), new QName(XSSFRelation.NS_CHART, "dPt"), new QName(XSSFRelation.NS_CHART, "dLbls"), new QName(XSSFRelation.NS_CHART, "trendline"), new QName(XSSFRelation.NS_CHART, "errBars"), new QName(XSSFRelation.NS_CHART, "cat"), new QName(XSSFRelation.NS_CHART, "val"), new QName(XSSFRelation.NS_CHART, "smooth"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTLineSerImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTAxDataSource addNewCat() {
        CTAxDataSource cTAxDataSource;
        synchronized (monitor()) {
            check_orphaned();
            cTAxDataSource = (CTAxDataSource) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTAxDataSource;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTDLbls addNewDLbls() {
        CTDLbls cTDLbls;
        synchronized (monitor()) {
            check_orphaned();
            cTDLbls = (CTDLbls) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTDLbls;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTDPt addNewDPt() {
        CTDPt cTDPt;
        synchronized (monitor()) {
            check_orphaned();
            cTDPt = (CTDPt) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTDPt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTErrBars addNewErrBars() {
        CTErrBars cTErrBars;
        synchronized (monitor()) {
            check_orphaned();
            cTErrBars = (CTErrBars) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTErrBars;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTUnsignedInt addNewIdx() {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTMarker addNewMarker() {
        CTMarker cTMarker;
        synchronized (monitor()) {
            check_orphaned();
            cTMarker = (CTMarker) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTMarker;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTUnsignedInt addNewOrder() {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTBoolean addNewSmooth() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTShapeProperties addNewSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTTrendline addNewTrendline() {
        CTTrendline cTTrendline;
        synchronized (monitor()) {
            check_orphaned();
            cTTrendline = (CTTrendline) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTTrendline;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTSerTx addNewTx() {
        CTSerTx cTSerTx;
        synchronized (monitor()) {
            check_orphaned();
            cTSerTx = (CTSerTx) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTSerTx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTNumDataSource addNewVal() {
        CTNumDataSource cTNumDataSource;
        synchronized (monitor()) {
            check_orphaned();
            cTNumDataSource = (CTNumDataSource) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTNumDataSource;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTAxDataSource getCat() {
        CTAxDataSource cTAxDataSource;
        synchronized (monitor()) {
            check_orphaned();
            cTAxDataSource = (CTAxDataSource) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTAxDataSource == null) {
                cTAxDataSource = null;
            }
        }
        return cTAxDataSource;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTDLbls getDLbls() {
        CTDLbls cTDLbls;
        synchronized (monitor()) {
            check_orphaned();
            cTDLbls = (CTDLbls) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTDLbls == null) {
                cTDLbls = null;
            }
        }
        return cTDLbls;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTDPt[] getDPtArray() {
        return (CTDPt[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTDPt[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public List<CTDPt> getDPtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ni5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLineSerImpl.this.getDPtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oi5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLineSerImpl.this.setDPtArray(((Integer) obj).intValue(), (CTDPt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pi5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLineSerImpl.this.insertNewDPt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qi5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLineSerImpl.this.removeDPt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ri5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLineSerImpl.this.sizeOfDPtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTErrBars getErrBars() {
        CTErrBars cTErrBars;
        synchronized (monitor()) {
            check_orphaned();
            cTErrBars = (CTErrBars) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTErrBars == null) {
                cTErrBars = null;
            }
        }
        return cTErrBars;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[12], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTUnsignedInt getIdx() {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTUnsignedInt == null) {
                cTUnsignedInt = null;
            }
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTMarker getMarker() {
        CTMarker cTMarker;
        synchronized (monitor()) {
            check_orphaned();
            cTMarker = (CTMarker) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTMarker == null) {
                cTMarker = null;
            }
        }
        return cTMarker;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTUnsignedInt getOrder() {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTUnsignedInt == null) {
                cTUnsignedInt = null;
            }
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTBoolean getSmooth() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[11], 0);
            if (cTBoolean == null) {
                cTBoolean = null;
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTShapeProperties getSpPr() {
        CTShapeProperties cTShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTShapeProperties = (CTShapeProperties) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTShapeProperties == null) {
                cTShapeProperties = null;
            }
        }
        return cTShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTTrendline[] getTrendlineArray() {
        return (CTTrendline[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTTrendline[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public List<CTTrendline> getTrendlineList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.si5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLineSerImpl.this.getTrendlineArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ti5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLineSerImpl.this.setTrendlineArray(((Integer) obj).intValue(), (CTTrendline) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ui5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLineSerImpl.this.insertNewTrendline(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vi5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLineSerImpl.this.removeTrendline(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wi5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLineSerImpl.this.sizeOfTrendlineArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTSerTx getTx() {
        CTSerTx cTSerTx;
        synchronized (monitor()) {
            check_orphaned();
            cTSerTx = (CTSerTx) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTSerTx == null) {
                cTSerTx = null;
            }
        }
        return cTSerTx;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTNumDataSource getVal() {
        CTNumDataSource cTNumDataSource;
        synchronized (monitor()) {
            check_orphaned();
            cTNumDataSource = (CTNumDataSource) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (cTNumDataSource == null) {
                cTNumDataSource = null;
            }
        }
        return cTNumDataSource;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTDPt insertNewDPt(int i) {
        CTDPt cTDPt;
        synchronized (monitor()) {
            check_orphaned();
            cTDPt = (CTDPt) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTDPt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTTrendline insertNewTrendline(int i) {
        CTTrendline cTTrendline;
        synchronized (monitor()) {
            check_orphaned();
            cTTrendline = (CTTrendline) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTTrendline;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public boolean isSetCat() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public boolean isSetDLbls() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public boolean isSetErrBars() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[12]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public boolean isSetMarker() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public boolean isSetSmooth() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[11]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public boolean isSetSpPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public boolean isSetTx() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public boolean isSetVal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void removeDPt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void removeTrendline(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setCat(CTAxDataSource cTAxDataSource) {
        generatedSetterHelperImpl(cTAxDataSource, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setDLbls(CTDLbls cTDLbls) {
        generatedSetterHelperImpl(cTDLbls, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setDPtArray(CTDPt[] cTDPtArr) {
        check_orphaned();
        arraySetterHelper(cTDPtArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setErrBars(CTErrBars cTErrBars) {
        generatedSetterHelperImpl(cTErrBars, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[12], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setIdx(CTUnsignedInt cTUnsignedInt) {
        generatedSetterHelperImpl(cTUnsignedInt, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setMarker(CTMarker cTMarker) {
        generatedSetterHelperImpl(cTMarker, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setOrder(CTUnsignedInt cTUnsignedInt) {
        generatedSetterHelperImpl(cTUnsignedInt, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setSmooth(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[11], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setSpPr(CTShapeProperties cTShapeProperties) {
        generatedSetterHelperImpl(cTShapeProperties, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setTrendlineArray(CTTrendline[] cTTrendlineArr) {
        check_orphaned();
        arraySetterHelper(cTTrendlineArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setTx(CTSerTx cTSerTx) {
        generatedSetterHelperImpl(cTSerTx, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setVal(CTNumDataSource cTNumDataSource) {
        generatedSetterHelperImpl(cTNumDataSource, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public int sizeOfDPtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public int sizeOfTrendlineArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void unsetCat() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void unsetDLbls() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void unsetErrBars() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void unsetMarker() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void unsetSmooth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void unsetSpPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void unsetTx() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void unsetVal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTDPt getDPtArray(int i) {
        CTDPt cTDPt;
        synchronized (monitor()) {
            check_orphaned();
            cTDPt = (CTDPt) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTDPt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDPt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public CTTrendline getTrendlineArray(int i) {
        CTTrendline cTTrendline;
        synchronized (monitor()) {
            check_orphaned();
            cTTrendline = (CTTrendline) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTTrendline == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTrendline;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setDPtArray(int i, CTDPt cTDPt) {
        generatedSetterHelperImpl(cTDPt, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer
    public void setTrendlineArray(int i, CTTrendline cTTrendline) {
        generatedSetterHelperImpl(cTTrendline, PROPERTY_QNAME[7], i, (short) 2);
    }
}
