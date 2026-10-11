package org.openxmlformats.schemas.presentationml.x2006.main.impl;

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
import org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLBuildDiagram;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLBuildParagraph;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLGraphicalObjectBuild;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLOleBuildChart;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTBuildListImpl;

/* loaded from: classes14.dex */
public class CTBuildListImpl extends XmlComplexContentImpl implements CTBuildList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "bldP"), new QName(XSSFRelation.NS_PRESENTATIONML, "bldDgm"), new QName(XSSFRelation.NS_PRESENTATIONML, "bldOleChart"), new QName(XSSFRelation.NS_PRESENTATIONML, "bldGraphic")};
    private static final long serialVersionUID = 1;

    public CTBuildListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLBuildDiagram addNewBldDgm() {
        CTTLBuildDiagram cTTLBuildDiagram;
        synchronized (monitor()) {
            check_orphaned();
            cTTLBuildDiagram = (CTTLBuildDiagram) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLBuildDiagram;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLGraphicalObjectBuild addNewBldGraphic() {
        CTTLGraphicalObjectBuild cTTLGraphicalObjectBuild;
        synchronized (monitor()) {
            check_orphaned();
            cTTLGraphicalObjectBuild = (CTTLGraphicalObjectBuild) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTTLGraphicalObjectBuild;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLOleBuildChart addNewBldOleChart() {
        CTTLOleBuildChart cTTLOleBuildChart;
        synchronized (monitor()) {
            check_orphaned();
            cTTLOleBuildChart = (CTTLOleBuildChart) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTLOleBuildChart;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLBuildParagraph addNewBldP() {
        CTTLBuildParagraph cTTLBuildParagraph;
        synchronized (monitor()) {
            check_orphaned();
            cTTLBuildParagraph = (CTTLBuildParagraph) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLBuildParagraph;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLBuildDiagram[] getBldDgmArray() {
        return (CTTLBuildDiagram[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTTLBuildDiagram[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public List<CTTLBuildDiagram> getBldDgmList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y31
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBuildListImpl.this.getBldDgmArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z31
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBuildListImpl.this.setBldDgmArray(((Integer) obj).intValue(), (CTTLBuildDiagram) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a41
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBuildListImpl.this.insertNewBldDgm(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b41
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBuildListImpl.this.removeBldDgm(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c41
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBuildListImpl.this.sizeOfBldDgmArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLGraphicalObjectBuild[] getBldGraphicArray() {
        return (CTTLGraphicalObjectBuild[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTTLGraphicalObjectBuild[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public List<CTTLGraphicalObjectBuild> getBldGraphicList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t31
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBuildListImpl.this.getBldGraphicArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u31
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBuildListImpl.this.setBldGraphicArray(((Integer) obj).intValue(), (CTTLGraphicalObjectBuild) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v31
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBuildListImpl.this.insertNewBldGraphic(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w31
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBuildListImpl.this.removeBldGraphic(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x31
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBuildListImpl.this.sizeOfBldGraphicArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLOleBuildChart[] getBldOleChartArray() {
        return (CTTLOleBuildChart[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTTLOleBuildChart[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public List<CTTLOleBuildChart> getBldOleChartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h41
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBuildListImpl.this.getBldOleChartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i41
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBuildListImpl.this.setBldOleChartArray(((Integer) obj).intValue(), (CTTLOleBuildChart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j41
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBuildListImpl.this.insertNewBldOleChart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k41
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBuildListImpl.this.removeBldOleChart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l41
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBuildListImpl.this.sizeOfBldOleChartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLBuildParagraph[] getBldPArray() {
        return (CTTLBuildParagraph[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTLBuildParagraph[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public List<CTTLBuildParagraph> getBldPList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s31
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBuildListImpl.this.getBldPArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d41
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBuildListImpl.this.setBldPArray(((Integer) obj).intValue(), (CTTLBuildParagraph) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e41
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBuildListImpl.this.insertNewBldP(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f41
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBuildListImpl.this.removeBldP(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g41
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBuildListImpl.this.sizeOfBldPArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLBuildDiagram insertNewBldDgm(int i) {
        CTTLBuildDiagram cTTLBuildDiagram;
        synchronized (monitor()) {
            check_orphaned();
            cTTLBuildDiagram = (CTTLBuildDiagram) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTTLBuildDiagram;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLGraphicalObjectBuild insertNewBldGraphic(int i) {
        CTTLGraphicalObjectBuild cTTLGraphicalObjectBuild;
        synchronized (monitor()) {
            check_orphaned();
            cTTLGraphicalObjectBuild = (CTTLGraphicalObjectBuild) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTTLGraphicalObjectBuild;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLOleBuildChart insertNewBldOleChart(int i) {
        CTTLOleBuildChart cTTLOleBuildChart;
        synchronized (monitor()) {
            check_orphaned();
            cTTLOleBuildChart = (CTTLOleBuildChart) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTTLOleBuildChart;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLBuildParagraph insertNewBldP(int i) {
        CTTLBuildParagraph cTTLBuildParagraph;
        synchronized (monitor()) {
            check_orphaned();
            cTTLBuildParagraph = (CTTLBuildParagraph) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTLBuildParagraph;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void removeBldDgm(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void removeBldGraphic(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void removeBldOleChart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void removeBldP(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void setBldDgmArray(CTTLBuildDiagram[] cTTLBuildDiagramArr) {
        check_orphaned();
        arraySetterHelper(cTTLBuildDiagramArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void setBldGraphicArray(CTTLGraphicalObjectBuild[] cTTLGraphicalObjectBuildArr) {
        check_orphaned();
        arraySetterHelper(cTTLGraphicalObjectBuildArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void setBldOleChartArray(CTTLOleBuildChart[] cTTLOleBuildChartArr) {
        check_orphaned();
        arraySetterHelper(cTTLOleBuildChartArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void setBldPArray(CTTLBuildParagraph[] cTTLBuildParagraphArr) {
        check_orphaned();
        arraySetterHelper(cTTLBuildParagraphArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public int sizeOfBldDgmArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public int sizeOfBldGraphicArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public int sizeOfBldOleChartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public int sizeOfBldPArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLBuildDiagram getBldDgmArray(int i) {
        CTTLBuildDiagram cTTLBuildDiagram;
        synchronized (monitor()) {
            check_orphaned();
            cTTLBuildDiagram = (CTTLBuildDiagram) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTTLBuildDiagram == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLBuildDiagram;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLGraphicalObjectBuild getBldGraphicArray(int i) {
        CTTLGraphicalObjectBuild cTTLGraphicalObjectBuild;
        synchronized (monitor()) {
            check_orphaned();
            cTTLGraphicalObjectBuild = (CTTLGraphicalObjectBuild) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTTLGraphicalObjectBuild == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLGraphicalObjectBuild;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLOleBuildChart getBldOleChartArray(int i) {
        CTTLOleBuildChart cTTLOleBuildChart;
        synchronized (monitor()) {
            check_orphaned();
            cTTLOleBuildChart = (CTTLOleBuildChart) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTTLOleBuildChart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLOleBuildChart;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public CTTLBuildParagraph getBldPArray(int i) {
        CTTLBuildParagraph cTTLBuildParagraph;
        synchronized (monitor()) {
            check_orphaned();
            cTTLBuildParagraph = (CTTLBuildParagraph) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTLBuildParagraph == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLBuildParagraph;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void setBldDgmArray(int i, CTTLBuildDiagram cTTLBuildDiagram) {
        generatedSetterHelperImpl(cTTLBuildDiagram, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void setBldGraphicArray(int i, CTTLGraphicalObjectBuild cTTLGraphicalObjectBuild) {
        generatedSetterHelperImpl(cTTLGraphicalObjectBuild, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void setBldOleChartArray(int i, CTTLOleBuildChart cTTLOleBuildChart) {
        generatedSetterHelperImpl(cTTLOleBuildChart, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTBuildList
    public void setBldPArray(int i, CTTLBuildParagraph cTTLBuildParagraph) {
        generatedSetterHelperImpl(cTTLBuildParagraph, PROPERTY_QNAME[0], i, (short) 2);
    }
}
