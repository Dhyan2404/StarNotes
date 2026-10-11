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
import org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHslColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSystemColor;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTDuotoneEffectImpl;

/* loaded from: classes14.dex */
public class CTDuotoneEffectImpl extends XmlComplexContentImpl implements CTDuotoneEffect {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "scrgbClr"), new QName(XSSFRelation.NS_DRAWINGML, "srgbClr"), new QName(XSSFRelation.NS_DRAWINGML, "hslClr"), new QName(XSSFRelation.NS_DRAWINGML, "sysClr"), new QName(XSSFRelation.NS_DRAWINGML, "schemeClr"), new QName(XSSFRelation.NS_DRAWINGML, "prstClr")};
    private static final long serialVersionUID = 1;

    public CTDuotoneEffectImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTHslColor addNewHslClr() {
        CTHslColor cTHslColor;
        synchronized (monitor()) {
            check_orphaned();
            cTHslColor = (CTHslColor) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTHslColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTPresetColor addNewPrstClr() {
        CTPresetColor cTPresetColor;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetColor = (CTPresetColor) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPresetColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTSchemeColor addNewSchemeClr() {
        CTSchemeColor cTSchemeColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSchemeColor = (CTSchemeColor) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTSchemeColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTScRgbColor addNewScrgbClr() {
        CTScRgbColor cTScRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTScRgbColor = (CTScRgbColor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTScRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTSRgbColor addNewSrgbClr() {
        CTSRgbColor cTSRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSRgbColor = (CTSRgbColor) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTSystemColor addNewSysClr() {
        CTSystemColor cTSystemColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSystemColor = (CTSystemColor) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTSystemColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTHslColor[] getHslClrArray() {
        return (CTHslColor[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTHslColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public List<CTHslColor> getHslClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mi3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.getHslClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ni3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDuotoneEffectImpl.this.setHslClrArray(((Integer) obj).intValue(), (CTHslColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oi3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.insertNewHslClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pi3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDuotoneEffectImpl.this.removeHslClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qi3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDuotoneEffectImpl.this.sizeOfHslClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTPresetColor[] getPrstClrArray() {
        return (CTPresetColor[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTPresetColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public List<CTPresetColor> getPrstClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ri3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.getPrstClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.si3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDuotoneEffectImpl.this.setPrstClrArray(((Integer) obj).intValue(), (CTPresetColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ti3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.insertNewPrstClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ui3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDuotoneEffectImpl.this.removePrstClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vi3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDuotoneEffectImpl.this.sizeOfPrstClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTSchemeColor[] getSchemeClrArray() {
        return (CTSchemeColor[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTSchemeColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public List<CTSchemeColor> getSchemeClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gi3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.getSchemeClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hi3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDuotoneEffectImpl.this.setSchemeClrArray(((Integer) obj).intValue(), (CTSchemeColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ii3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.insertNewSchemeClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ji3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDuotoneEffectImpl.this.removeSchemeClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ki3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDuotoneEffectImpl.this.sizeOfSchemeClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTScRgbColor[] getScrgbClrArray() {
        return (CTScRgbColor[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTScRgbColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public List<CTScRgbColor> getScrgbClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zi3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.getScrgbClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.aj3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDuotoneEffectImpl.this.setScrgbClrArray(((Integer) obj).intValue(), (CTScRgbColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bj3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.insertNewScrgbClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cj3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDuotoneEffectImpl.this.removeScrgbClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dj3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDuotoneEffectImpl.this.sizeOfScrgbClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTSRgbColor[] getSrgbClrArray() {
        return (CTSRgbColor[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTSRgbColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public List<CTSRgbColor> getSrgbClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bi3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.getSrgbClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ci3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDuotoneEffectImpl.this.setSrgbClrArray(((Integer) obj).intValue(), (CTSRgbColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.di3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.insertNewSrgbClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ei3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDuotoneEffectImpl.this.removeSrgbClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fi3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDuotoneEffectImpl.this.sizeOfSrgbClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTSystemColor[] getSysClrArray() {
        return (CTSystemColor[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTSystemColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public List<CTSystemColor> getSysClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ai3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.getSysClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.li3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDuotoneEffectImpl.this.setSysClrArray(((Integer) obj).intValue(), (CTSystemColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wi3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDuotoneEffectImpl.this.insertNewSysClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xi3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDuotoneEffectImpl.this.removeSysClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yi3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDuotoneEffectImpl.this.sizeOfSysClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTHslColor insertNewHslClr(int i) {
        CTHslColor cTHslColor;
        synchronized (monitor()) {
            check_orphaned();
            cTHslColor = (CTHslColor) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTHslColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTPresetColor insertNewPrstClr(int i) {
        CTPresetColor cTPresetColor;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetColor = (CTPresetColor) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTPresetColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTSchemeColor insertNewSchemeClr(int i) {
        CTSchemeColor cTSchemeColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSchemeColor = (CTSchemeColor) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTSchemeColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTScRgbColor insertNewScrgbClr(int i) {
        CTScRgbColor cTScRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTScRgbColor = (CTScRgbColor) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTScRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTSRgbColor insertNewSrgbClr(int i) {
        CTSRgbColor cTSRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSRgbColor = (CTSRgbColor) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTSRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public CTSystemColor insertNewSysClr(int i) {
        CTSystemColor cTSystemColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSystemColor = (CTSystemColor) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTSystemColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void removeHslClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void removePrstClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void removeSchemeClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void removeScrgbClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void removeSrgbClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void removeSysClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setHslClrArray(CTHslColor[] cTHslColorArr) {
        check_orphaned();
        arraySetterHelper(cTHslColorArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setPrstClrArray(CTPresetColor[] cTPresetColorArr) {
        check_orphaned();
        arraySetterHelper(cTPresetColorArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setSchemeClrArray(CTSchemeColor[] cTSchemeColorArr) {
        check_orphaned();
        arraySetterHelper(cTSchemeColorArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setScrgbClrArray(CTScRgbColor[] cTScRgbColorArr) {
        check_orphaned();
        arraySetterHelper(cTScRgbColorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setSrgbClrArray(CTSRgbColor[] cTSRgbColorArr) {
        check_orphaned();
        arraySetterHelper(cTSRgbColorArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setSysClrArray(CTSystemColor[] cTSystemColorArr) {
        check_orphaned();
        arraySetterHelper(cTSystemColorArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public int sizeOfHslClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public int sizeOfPrstClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public int sizeOfSchemeClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public int sizeOfScrgbClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public int sizeOfSrgbClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public int sizeOfSysClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setHslClrArray(int i, CTHslColor cTHslColor) {
        generatedSetterHelperImpl(cTHslColor, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setPrstClrArray(int i, CTPresetColor cTPresetColor) {
        generatedSetterHelperImpl(cTPresetColor, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setSchemeClrArray(int i, CTSchemeColor cTSchemeColor) {
        generatedSetterHelperImpl(cTSchemeColor, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setScrgbClrArray(int i, CTScRgbColor cTScRgbColor) {
        generatedSetterHelperImpl(cTScRgbColor, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setSrgbClrArray(int i, CTSRgbColor cTSRgbColor) {
        generatedSetterHelperImpl(cTSRgbColor, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect
    public void setSysClrArray(int i, CTSystemColor cTSystemColor) {
        generatedSetterHelperImpl(cTSystemColor, PROPERTY_QNAME[3], i, (short) 2);
    }
}
