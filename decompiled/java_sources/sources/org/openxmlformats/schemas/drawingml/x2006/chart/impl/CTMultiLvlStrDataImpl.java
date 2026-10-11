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
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLvl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTUnsignedInt;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTMultiLvlStrDataImpl;

/* loaded from: classes14.dex */
public class CTMultiLvlStrDataImpl extends XmlComplexContentImpl implements CTMultiLvlStrData {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "ptCount"), new QName(XSSFRelation.NS_CHART, "lvl"), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTMultiLvlStrDataImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public CTLvl addNewLvl() {
        CTLvl cTLvl;
        synchronized (monitor()) {
            check_orphaned();
            cTLvl = (CTLvl) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTLvl;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public CTUnsignedInt addNewPtCount() {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public CTLvl[] getLvlArray() {
        return (CTLvl[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTLvl[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public List<CTLvl> getLvlList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sn5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMultiLvlStrDataImpl.this.getLvlArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tn5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMultiLvlStrDataImpl.this.setLvlArray(((Integer) obj).intValue(), (CTLvl) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.un5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMultiLvlStrDataImpl.this.insertNewLvl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vn5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMultiLvlStrDataImpl.this.removeLvl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wn5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMultiLvlStrDataImpl.this.sizeOfLvlArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public CTUnsignedInt getPtCount() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public CTLvl insertNewLvl(int i) {
        CTLvl cTLvl;
        synchronized (monitor()) {
            check_orphaned();
            cTLvl = (CTLvl) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTLvl;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public boolean isSetPtCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public void removeLvl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public void setLvlArray(CTLvl[] cTLvlArr) {
        check_orphaned();
        arraySetterHelper(cTLvlArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public void setPtCount(CTUnsignedInt cTUnsignedInt) {
        generatedSetterHelperImpl(cTUnsignedInt, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public int sizeOfLvlArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public void unsetPtCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public CTLvl getLvlArray(int i) {
        CTLvl cTLvl;
        synchronized (monitor()) {
            check_orphaned();
            cTLvl = (CTLvl) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTLvl == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLvl;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTMultiLvlStrData
    public void setLvlArray(int i, CTLvl cTLvl) {
        generatedSetterHelperImpl(cTLvl, PROPERTY_QNAME[1], i, (short) 2);
    }
}
