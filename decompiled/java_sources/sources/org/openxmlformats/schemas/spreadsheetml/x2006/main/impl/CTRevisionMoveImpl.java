package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.google.firebase.analytics.FirebaseAnalytics;
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
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionCellChange;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionFormatting;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUndoInfo;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRef;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTRevisionMoveImpl;

/* loaded from: classes15.dex */
public class CTRevisionMoveImpl extends XmlComplexContentImpl implements CTRevisionMove {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "undo"), new QName(XSSFRelation.NS_SPREADSHEETML, "rcc"), new QName(XSSFRelation.NS_SPREADSHEETML, "rfmt"), new QName("", "rId"), new QName("", "ua"), new QName("", "ra"), new QName("", "sheetId"), new QName("", "source"), new QName("", FirebaseAnalytics.Param.DESTINATION), new QName("", "sourceSheetId")};
    private static final long serialVersionUID = 1;

    public CTRevisionMoveImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTRevisionCellChange addNewRcc() {
        CTRevisionCellChange cTRevisionCellChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCellChange = (CTRevisionCellChange) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTRevisionCellChange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTRevisionFormatting addNewRfmt() {
        CTRevisionFormatting cTRevisionFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionFormatting = (CTRevisionFormatting) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTRevisionFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTUndoInfo addNewUndo() {
        CTUndoInfo cTUndoInfo;
        synchronized (monitor()) {
            check_orphaned();
            cTUndoInfo = (CTUndoInfo) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTUndoInfo;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public String getDestination() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public long getRId() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public boolean getRa() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[5]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTRevisionCellChange[] getRccArray() {
        return (CTRevisionCellChange[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTRevisionCellChange[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public List<CTRevisionCellChange> getRccList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ps8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionMoveImpl.this.getRccArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qs8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionMoveImpl.this.setRccArray(((Integer) obj).intValue(), (CTRevisionCellChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rs8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionMoveImpl.this.insertNewRcc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ss8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionMoveImpl.this.removeRcc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ts8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionMoveImpl.this.sizeOfRccArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTRevisionFormatting[] getRfmtArray() {
        return (CTRevisionFormatting[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTRevisionFormatting[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public List<CTRevisionFormatting> getRfmtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gs8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionMoveImpl.this.getRfmtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hs8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionMoveImpl.this.setRfmtArray(((Integer) obj).intValue(), (CTRevisionFormatting) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.is8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionMoveImpl.this.insertNewRfmt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.js8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionMoveImpl.this.removeRfmt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ks8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionMoveImpl.this.sizeOfRfmtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public long getSheetId() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public String getSource() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public long getSourceSheetId() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[9]);
            }
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public boolean getUa() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[4]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTUndoInfo[] getUndoArray() {
        return (CTUndoInfo[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTUndoInfo[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public List<CTUndoInfo> getUndoList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fs8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionMoveImpl.this.getUndoArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ls8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionMoveImpl.this.setUndoArray(((Integer) obj).intValue(), (CTUndoInfo) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ms8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionMoveImpl.this.insertNewUndo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ns8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionMoveImpl.this.removeUndo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.os8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionMoveImpl.this.sizeOfUndoArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTRevisionCellChange insertNewRcc(int i) {
        CTRevisionCellChange cTRevisionCellChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCellChange = (CTRevisionCellChange) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTRevisionCellChange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTRevisionFormatting insertNewRfmt(int i) {
        CTRevisionFormatting cTRevisionFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionFormatting = (CTRevisionFormatting) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTRevisionFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTUndoInfo insertNewUndo(int i) {
        CTUndoInfo cTUndoInfo;
        synchronized (monitor()) {
            check_orphaned();
            cTUndoInfo = (CTUndoInfo) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTUndoInfo;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public boolean isSetRa() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public boolean isSetSourceSheetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public boolean isSetUa() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void removeRcc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void removeRfmt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void removeUndo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setDestination(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setRId(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setRa(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setRccArray(CTRevisionCellChange[] cTRevisionCellChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionCellChangeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setRfmtArray(CTRevisionFormatting[] cTRevisionFormattingArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionFormattingArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setSheetId(long j) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setSource(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setSourceSheetId(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setUa(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setUndoArray(CTUndoInfo[] cTUndoInfoArr) {
        check_orphaned();
        arraySetterHelper(cTUndoInfoArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public int sizeOfRccArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public int sizeOfRfmtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public int sizeOfUndoArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void unsetRa() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void unsetSourceSheetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void unsetUa() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public STRef xgetDestination() {
        STRef sTRef;
        synchronized (monitor()) {
            check_orphaned();
            sTRef = (STRef) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return sTRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public XmlUnsignedInt xgetRId() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public XmlBoolean xgetRa() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[5]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public XmlUnsignedInt xgetSheetId() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public STRef xgetSource() {
        STRef sTRef;
        synchronized (monitor()) {
            check_orphaned();
            sTRef = (STRef) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return sTRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public XmlUnsignedInt xgetSourceSheetId() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlUnsignedInt = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlUnsignedInt == null) {
                xmlUnsignedInt = (XmlUnsignedInt) get_default_attribute_value(qNameArr[9]);
            }
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public XmlBoolean xgetUa() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[4]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void xsetDestination(STRef sTRef) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRef sTRef2 = (STRef) typeStore.find_attribute_user(qNameArr[8]);
            if (sTRef2 == null) {
                sTRef2 = (STRef) get_store().add_attribute_user(qNameArr[8]);
            }
            sTRef2.set(sTRef);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void xsetRId(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void xsetRa(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void xsetSheetId(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void xsetSource(STRef sTRef) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRef sTRef2 = (STRef) typeStore.find_attribute_user(qNameArr[7]);
            if (sTRef2 == null) {
                sTRef2 = (STRef) get_store().add_attribute_user(qNameArr[7]);
            }
            sTRef2.set(sTRef);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void xsetSourceSheetId(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void xsetUa(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTRevisionCellChange getRccArray(int i) {
        CTRevisionCellChange cTRevisionCellChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCellChange = (CTRevisionCellChange) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTRevisionCellChange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionCellChange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTRevisionFormatting getRfmtArray(int i) {
        CTRevisionFormatting cTRevisionFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionFormatting = (CTRevisionFormatting) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTRevisionFormatting == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRevisionFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public CTUndoInfo getUndoArray(int i) {
        CTUndoInfo cTUndoInfo;
        synchronized (monitor()) {
            check_orphaned();
            cTUndoInfo = (CTUndoInfo) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTUndoInfo == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTUndoInfo;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setRccArray(int i, CTRevisionCellChange cTRevisionCellChange) {
        generatedSetterHelperImpl(cTRevisionCellChange, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setRfmtArray(int i, CTRevisionFormatting cTRevisionFormatting) {
        generatedSetterHelperImpl(cTRevisionFormatting, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionMove
    public void setUndoArray(int i, CTUndoInfo cTUndoInfo) {
        generatedSetterHelperImpl(cTUndoInfo, PROPERTY_QNAME[0], i, (short) 2);
    }
}
