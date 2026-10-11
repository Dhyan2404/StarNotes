package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STClrAppMethod;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STHueDir;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTColorsImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHslColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTScRgbColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSystemColor;

/* loaded from: classes14.dex */
public class CTColorsImpl extends XmlComplexContentImpl implements CTColors {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "scrgbClr"), new QName(XSSFRelation.NS_DRAWINGML, "srgbClr"), new QName(XSSFRelation.NS_DRAWINGML, "hslClr"), new QName(XSSFRelation.NS_DRAWINGML, "sysClr"), new QName(XSSFRelation.NS_DRAWINGML, "schemeClr"), new QName(XSSFRelation.NS_DRAWINGML, "prstClr"), new QName("", "meth"), new QName("", "hueDir")};
    private static final long serialVersionUID = 1;

    public CTColorsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTHslColor addNewHslClr() {
        CTHslColor cTHslColor;
        synchronized (monitor()) {
            check_orphaned();
            cTHslColor = (CTHslColor) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTHslColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTPresetColor addNewPrstClr() {
        CTPresetColor cTPresetColor;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetColor = (CTPresetColor) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPresetColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTSchemeColor addNewSchemeClr() {
        CTSchemeColor cTSchemeColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSchemeColor = (CTSchemeColor) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTSchemeColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTScRgbColor addNewScrgbClr() {
        CTScRgbColor cTScRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTScRgbColor = (CTScRgbColor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTScRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTSRgbColor addNewSrgbClr() {
        CTSRgbColor cTSRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSRgbColor = (CTSRgbColor) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTSystemColor addNewSysClr() {
        CTSystemColor cTSystemColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSystemColor = (CTSystemColor) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTSystemColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTHslColor[] getHslClrArray() {
        return (CTHslColor[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTHslColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public List<CTHslColor> getHslClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.getHslClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d22
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorsImpl.this.setHslClrArray(((Integer) obj).intValue(), (CTHslColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o22
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.insertNewHslClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.p22
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorsImpl.this.removeHslClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q22
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorsImpl.this.sizeOfHslClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public STHueDir.Enum getHueDir() {
        STHueDir.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[7]);
            }
            r5 = simpleValue == null ? null : (STHueDir.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public STClrAppMethod.Enum getMeth() {
        STClrAppMethod.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[6]);
            }
            r5 = simpleValue == null ? null : (STClrAppMethod.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTPresetColor[] getPrstClrArray() {
        return (CTPresetColor[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTPresetColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public List<CTPresetColor> getPrstClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j22
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.getPrstClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k22
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorsImpl.this.setPrstClrArray(((Integer) obj).intValue(), (CTPresetColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l22
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.insertNewPrstClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m22
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorsImpl.this.removePrstClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n22
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorsImpl.this.sizeOfPrstClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTSchemeColor[] getSchemeClrArray() {
        return (CTSchemeColor[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTSchemeColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public List<CTSchemeColor> getSchemeClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.getSchemeClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u12
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorsImpl.this.setSchemeClrArray(((Integer) obj).intValue(), (CTSchemeColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.insertNewSchemeClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w12
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorsImpl.this.removeSchemeClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x12
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorsImpl.this.sizeOfSchemeClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTScRgbColor[] getScrgbClrArray() {
        return (CTScRgbColor[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTScRgbColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public List<CTScRgbColor> getScrgbClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y12
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.getScrgbClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z12
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorsImpl.this.setScrgbClrArray(((Integer) obj).intValue(), (CTScRgbColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a22
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.insertNewScrgbClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b22
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorsImpl.this.removeScrgbClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c22
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorsImpl.this.sizeOfScrgbClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTSRgbColor[] getSrgbClrArray() {
        return (CTSRgbColor[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTSRgbColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public List<CTSRgbColor> getSrgbClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.r22
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.getSrgbClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s22
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorsImpl.this.setSrgbClrArray(((Integer) obj).intValue(), (CTSRgbColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.t22
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.insertNewSrgbClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.u22
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorsImpl.this.removeSrgbClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.v22
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorsImpl.this.sizeOfSrgbClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTSystemColor[] getSysClrArray() {
        return (CTSystemColor[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTSystemColor[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public List<CTSystemColor> getSysClrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e22
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.getSysClrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f22
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorsImpl.this.setSysClrArray(((Integer) obj).intValue(), (CTSystemColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g22
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorsImpl.this.insertNewSysClr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h22
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorsImpl.this.removeSysClr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i22
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorsImpl.this.sizeOfSysClrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTHslColor insertNewHslClr(int i) {
        CTHslColor cTHslColor;
        synchronized (monitor()) {
            check_orphaned();
            cTHslColor = (CTHslColor) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTHslColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTPresetColor insertNewPrstClr(int i) {
        CTPresetColor cTPresetColor;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetColor = (CTPresetColor) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTPresetColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTSchemeColor insertNewSchemeClr(int i) {
        CTSchemeColor cTSchemeColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSchemeColor = (CTSchemeColor) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTSchemeColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTScRgbColor insertNewScrgbClr(int i) {
        CTScRgbColor cTScRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTScRgbColor = (CTScRgbColor) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTScRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTSRgbColor insertNewSrgbClr(int i) {
        CTSRgbColor cTSRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSRgbColor = (CTSRgbColor) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTSRgbColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public CTSystemColor insertNewSysClr(int i) {
        CTSystemColor cTSystemColor;
        synchronized (monitor()) {
            check_orphaned();
            cTSystemColor = (CTSystemColor) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTSystemColor;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public boolean isSetHueDir() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public boolean isSetMeth() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void removeHslClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void removePrstClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void removeSchemeClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void removeScrgbClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void removeSrgbClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void removeSysClr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setHslClrArray(CTHslColor[] cTHslColorArr) {
        check_orphaned();
        arraySetterHelper(cTHslColorArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setHueDir(STHueDir.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setMeth(STClrAppMethod.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setPrstClrArray(CTPresetColor[] cTPresetColorArr) {
        check_orphaned();
        arraySetterHelper(cTPresetColorArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setSchemeClrArray(CTSchemeColor[] cTSchemeColorArr) {
        check_orphaned();
        arraySetterHelper(cTSchemeColorArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setScrgbClrArray(CTScRgbColor[] cTScRgbColorArr) {
        check_orphaned();
        arraySetterHelper(cTScRgbColorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setSrgbClrArray(CTSRgbColor[] cTSRgbColorArr) {
        check_orphaned();
        arraySetterHelper(cTSRgbColorArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setSysClrArray(CTSystemColor[] cTSystemColorArr) {
        check_orphaned();
        arraySetterHelper(cTSystemColorArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public int sizeOfHslClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public int sizeOfPrstClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public int sizeOfSchemeClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public int sizeOfScrgbClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public int sizeOfSrgbClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public int sizeOfSysClrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void unsetHueDir() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void unsetMeth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public STHueDir xgetHueDir() {
        STHueDir sTHueDir;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTHueDir = (STHueDir) typeStore.find_attribute_user(qNameArr[7]);
            if (sTHueDir == null) {
                sTHueDir = (STHueDir) get_default_attribute_value(qNameArr[7]);
            }
        }
        return sTHueDir;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public STClrAppMethod xgetMeth() {
        STClrAppMethod sTClrAppMethod;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTClrAppMethod = (STClrAppMethod) typeStore.find_attribute_user(qNameArr[6]);
            if (sTClrAppMethod == null) {
                sTClrAppMethod = (STClrAppMethod) get_default_attribute_value(qNameArr[6]);
            }
        }
        return sTClrAppMethod;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void xsetHueDir(STHueDir sTHueDir) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STHueDir sTHueDir2 = (STHueDir) typeStore.find_attribute_user(qNameArr[7]);
            if (sTHueDir2 == null) {
                sTHueDir2 = (STHueDir) get_store().add_attribute_user(qNameArr[7]);
            }
            sTHueDir2.set(sTHueDir);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void xsetMeth(STClrAppMethod sTClrAppMethod) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STClrAppMethod sTClrAppMethod2 = (STClrAppMethod) typeStore.find_attribute_user(qNameArr[6]);
            if (sTClrAppMethod2 == null) {
                sTClrAppMethod2 = (STClrAppMethod) get_store().add_attribute_user(qNameArr[6]);
            }
            sTClrAppMethod2.set(sTClrAppMethod);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setHslClrArray(int i, CTHslColor cTHslColor) {
        generatedSetterHelperImpl(cTHslColor, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setPrstClrArray(int i, CTPresetColor cTPresetColor) {
        generatedSetterHelperImpl(cTPresetColor, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setSchemeClrArray(int i, CTSchemeColor cTSchemeColor) {
        generatedSetterHelperImpl(cTSchemeColor, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setScrgbClrArray(int i, CTScRgbColor cTScRgbColor) {
        generatedSetterHelperImpl(cTScRgbColor, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setSrgbClrArray(int i, CTSRgbColor cTSRgbColor) {
        generatedSetterHelperImpl(cTSRgbColor, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTColors
    public void setSysClrArray(int i, CTSystemColor cTSystemColor) {
        generatedSetterHelperImpl(cTSystemColor, PROPERTY_QNAME[3], i, (short) 2);
    }
}
