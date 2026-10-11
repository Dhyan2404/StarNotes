package org.openxmlformats.schemas.drawingml.x2006.main.impl;

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
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGradientFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNoFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSolidColorFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTFillStyleListImpl;

/* loaded from: classes14.dex */
public class CTFillStyleListImpl extends XmlComplexContentImpl implements CTFillStyleList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "noFill"), new QName(XSSFRelation.NS_DRAWINGML, "solidFill"), new QName(XSSFRelation.NS_DRAWINGML, "gradFill"), new QName(XSSFRelation.NS_DRAWINGML, "blipFill"), new QName(XSSFRelation.NS_DRAWINGML, "pattFill"), new QName(XSSFRelation.NS_DRAWINGML, "grpFill")};
    private static final long serialVersionUID = 1;

    public CTFillStyleListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTBlipFillProperties addNewBlipFill() {
        CTBlipFillProperties cTBlipFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTBlipFillProperties = (CTBlipFillProperties) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTBlipFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTGradientFillProperties addNewGradFill() {
        CTGradientFillProperties cTGradientFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGradientFillProperties = (CTGradientFillProperties) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTGradientFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTGroupFillProperties addNewGrpFill() {
        CTGroupFillProperties cTGroupFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupFillProperties = (CTGroupFillProperties) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTGroupFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTNoFillProperties addNewNoFill() {
        CTNoFillProperties cTNoFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNoFillProperties = (CTNoFillProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNoFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTPatternFillProperties addNewPattFill() {
        CTPatternFillProperties cTPatternFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTPatternFillProperties = (CTPatternFillProperties) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTPatternFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTSolidColorFillProperties addNewSolidFill() {
        CTSolidColorFillProperties cTSolidColorFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTSolidColorFillProperties = (CTSolidColorFillProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSolidColorFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTBlipFillProperties[] getBlipFillArray() {
        return (CTBlipFillProperties[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTBlipFillProperties[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public List<CTBlipFillProperties> getBlipFillList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xu3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.getBlipFillArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iv3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFillStyleListImpl.this.setBlipFillArray(((Integer) obj).intValue(), (CTBlipFillProperties) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tv3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.insertNewBlipFill(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.uv3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFillStyleListImpl.this.removeBlipFill(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vv3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFillStyleListImpl.this.sizeOfBlipFillArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTGradientFillProperties[] getGradFillArray() {
        return (CTGradientFillProperties[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTGradientFillProperties[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public List<CTGradientFillProperties> getGradFillList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jv3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.getGradFillArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kv3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFillStyleListImpl.this.setGradFillArray(((Integer) obj).intValue(), (CTGradientFillProperties) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lv3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.insertNewGradFill(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mv3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFillStyleListImpl.this.removeGradFill(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nv3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFillStyleListImpl.this.sizeOfGradFillArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTGroupFillProperties[] getGrpFillArray() {
        return (CTGroupFillProperties[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTGroupFillProperties[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public List<CTGroupFillProperties> getGrpFillList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ov3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.getGrpFillArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pv3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFillStyleListImpl.this.setGrpFillArray(((Integer) obj).intValue(), (CTGroupFillProperties) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qv3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.insertNewGrpFill(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rv3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFillStyleListImpl.this.removeGrpFill(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sv3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFillStyleListImpl.this.sizeOfGrpFillArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTNoFillProperties[] getNoFillArray() {
        return (CTNoFillProperties[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTNoFillProperties[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public List<CTNoFillProperties> getNoFillList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wv3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.getNoFillArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xv3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFillStyleListImpl.this.setNoFillArray(((Integer) obj).intValue(), (CTNoFillProperties) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yv3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.insertNewNoFill(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zv3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFillStyleListImpl.this.removeNoFill(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.aw3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFillStyleListImpl.this.sizeOfNoFillArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTPatternFillProperties[] getPattFillArray() {
        return (CTPatternFillProperties[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTPatternFillProperties[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public List<CTPatternFillProperties> getPattFillList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dv3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.getPattFillArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ev3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFillStyleListImpl.this.setPattFillArray(((Integer) obj).intValue(), (CTPatternFillProperties) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fv3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.insertNewPattFill(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gv3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFillStyleListImpl.this.removePattFill(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hv3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFillStyleListImpl.this.sizeOfPattFillArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTSolidColorFillProperties[] getSolidFillArray() {
        return (CTSolidColorFillProperties[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTSolidColorFillProperties[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public List<CTSolidColorFillProperties> getSolidFillList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yu3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.getSolidFillArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zu3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFillStyleListImpl.this.setSolidFillArray(((Integer) obj).intValue(), (CTSolidColorFillProperties) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.av3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFillStyleListImpl.this.insertNewSolidFill(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bv3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFillStyleListImpl.this.removeSolidFill(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cv3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFillStyleListImpl.this.sizeOfSolidFillArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTBlipFillProperties insertNewBlipFill(int i) {
        CTBlipFillProperties cTBlipFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTBlipFillProperties = (CTBlipFillProperties) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTBlipFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTGradientFillProperties insertNewGradFill(int i) {
        CTGradientFillProperties cTGradientFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGradientFillProperties = (CTGradientFillProperties) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTGradientFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTGroupFillProperties insertNewGrpFill(int i) {
        CTGroupFillProperties cTGroupFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupFillProperties = (CTGroupFillProperties) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTGroupFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTNoFillProperties insertNewNoFill(int i) {
        CTNoFillProperties cTNoFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNoFillProperties = (CTNoFillProperties) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTNoFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTPatternFillProperties insertNewPattFill(int i) {
        CTPatternFillProperties cTPatternFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTPatternFillProperties = (CTPatternFillProperties) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTPatternFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTSolidColorFillProperties insertNewSolidFill(int i) {
        CTSolidColorFillProperties cTSolidColorFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTSolidColorFillProperties = (CTSolidColorFillProperties) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTSolidColorFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void removeBlipFill(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void removeGradFill(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void removeGrpFill(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void removeNoFill(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void removePattFill(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void removeSolidFill(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setBlipFillArray(CTBlipFillProperties[] cTBlipFillPropertiesArr) {
        check_orphaned();
        arraySetterHelper(cTBlipFillPropertiesArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setGradFillArray(CTGradientFillProperties[] cTGradientFillPropertiesArr) {
        check_orphaned();
        arraySetterHelper(cTGradientFillPropertiesArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setGrpFillArray(CTGroupFillProperties[] cTGroupFillPropertiesArr) {
        check_orphaned();
        arraySetterHelper(cTGroupFillPropertiesArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setNoFillArray(CTNoFillProperties[] cTNoFillPropertiesArr) {
        check_orphaned();
        arraySetterHelper(cTNoFillPropertiesArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setPattFillArray(CTPatternFillProperties[] cTPatternFillPropertiesArr) {
        check_orphaned();
        arraySetterHelper(cTPatternFillPropertiesArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setSolidFillArray(CTSolidColorFillProperties[] cTSolidColorFillPropertiesArr) {
        check_orphaned();
        arraySetterHelper(cTSolidColorFillPropertiesArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public int sizeOfBlipFillArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public int sizeOfGradFillArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public int sizeOfGrpFillArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public int sizeOfNoFillArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public int sizeOfPattFillArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public int sizeOfSolidFillArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTBlipFillProperties getBlipFillArray(int i) {
        CTBlipFillProperties cTBlipFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTBlipFillProperties = (CTBlipFillProperties) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTBlipFillProperties == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBlipFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTGradientFillProperties getGradFillArray(int i) {
        CTGradientFillProperties cTGradientFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGradientFillProperties = (CTGradientFillProperties) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTGradientFillProperties == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGradientFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTGroupFillProperties getGrpFillArray(int i) {
        CTGroupFillProperties cTGroupFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupFillProperties = (CTGroupFillProperties) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTGroupFillProperties == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGroupFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTNoFillProperties getNoFillArray(int i) {
        CTNoFillProperties cTNoFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTNoFillProperties = (CTNoFillProperties) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTNoFillProperties == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNoFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTPatternFillProperties getPattFillArray(int i) {
        CTPatternFillProperties cTPatternFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTPatternFillProperties = (CTPatternFillProperties) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTPatternFillProperties == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPatternFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public CTSolidColorFillProperties getSolidFillArray(int i) {
        CTSolidColorFillProperties cTSolidColorFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTSolidColorFillProperties = (CTSolidColorFillProperties) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTSolidColorFillProperties == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSolidColorFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setBlipFillArray(int i, CTBlipFillProperties cTBlipFillProperties) {
        generatedSetterHelperImpl(cTBlipFillProperties, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setGradFillArray(int i, CTGradientFillProperties cTGradientFillProperties) {
        generatedSetterHelperImpl(cTGradientFillProperties, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setGrpFillArray(int i, CTGroupFillProperties cTGroupFillProperties) {
        generatedSetterHelperImpl(cTGroupFillProperties, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setNoFillArray(int i, CTNoFillProperties cTNoFillProperties) {
        generatedSetterHelperImpl(cTNoFillProperties, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setPattFillArray(int i, CTPatternFillProperties cTPatternFillProperties) {
        generatedSetterHelperImpl(cTPatternFillProperties, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFillStyleList
    public void setSolidFillArray(int i, CTSolidColorFillProperties cTSolidColorFillProperties) {
        generatedSetterHelperImpl(cTSolidColorFillProperties, PROPERTY_QNAME[1], i, (short) 2);
    }
}
