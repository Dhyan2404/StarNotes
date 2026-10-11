package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumVal;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTUnsignedInt;
import org.openxmlformats.schemas.drawingml.x2006.chart.impl.CTNumDataImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes14.dex */
public class CTNumDataImpl extends XmlComplexContentImpl implements CTNumData {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "formatCode"), new QName(XSSFRelation.NS_CHART, "ptCount"), new QName(XSSFRelation.NS_CHART, ExtUnits.UNIT_PT), new QName(XSSFRelation.NS_CHART, "extLst")};
    private static final long serialVersionUID = 1;

    public CTNumDataImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public CTNumVal addNewPt() {
        CTNumVal cTNumVal;
        synchronized (monitor()) {
            check_orphaned();
            cTNumVal = (CTNumVal) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTNumVal;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public CTUnsignedInt addNewPtCount() {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public String getFormatCode() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public CTNumVal[] getPtArray() {
        return (CTNumVal[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTNumVal[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public CTUnsignedInt getPtCount() {
        CTUnsignedInt cTUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            cTUnsignedInt = (CTUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTUnsignedInt == null) {
                cTUnsignedInt = null;
            }
        }
        return cTUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public List<CTNumVal> getPtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.co5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNumDataImpl.this.getPtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.do5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTNumDataImpl.this.setPtArray(((Integer) obj).intValue(), (CTNumVal) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.eo5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTNumDataImpl.this.insertNewPt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fo5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTNumDataImpl.this.removePt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.go5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTNumDataImpl.this.sizeOfPtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public CTNumVal insertNewPt(int i) {
        CTNumVal cTNumVal;
        synchronized (monitor()) {
            check_orphaned();
            cTNumVal = (CTNumVal) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTNumVal;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public boolean isSetFormatCode() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public boolean isSetPtCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public void removePt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public void setFormatCode(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[0], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[0]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public void setPtArray(CTNumVal[] cTNumValArr) {
        check_orphaned();
        arraySetterHelper(cTNumValArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public void setPtCount(CTUnsignedInt cTUnsignedInt) {
        generatedSetterHelperImpl(cTUnsignedInt, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public int sizeOfPtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public void unsetFormatCode() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public void unsetPtCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public STXstring xgetFormatCode() {
        STXstring sTXstring;
        synchronized (monitor()) {
            check_orphaned();
            sTXstring = (STXstring) get_store().find_element_user(PROPERTY_QNAME[0], 0);
        }
        return sTXstring;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public void xsetFormatCode(STXstring sTXstring) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STXstring sTXstring2 = (STXstring) typeStore.find_element_user(qNameArr[0], 0);
            if (sTXstring2 == null) {
                sTXstring2 = (STXstring) get_store().add_element_user(qNameArr[0]);
            }
            sTXstring2.set(sTXstring);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public CTNumVal getPtArray(int i) {
        CTNumVal cTNumVal;
        synchronized (monitor()) {
            check_orphaned();
            cTNumVal = (CTNumVal) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTNumVal == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNumVal;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData
    public void setPtArray(int i, CTNumVal cTNumVal) {
        generatedSetterHelperImpl(cTNumVal, PROPERTY_QNAME[2], i, (short) 2);
    }
}
