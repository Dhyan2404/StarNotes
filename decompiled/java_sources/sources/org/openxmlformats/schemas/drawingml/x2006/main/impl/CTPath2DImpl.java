package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import com.miui.penengine.p015e.C6999h;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DArcTo;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DClose;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DLineTo;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DMoveTo;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DQuadBezierTo;
import org.openxmlformats.schemas.drawingml.x2006.main.STPathFillMode;
import org.openxmlformats.schemas.drawingml.x2006.main.STPositiveCoordinate;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTPath2DImpl;

/* loaded from: classes14.dex */
public class CTPath2DImpl extends XmlComplexContentImpl implements CTPath2D {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "close"), new QName(XSSFRelation.NS_DRAWINGML, "moveTo"), new QName(XSSFRelation.NS_DRAWINGML, "lnTo"), new QName(XSSFRelation.NS_DRAWINGML, "arcTo"), new QName(XSSFRelation.NS_DRAWINGML, "quadBezTo"), new QName(XSSFRelation.NS_DRAWINGML, "cubicBezTo"), new QName("", "w"), new QName("", C6999h.f39688c), new QName("", "fill"), new QName("", "stroke"), new QName("", "extrusionOk")};
    private static final long serialVersionUID = 1;

    public CTPath2DImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DArcTo addNewArcTo() {
        CTPath2DArcTo cTPath2DArcTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DArcTo = (CTPath2DArcTo) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTPath2DArcTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DClose addNewClose() {
        CTPath2DClose cTPath2DClose;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DClose = (CTPath2DClose) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPath2DClose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DCubicBezierTo addNewCubicBezTo() {
        CTPath2DCubicBezierTo cTPath2DCubicBezierTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DCubicBezierTo = (CTPath2DCubicBezierTo) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPath2DCubicBezierTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DLineTo addNewLnTo() {
        CTPath2DLineTo cTPath2DLineTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DLineTo = (CTPath2DLineTo) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTPath2DLineTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DMoveTo addNewMoveTo() {
        CTPath2DMoveTo cTPath2DMoveTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DMoveTo = (CTPath2DMoveTo) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTPath2DMoveTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DQuadBezierTo addNewQuadBezTo() {
        CTPath2DQuadBezierTo cTPath2DQuadBezierTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DQuadBezierTo = (CTPath2DQuadBezierTo) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTPath2DQuadBezierTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DArcTo[] getArcToArray() {
        return (CTPath2DArcTo[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTPath2DArcTo[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public List<CTPath2DArcTo> getArcToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j57
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.getArcToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k57
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPath2DImpl.this.setArcToArray(((Integer) obj).intValue(), (CTPath2DArcTo) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l57
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.insertNewArcTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m57
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPath2DImpl.this.removeArcTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n57
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPath2DImpl.this.sizeOfArcToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DClose[] getCloseArray() {
        return (CTPath2DClose[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPath2DClose[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public List<CTPath2DClose> getCloseList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b57
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.getCloseArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c57
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPath2DImpl.this.setCloseArray(((Integer) obj).intValue(), (CTPath2DClose) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d57
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.insertNewClose(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e57
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPath2DImpl.this.removeClose(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.f57
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPath2DImpl.this.sizeOfCloseArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DCubicBezierTo[] getCubicBezToArray() {
        return (CTPath2DCubicBezierTo[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTPath2DCubicBezierTo[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public List<CTPath2DCubicBezierTo> getCubicBezToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.k47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.getCubicBezToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v47
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPath2DImpl.this.setCubicBezToArray(((Integer) obj).intValue(), (CTPath2DCubicBezierTo) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g57
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.insertNewCubicBezTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h57
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPath2DImpl.this.removeCubicBezTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i57
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPath2DImpl.this.sizeOfCubicBezToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public boolean getExtrusionOk() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[10]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public STPathFillMode.Enum getFill() {
        STPathFillMode.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[8]);
            }
            r5 = simpleValue == null ? null : (STPathFillMode.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public long getH() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[7]);
            }
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DLineTo[] getLnToArray() {
        return (CTPath2DLineTo[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTPath2DLineTo[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public List<CTPath2DLineTo> getLnToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.getLnToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r47
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPath2DImpl.this.setLnToArray(((Integer) obj).intValue(), (CTPath2DLineTo) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.insertNewLnTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t47
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPath2DImpl.this.removeLnTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u47
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPath2DImpl.this.sizeOfLnToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DMoveTo[] getMoveToArray() {
        return (CTPath2DMoveTo[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTPath2DMoveTo[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public List<CTPath2DMoveTo> getMoveToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.getMoveToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m47
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPath2DImpl.this.setMoveToArray(((Integer) obj).intValue(), (CTPath2DMoveTo) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.insertNewMoveTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o47
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPath2DImpl.this.removeMoveTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p47
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPath2DImpl.this.sizeOfMoveToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DQuadBezierTo[] getQuadBezToArray() {
        return (CTPath2DQuadBezierTo[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTPath2DQuadBezierTo[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public List<CTPath2DQuadBezierTo> getQuadBezToList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.getQuadBezToArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x47
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTPath2DImpl.this.setQuadBezToArray(((Integer) obj).intValue(), (CTPath2DQuadBezierTo) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.y47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTPath2DImpl.this.insertNewQuadBezTo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.z47
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTPath2DImpl.this.removeQuadBezTo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a57
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTPath2DImpl.this.sizeOfQuadBezToArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public boolean getStroke() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[9]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public long getW() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[6]);
            }
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DArcTo insertNewArcTo(int i) {
        CTPath2DArcTo cTPath2DArcTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DArcTo = (CTPath2DArcTo) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTPath2DArcTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DClose insertNewClose(int i) {
        CTPath2DClose cTPath2DClose;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DClose = (CTPath2DClose) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPath2DClose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DCubicBezierTo insertNewCubicBezTo(int i) {
        CTPath2DCubicBezierTo cTPath2DCubicBezierTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DCubicBezierTo = (CTPath2DCubicBezierTo) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTPath2DCubicBezierTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DLineTo insertNewLnTo(int i) {
        CTPath2DLineTo cTPath2DLineTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DLineTo = (CTPath2DLineTo) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTPath2DLineTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DMoveTo insertNewMoveTo(int i) {
        CTPath2DMoveTo cTPath2DMoveTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DMoveTo = (CTPath2DMoveTo) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTPath2DMoveTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DQuadBezierTo insertNewQuadBezTo(int i) {
        CTPath2DQuadBezierTo cTPath2DQuadBezierTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DQuadBezierTo = (CTPath2DQuadBezierTo) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTPath2DQuadBezierTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public boolean isSetExtrusionOk() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public boolean isSetFill() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public boolean isSetH() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public boolean isSetStroke() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public boolean isSetW() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void removeArcTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void removeClose(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void removeCubicBezTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void removeLnTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void removeMoveTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void removeQuadBezTo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setArcToArray(CTPath2DArcTo[] cTPath2DArcToArr) {
        check_orphaned();
        arraySetterHelper(cTPath2DArcToArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setCloseArray(CTPath2DClose[] cTPath2DCloseArr) {
        check_orphaned();
        arraySetterHelper(cTPath2DCloseArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setCubicBezToArray(CTPath2DCubicBezierTo[] cTPath2DCubicBezierToArr) {
        check_orphaned();
        arraySetterHelper(cTPath2DCubicBezierToArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setExtrusionOk(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setFill(STPathFillMode.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setH(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setLnToArray(CTPath2DLineTo[] cTPath2DLineToArr) {
        check_orphaned();
        arraySetterHelper(cTPath2DLineToArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setMoveToArray(CTPath2DMoveTo[] cTPath2DMoveToArr) {
        check_orphaned();
        arraySetterHelper(cTPath2DMoveToArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setQuadBezToArray(CTPath2DQuadBezierTo[] cTPath2DQuadBezierToArr) {
        check_orphaned();
        arraySetterHelper(cTPath2DQuadBezierToArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setStroke(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setW(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public int sizeOfArcToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public int sizeOfCloseArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public int sizeOfCubicBezToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public int sizeOfLnToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public int sizeOfMoveToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public int sizeOfQuadBezToArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void unsetExtrusionOk() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void unsetFill() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void unsetH() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void unsetStroke() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void unsetW() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public XmlBoolean xgetExtrusionOk() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[10]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public STPathFillMode xgetFill() {
        STPathFillMode sTPathFillMode;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPathFillMode = (STPathFillMode) typeStore.find_attribute_user(qNameArr[8]);
            if (sTPathFillMode == null) {
                sTPathFillMode = (STPathFillMode) get_default_attribute_value(qNameArr[8]);
            }
        }
        return sTPathFillMode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public STPositiveCoordinate xgetH() {
        STPositiveCoordinate sTPositiveCoordinate;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPositiveCoordinate = (STPositiveCoordinate) typeStore.find_attribute_user(qNameArr[7]);
            if (sTPositiveCoordinate == null) {
                sTPositiveCoordinate = (STPositiveCoordinate) get_default_attribute_value(qNameArr[7]);
            }
        }
        return sTPositiveCoordinate;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public XmlBoolean xgetStroke() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[9]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public STPositiveCoordinate xgetW() {
        STPositiveCoordinate sTPositiveCoordinate;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTPositiveCoordinate = (STPositiveCoordinate) typeStore.find_attribute_user(qNameArr[6]);
            if (sTPositiveCoordinate == null) {
                sTPositiveCoordinate = (STPositiveCoordinate) get_default_attribute_value(qNameArr[6]);
            }
        }
        return sTPositiveCoordinate;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void xsetExtrusionOk(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[10]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void xsetFill(STPathFillMode sTPathFillMode) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPathFillMode sTPathFillMode2 = (STPathFillMode) typeStore.find_attribute_user(qNameArr[8]);
            if (sTPathFillMode2 == null) {
                sTPathFillMode2 = (STPathFillMode) get_store().add_attribute_user(qNameArr[8]);
            }
            sTPathFillMode2.set(sTPathFillMode);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void xsetH(STPositiveCoordinate sTPositiveCoordinate) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPositiveCoordinate sTPositiveCoordinate2 = (STPositiveCoordinate) typeStore.find_attribute_user(qNameArr[7]);
            if (sTPositiveCoordinate2 == null) {
                sTPositiveCoordinate2 = (STPositiveCoordinate) get_store().add_attribute_user(qNameArr[7]);
            }
            sTPositiveCoordinate2.set(sTPositiveCoordinate);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void xsetStroke(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void xsetW(STPositiveCoordinate sTPositiveCoordinate) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STPositiveCoordinate sTPositiveCoordinate2 = (STPositiveCoordinate) typeStore.find_attribute_user(qNameArr[6]);
            if (sTPositiveCoordinate2 == null) {
                sTPositiveCoordinate2 = (STPositiveCoordinate) get_store().add_attribute_user(qNameArr[6]);
            }
            sTPositiveCoordinate2.set(sTPositiveCoordinate);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DArcTo getArcToArray(int i) {
        CTPath2DArcTo cTPath2DArcTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DArcTo = (CTPath2DArcTo) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTPath2DArcTo == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPath2DArcTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DClose getCloseArray(int i) {
        CTPath2DClose cTPath2DClose;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DClose = (CTPath2DClose) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPath2DClose == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPath2DClose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DCubicBezierTo getCubicBezToArray(int i) {
        CTPath2DCubicBezierTo cTPath2DCubicBezierTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DCubicBezierTo = (CTPath2DCubicBezierTo) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTPath2DCubicBezierTo == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPath2DCubicBezierTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DLineTo getLnToArray(int i) {
        CTPath2DLineTo cTPath2DLineTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DLineTo = (CTPath2DLineTo) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTPath2DLineTo == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPath2DLineTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DMoveTo getMoveToArray(int i) {
        CTPath2DMoveTo cTPath2DMoveTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DMoveTo = (CTPath2DMoveTo) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTPath2DMoveTo == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPath2DMoveTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public CTPath2DQuadBezierTo getQuadBezToArray(int i) {
        CTPath2DQuadBezierTo cTPath2DQuadBezierTo;
        synchronized (monitor()) {
            check_orphaned();
            cTPath2DQuadBezierTo = (CTPath2DQuadBezierTo) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTPath2DQuadBezierTo == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPath2DQuadBezierTo;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setArcToArray(int i, CTPath2DArcTo cTPath2DArcTo) {
        generatedSetterHelperImpl(cTPath2DArcTo, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setCloseArray(int i, CTPath2DClose cTPath2DClose) {
        generatedSetterHelperImpl(cTPath2DClose, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setCubicBezToArray(int i, CTPath2DCubicBezierTo cTPath2DCubicBezierTo) {
        generatedSetterHelperImpl(cTPath2DCubicBezierTo, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setLnToArray(int i, CTPath2DLineTo cTPath2DLineTo) {
        generatedSetterHelperImpl(cTPath2DLineTo, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setMoveToArray(int i, CTPath2DMoveTo cTPath2DMoveTo) {
        generatedSetterHelperImpl(cTPath2DMoveTo, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D
    public void setQuadBezToArray(int i, CTPath2DQuadBezierTo cTPath2DQuadBezierTo) {
        generatedSetterHelperImpl(cTPath2DQuadBezierTo, PROPERTY_QNAME[4], i, (short) 2);
    }
}
