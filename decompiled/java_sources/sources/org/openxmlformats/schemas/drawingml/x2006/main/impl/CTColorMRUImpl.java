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
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHslColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSystemColor;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTColorMRUImpl;

/* loaded from: classes14.dex */
public class CTColorMRUImpl extends XmlComplexContentImpl implements CTColorMRU {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "scrgbClr"), new QName(XSSFRelation.NS_DRAWINGML, "srgbClr"), new QName(XSSFRelation.NS_DRAWINGML, "hslClr"), new QName(XSSFRelation.NS_DRAWINGML, "sysClr"), new QName(XSSFRelation.NS_DRAWINGML, "schemeClr"), new QName(XSSFRelation.NS_DRAWINGML, "prstClr")};
    private static final long serialVersionUID = 1;

    public CTColorMRUImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTHslColor addNewHslClr() {
        CTHslColor cTHslColor;
        synchronized (monitor()) {
            check_orphaned();
            cTHslColor = (CTHslColor) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTHslColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTPresetColor addNewPrstClr() {
        CTPresetColor cTPresetColor;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetColor = (CTPresetColor) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPresetColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSchemeColor addNewSchemeClr() {
        CTSchemeColor cTSchemeColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSchemeColor = (CTSchemeColor) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTSchemeColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTScRgbColor addNewScrgbClr() {
        CTScRgbColor cTScRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTScRgbColor = (CTScRgbColor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTScRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSRgbColor addNewSrgbClr() {
        CTSRgbColor cTSRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSRgbColor = (CTSRgbColor) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSystemColor addNewSysClr() {
        CTSystemColor cTSystemColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSystemColor = (CTSystemColor) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTSystemColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTHslColor[] getHslClrArray() {
        return (CTHslColor[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTHslColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public List<CTHslColor> getHslClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bz1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.getHslClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cz1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorMRUImpl.this.setHslClrArray(((Integer) obj).intValue(), (CTHslColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dz1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.insertNewHslClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ez1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorMRUImpl.this.removeHslClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fz1
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorMRUImpl.this.sizeOfHslClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTPresetColor[] getPrstClrArray() {
        return (CTPresetColor[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTPresetColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public List<CTPresetColor> getPrstClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wy1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.getPrstClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xy1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorMRUImpl.this.setPrstClrArray(((Integer) obj).intValue(), (CTPresetColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yy1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.insertNewPrstClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zy1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorMRUImpl.this.removePrstClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.az1
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorMRUImpl.this.sizeOfPrstClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSchemeColor[] getSchemeClrArray() {
        return (CTSchemeColor[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTSchemeColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public List<CTSchemeColor> getSchemeClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mz1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.getSchemeClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nz1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorMRUImpl.this.setSchemeClrArray(((Integer) obj).intValue(), (CTSchemeColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oz1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.insertNewSchemeClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pz1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorMRUImpl.this.removeSchemeClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qz1
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorMRUImpl.this.sizeOfSchemeClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTScRgbColor[] getScrgbClrArray() {
        return (CTScRgbColor[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTScRgbColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public List<CTScRgbColor> getScrgbClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hz1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.getScrgbClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iz1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorMRUImpl.this.setScrgbClrArray(((Integer) obj).intValue(), (CTScRgbColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jz1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.insertNewScrgbClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kz1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorMRUImpl.this.removeScrgbClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lz1
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorMRUImpl.this.sizeOfScrgbClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSRgbColor[] getSrgbClrArray() {
        return (CTSRgbColor[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTSRgbColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public List<CTSRgbColor> getSrgbClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vy1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.getSrgbClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gz1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorMRUImpl.this.setSrgbClrArray(((Integer) obj).intValue(), (CTSRgbColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rz1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.insertNewSrgbClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sz1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorMRUImpl.this.removeSrgbClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tz1
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorMRUImpl.this.sizeOfSrgbClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSystemColor[] getSysClrArray() {
        return (CTSystemColor[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTSystemColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public List<CTSystemColor> getSysClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uz1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.getSysClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vz1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorMRUImpl.this.setSysClrArray(((Integer) obj).intValue(), (CTSystemColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wz1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorMRUImpl.this.insertNewSysClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xz1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorMRUImpl.this.removeSysClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yz1
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorMRUImpl.this.sizeOfSysClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTHslColor insertNewHslClr(int i) {
        CTHslColor cTHslColor;
        synchronized (monitor()) {
            check_orphaned();
            cTHslColor = (CTHslColor) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTHslColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTPresetColor insertNewPrstClr(int i) {
        CTPresetColor cTPresetColor;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetColor = (CTPresetColor) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTPresetColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSchemeColor insertNewSchemeClr(int i) {
        CTSchemeColor cTSchemeColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSchemeColor = (CTSchemeColor) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTSchemeColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTScRgbColor insertNewScrgbClr(int i) {
        CTScRgbColor cTScRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTScRgbColor = (CTScRgbColor) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTScRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSRgbColor insertNewSrgbClr(int i) {
        CTSRgbColor cTSRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSRgbColor = (CTSRgbColor) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTSRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSystemColor insertNewSysClr(int i) {
        CTSystemColor cTSystemColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSystemColor = (CTSystemColor) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTSystemColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void removeHslClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void removePrstClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void removeSchemeClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void removeScrgbClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void removeSrgbClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void removeSysClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setHslClrArray(CTHslColor[] cTHslColorArr) {
        check_orphaned();
        arraySetterHelper(cTHslColorArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setPrstClrArray(CTPresetColor[] cTPresetColorArr) {
        check_orphaned();
        arraySetterHelper(cTPresetColorArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setSchemeClrArray(CTSchemeColor[] cTSchemeColorArr) {
        check_orphaned();
        arraySetterHelper(cTSchemeColorArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setScrgbClrArray(CTScRgbColor[] cTScRgbColorArr) {
        check_orphaned();
        arraySetterHelper(cTScRgbColorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setSrgbClrArray(CTSRgbColor[] cTSRgbColorArr) {
        check_orphaned();
        arraySetterHelper(cTSRgbColorArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setSysClrArray(CTSystemColor[] cTSystemColorArr) {
        check_orphaned();
        arraySetterHelper(cTSystemColorArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public int sizeOfHslClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public int sizeOfPrstClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public int sizeOfSchemeClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public int sizeOfScrgbClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public int sizeOfSrgbClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public int sizeOfSysClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTHslColor getHslClrArray(int i) {
        CTHslColor cTHslColor;
        synchronized (monitor()) {
            check_orphaned();
            cTHslColor = (CTHslColor) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTHslColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHslColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTPresetColor getPrstClrArray(int i) {
        CTPresetColor cTPresetColor;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetColor = (CTPresetColor) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTPresetColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPresetColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSchemeColor getSchemeClrArray(int i) {
        CTSchemeColor cTSchemeColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSchemeColor = (CTSchemeColor) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTSchemeColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSchemeColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTScRgbColor getScrgbClrArray(int i) {
        CTScRgbColor cTScRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTScRgbColor = (CTScRgbColor) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTScRgbColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTScRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSRgbColor getSrgbClrArray(int i) {
        CTSRgbColor cTSRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSRgbColor = (CTSRgbColor) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTSRgbColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public CTSystemColor getSysClrArray(int i) {
        CTSystemColor cTSystemColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSystemColor = (CTSystemColor) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTSystemColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSystemColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setHslClrArray(int i, CTHslColor cTHslColor) {
        generatedSetterHelperImpl(cTHslColor, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setPrstClrArray(int i, CTPresetColor cTPresetColor) {
        generatedSetterHelperImpl(cTPresetColor, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setSchemeClrArray(int i, CTSchemeColor cTSchemeColor) {
        generatedSetterHelperImpl(cTSchemeColor, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setScrgbClrArray(int i, CTScRgbColor cTScRgbColor) {
        generatedSetterHelperImpl(cTScRgbColor, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setSrgbClrArray(int i, CTSRgbColor cTSRgbColor) {
        generatedSetterHelperImpl(cTSRgbColor, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorMRU
    public void setSysClrArray(int i, CTSystemColor cTSystemColor) {
        generatedSetterHelperImpl(cTSystemColor, PROPERTY_QNAME[3], i, (short) 2);
    }
}
