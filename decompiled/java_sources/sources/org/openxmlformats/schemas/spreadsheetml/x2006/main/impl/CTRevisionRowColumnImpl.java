package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTUndoInfo;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRef;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRwColActionType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTRevisionRowColumnImpl;

/* loaded from: classes15.dex */
public class CTRevisionRowColumnImpl extends XmlComplexContentImpl implements CTRevisionRowColumn {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "undo"), new QName(XSSFRelation.NS_SPREADSHEETML, "rcc"), new QName(XSSFRelation.NS_SPREADSHEETML, "rfmt"), new QName("", "rId"), new QName("", "ua"), new QName("", "ra"), new QName("", "sId"), new QName("", "eol"), new QName("", "ref"), new QName("", "action"), new QName("", "edge")};
    private static final long serialVersionUID = 1;

    public CTRevisionRowColumnImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public CTRevisionCellChange addNewRcc() {
        CTRevisionCellChange cTRevisionCellChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCellChange = (CTRevisionCellChange) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTRevisionCellChange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public CTRevisionFormatting addNewRfmt() {
        CTRevisionFormatting cTRevisionFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionFormatting = (CTRevisionFormatting) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTRevisionFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public CTUndoInfo addNewUndo() {
        CTUndoInfo cTUndoInfo;
        synchronized (monitor()) {
            check_orphaned();
            cTUndoInfo = (CTUndoInfo) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTUndoInfo;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public STRwColActionType.Enum getAction() {
        STRwColActionType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            r3 = simpleValue == null ? null : (STRwColActionType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public boolean getEdge() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public boolean getEol() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[7]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public long getRId() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public CTRevisionCellChange[] getRccArray() {
        return (CTRevisionCellChange[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTRevisionCellChange[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public List<CTRevisionCellChange> getRccList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vs8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionRowColumnImpl.this.getRccArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ws8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionRowColumnImpl.this.setRccArray(((Integer) obj).intValue(), (CTRevisionCellChange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xs8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionRowColumnImpl.this.insertNewRcc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ys8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionRowColumnImpl.this.removeRcc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zs8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionRowColumnImpl.this.sizeOfRccArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public String getRef() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public CTRevisionFormatting[] getRfmtArray() {
        return (CTRevisionFormatting[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTRevisionFormatting[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public List<CTRevisionFormatting> getRfmtList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.us8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionRowColumnImpl.this.getRfmtArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.at8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionRowColumnImpl.this.setRfmtArray(((Integer) obj).intValue(), (CTRevisionFormatting) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bt8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionRowColumnImpl.this.insertNewRfmt(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ct8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionRowColumnImpl.this.removeRfmt(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dt8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionRowColumnImpl.this.sizeOfRfmtArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public long getSId() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public CTUndoInfo[] getUndoArray() {
        return (CTUndoInfo[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTUndoInfo[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public List<CTUndoInfo> getUndoList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.et8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionRowColumnImpl.this.getUndoArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ft8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRevisionRowColumnImpl.this.setUndoArray(((Integer) obj).intValue(), (CTUndoInfo) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gt8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRevisionRowColumnImpl.this.insertNewUndo(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ht8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRevisionRowColumnImpl.this.removeUndo(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.it8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRevisionRowColumnImpl.this.sizeOfUndoArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public CTRevisionCellChange insertNewRcc(int i) {
        CTRevisionCellChange cTRevisionCellChange;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionCellChange = (CTRevisionCellChange) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTRevisionCellChange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public CTRevisionFormatting insertNewRfmt(int i) {
        CTRevisionFormatting cTRevisionFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionFormatting = (CTRevisionFormatting) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTRevisionFormatting;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public CTUndoInfo insertNewUndo(int i) {
        CTUndoInfo cTUndoInfo;
        synchronized (monitor()) {
            check_orphaned();
            cTUndoInfo = (CTUndoInfo) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTUndoInfo;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public boolean isSetEdge() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public boolean isSetEol() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public boolean isSetRa() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public boolean isSetUa() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void removeRcc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void removeRfmt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void removeUndo(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setAction(STRwColActionType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setEdge(boolean z) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setEol(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setRccArray(CTRevisionCellChange[] cTRevisionCellChangeArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionCellChangeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setRef(String str) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setRfmtArray(CTRevisionFormatting[] cTRevisionFormattingArr) {
        check_orphaned();
        arraySetterHelper(cTRevisionFormattingArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setSId(long j) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setUndoArray(CTUndoInfo[] cTUndoInfoArr) {
        check_orphaned();
        arraySetterHelper(cTUndoInfoArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public int sizeOfRccArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public int sizeOfRfmtArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public int sizeOfUndoArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void unsetEdge() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void unsetEol() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void unsetRa() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void unsetUa() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public STRwColActionType xgetAction() {
        STRwColActionType sTRwColActionType;
        synchronized (monitor()) {
            check_orphaned();
            sTRwColActionType = (STRwColActionType) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return sTRwColActionType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public XmlBoolean xgetEdge() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public XmlBoolean xgetEol() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[7]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public XmlUnsignedInt xgetRId() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public STRef xgetRef() {
        STRef sTRef;
        synchronized (monitor()) {
            check_orphaned();
            sTRef = (STRef) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return sTRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public XmlUnsignedInt xgetSId() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void xsetAction(STRwColActionType sTRwColActionType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRwColActionType sTRwColActionType2 = (STRwColActionType) typeStore.find_attribute_user(qNameArr[9]);
            if (sTRwColActionType2 == null) {
                sTRwColActionType2 = (STRwColActionType) get_store().add_attribute_user(qNameArr[9]);
            }
            sTRwColActionType2.set(sTRwColActionType);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void xsetEdge(XmlBoolean xmlBoolean) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void xsetEol(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void xsetRef(STRef sTRef) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void xsetSId(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setRccArray(int i, CTRevisionCellChange cTRevisionCellChange) {
        generatedSetterHelperImpl(cTRevisionCellChange, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setRfmtArray(int i, CTRevisionFormatting cTRevisionFormatting) {
        generatedSetterHelperImpl(cTRevisionFormatting, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionRowColumn
    public void setUndoArray(int i, CTUndoInfo cTUndoInfo) {
        generatedSetterHelperImpl(cTUndoInfo, PROPERTY_QNAME[0], i, (short) 2);
    }
}
