package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfvo;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTColorScaleImpl;

/* loaded from: classes15.dex */
public class CTColorScaleImpl extends XmlComplexContentImpl implements CTColorScale {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "cfvo"), new QName(XSSFRelation.NS_SPREADSHEETML, "color")};
    private static final long serialVersionUID = 1;

    public CTColorScaleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public CTCfvo addNewCfvo() {
        CTCfvo cTCfvo;
        synchronized (monitor()) {
            check_orphaned();
            cTCfvo = (CTCfvo) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCfvo;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public CTColor addNewColor() {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public CTCfvo[] getCfvoArray() {
        return (CTCfvo[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCfvo[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public List<CTCfvo> getCfvoList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorScaleImpl.this.getCfvoArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f02
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorScaleImpl.this.setCfvoArray(((Integer) obj).intValue(), (CTCfvo) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorScaleImpl.this.insertNewCfvo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h02
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorScaleImpl.this.removeCfvo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i02
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorScaleImpl.this.sizeOfCfvoArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public CTColor[] getColorArray() {
        return (CTColor[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTColor[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public List<CTColor> getColorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zz1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorScaleImpl.this.getColorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.a02
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorScaleImpl.this.setColorArray(((Integer) obj).intValue(), (CTColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.b02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorScaleImpl.this.insertNewColor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.c02
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorScaleImpl.this.removeColor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.d02
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorScaleImpl.this.sizeOfColorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public CTCfvo insertNewCfvo(int i) {
        CTCfvo cTCfvo;
        synchronized (monitor()) {
            check_orphaned();
            cTCfvo = (CTCfvo) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCfvo;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public CTColor insertNewColor(int i) {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public void removeCfvo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public void removeColor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public void setCfvoArray(CTCfvo[] cTCfvoArr) {
        check_orphaned();
        arraySetterHelper(cTCfvoArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public void setColorArray(CTColor[] cTColorArr) {
        check_orphaned();
        arraySetterHelper(cTColorArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public int sizeOfCfvoArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public int sizeOfColorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public CTCfvo getCfvoArray(int i) {
        CTCfvo cTCfvo;
        synchronized (monitor()) {
            check_orphaned();
            cTCfvo = (CTCfvo) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCfvo == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCfvo;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public CTColor getColorArray(int i) {
        CTColor cTColor;
        synchronized (monitor()) {
            check_orphaned();
            cTColor = (CTColor) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public void setCfvoArray(int i, CTCfvo cTCfvo) {
        generatedSetterHelperImpl(cTCfvo, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColorScale
    public void setColorArray(int i, CTColor cTColor) {
        generatedSetterHelperImpl(cTColor, PROPERTY_QNAME[1], i, (short) 2);
    }
}
