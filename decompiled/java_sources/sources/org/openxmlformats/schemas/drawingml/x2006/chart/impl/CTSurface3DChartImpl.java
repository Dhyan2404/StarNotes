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
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBandFmts;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBoolean;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSurfaceSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTUnsignedInt;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTSurface3DChartImpl;

/* loaded from: classes14.dex */
public class CTSurface3DChartImpl extends XmlComplexContentImpl implements CTSurface3DChart {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "wireframe"), new QName(XSSFRelation.NS_CHART, "ser"), new QName(XSSFRelation.NS_CHART, "bandFmts"), new QName(XSSFRelation.NS_CHART, "axId"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTSurface3DChartImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTUnsignedInt addNewAxId() {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTBandFmts addNewBandFmts() {
        CTBandFmts cTBandFmts;
        synchronized (monitor()) {
            check_orphaned();
            cTBandFmts = (CTBandFmts) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBandFmts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTSurfaceSer addNewSer() {
        CTSurfaceSer cTSurfaceSer;
        synchronized (monitor()) {
            check_orphaned();
            cTSurfaceSer = (CTSurfaceSer) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSurfaceSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTBoolean addNewWireframe() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTUnsignedInt[] getAxIdArray() {
        return (CTUnsignedInt[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTUnsignedInt[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public List<CTUnsignedInt> getAxIdList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y5c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSurface3DChartImpl.this.getAxIdArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z5c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSurface3DChartImpl.this.setAxIdArray(((Integer) obj).intValue(), (CTUnsignedInt) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a6c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSurface3DChartImpl.this.insertNewAxId(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b6c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSurface3DChartImpl.this.removeAxId(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c6c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSurface3DChartImpl.this.sizeOfAxIdArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTBandFmts getBandFmts() {
        CTBandFmts cTBandFmts;
        synchronized (monitor()) {
            check_orphaned();
            cTBandFmts = (CTBandFmts) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTBandFmts == null) {
                cTBandFmts = null;
            }
        }
        return cTBandFmts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTSurfaceSer[] getSerArray() {
        return (CTSurfaceSer[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTSurfaceSer[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public List<CTSurfaceSer> getSerList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d6c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSurface3DChartImpl.this.getSerArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e6c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSurface3DChartImpl.this.setSerArray(((Integer) obj).intValue(), (CTSurfaceSer) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.f6c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSurface3DChartImpl.this.insertNewSer(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g6c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSurface3DChartImpl.this.removeSer(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.h6c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSurface3DChartImpl.this.sizeOfSerArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTBoolean getWireframe() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTUnsignedInt insertNewAxId(int i) {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTSurfaceSer insertNewSer(int i) {
        CTSurfaceSer cTSurfaceSer;
        synchronized (monitor()) {
            check_orphaned();
            cTSurfaceSer = (CTSurfaceSer) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTSurfaceSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public boolean isSetBandFmts() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public boolean isSetWireframe() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void removeAxId(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void removeSer(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void setAxIdArray(CTUnsignedInt[] cTUnsignedIntArr) {
        check_orphaned();
        arraySetterHelper(cTUnsignedIntArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void setBandFmts(CTBandFmts cTBandFmts) {
        generatedSetterHelperImpl(cTBandFmts, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void setSerArray(CTSurfaceSer[] cTSurfaceSerArr) {
        check_orphaned();
        arraySetterHelper(cTSurfaceSerArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void setWireframe(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public int sizeOfAxIdArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public int sizeOfSerArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void unsetBandFmts() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void unsetWireframe() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTUnsignedInt getAxIdArray(int i) {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTUnsignedInt == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public CTSurfaceSer getSerArray(int i) {
        CTSurfaceSer cTSurfaceSer;
        synchronized (monitor()) {
            check_orphaned();
            cTSurfaceSer = (CTSurfaceSer) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTSurfaceSer == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSurfaceSer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void setAxIdArray(int i, CTUnsignedInt cTUnsignedInt) {
        generatedSetterHelperImpl(cTUnsignedInt, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart
    public void setSerArray(int i, CTSurfaceSer cTSurfaceSer) {
        generatedSetterHelperImpl(cTSurfaceSer, PROPERTY_QNAME[1], i, (short) 2);
    }
}
