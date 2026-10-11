package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientStop;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STGradientType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTGradientFillImpl;

/* loaded from: classes15.dex */
public class CTGradientFillImpl extends XmlComplexContentImpl implements CTGradientFill {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "stop"), new QName("", "type"), new QName("", "degree"), new QName("", "left"), new QName("", gon.f71288n0), new QName("", OneDriverConstants.TOP), new QName("", "bottom")};
    private static final long serialVersionUID = 1;

    public CTGradientFillImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public CTGradientStop addNewStop() {
        CTGradientStop cTGradientStop;
        synchronized (monitor()) {
            check_orphaned();
            cTGradientStop = (CTGradientStop) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGradientStop;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public double getBottom() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[6]);
            }
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public double getDegree() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public double getLeft() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[3]);
            }
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public double getRight() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[4]);
            }
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public CTGradientStop[] getStopArray() {
        return (CTGradientStop[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTGradientStop[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public List<CTGradientStop> getStopList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i94
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGradientFillImpl.this.getStopArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j94
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGradientFillImpl.this.setStopArray(((Integer) obj).intValue(), (CTGradientStop) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k94
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGradientFillImpl.this.insertNewStop(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l94
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGradientFillImpl.this.removeStop(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m94
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGradientFillImpl.this.sizeOfStopArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public double getTop() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[5]);
            }
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public STGradientType.Enum getType() {
        STGradientType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            r5 = simpleValue == null ? null : (STGradientType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public CTGradientStop insertNewStop(int i) {
        CTGradientStop cTGradientStop;
        synchronized (monitor()) {
            check_orphaned();
            cTGradientStop = (CTGradientStop) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTGradientStop;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public boolean isSetBottom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public boolean isSetDegree() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public boolean isSetLeft() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public boolean isSetRight() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public boolean isSetTop() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void removeStop(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void setBottom(double d) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void setDegree(double d) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void setLeft(double d) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void setRight(double d) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void setStopArray(CTGradientStop[] cTGradientStopArr) {
        check_orphaned();
        arraySetterHelper(cTGradientStopArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void setTop(double d) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void setType(STGradientType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public int sizeOfStopArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void unsetBottom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void unsetDegree() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void unsetLeft() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void unsetRight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void unsetTop() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public XmlDouble xgetBottom() {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlDouble = (XmlDouble) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlDouble == null) {
                xmlDouble = (XmlDouble) get_default_attribute_value(qNameArr[6]);
            }
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public XmlDouble xgetDegree() {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlDouble = (XmlDouble) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlDouble == null) {
                xmlDouble = (XmlDouble) get_default_attribute_value(qNameArr[2]);
            }
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public XmlDouble xgetLeft() {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlDouble = (XmlDouble) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlDouble == null) {
                xmlDouble = (XmlDouble) get_default_attribute_value(qNameArr[3]);
            }
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public XmlDouble xgetRight() {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlDouble = (XmlDouble) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlDouble == null) {
                xmlDouble = (XmlDouble) get_default_attribute_value(qNameArr[4]);
            }
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public XmlDouble xgetTop() {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlDouble = (XmlDouble) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlDouble == null) {
                xmlDouble = (XmlDouble) get_default_attribute_value(qNameArr[5]);
            }
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public STGradientType xgetType() {
        STGradientType sTGradientType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTGradientType = (STGradientType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTGradientType == null) {
                sTGradientType = (STGradientType) get_default_attribute_value(qNameArr[1]);
            }
        }
        return sTGradientType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void xsetBottom(XmlDouble xmlDouble) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDouble xmlDouble2 = (XmlDouble) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlDouble2 == null) {
                xmlDouble2 = (XmlDouble) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlDouble2.set(xmlDouble);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void xsetDegree(XmlDouble xmlDouble) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDouble xmlDouble2 = (XmlDouble) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlDouble2 == null) {
                xmlDouble2 = (XmlDouble) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlDouble2.set(xmlDouble);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void xsetLeft(XmlDouble xmlDouble) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDouble xmlDouble2 = (XmlDouble) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlDouble2 == null) {
                xmlDouble2 = (XmlDouble) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlDouble2.set(xmlDouble);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void xsetRight(XmlDouble xmlDouble) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDouble xmlDouble2 = (XmlDouble) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlDouble2 == null) {
                xmlDouble2 = (XmlDouble) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlDouble2.set(xmlDouble);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void xsetTop(XmlDouble xmlDouble) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDouble xmlDouble2 = (XmlDouble) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlDouble2 == null) {
                xmlDouble2 = (XmlDouble) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlDouble2.set(xmlDouble);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void xsetType(STGradientType sTGradientType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STGradientType sTGradientType2 = (STGradientType) typeStore.find_attribute_user(qNameArr[1]);
            if (sTGradientType2 == null) {
                sTGradientType2 = (STGradientType) get_store().add_attribute_user(qNameArr[1]);
            }
            sTGradientType2.set(sTGradientType);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public CTGradientStop getStopArray(int i) {
        CTGradientStop cTGradientStop;
        synchronized (monitor()) {
            check_orphaned();
            cTGradientStop = (CTGradientStop) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTGradientStop == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGradientStop;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGradientFill
    public void setStopArray(int i, CTGradientStop cTGradientStop) {
        generatedSetterHelperImpl(cTGradientStop, PROPERTY_QNAME[0], i, (short) 2);
    }
}
