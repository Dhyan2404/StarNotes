package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStringIndex;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STMdxSetOrder;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMdxSetImpl;

/* loaded from: classes15.dex */
public class CTMdxSetImpl extends XmlComplexContentImpl implements CTMdxSet {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, GoogleApiAvailabilityLight.f29016b), new QName("", Constants.ATTRNAME_NS), new QName("", "c"), new QName("", C4921e.f26528e)};
    private static final long serialVersionUID = 1;

    public CTMdxSetImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public CTMetadataStringIndex addNewN() {
        CTMetadataStringIndex cTMetadataStringIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataStringIndex = (CTMetadataStringIndex) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMetadataStringIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public long getC() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[2]);
            }
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public CTMetadataStringIndex[] getNArray() {
        return (CTMetadataStringIndex[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMetadataStringIndex[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public List<CTMetadataStringIndex> getNList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.al5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMdxSetImpl.this.getNArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bl5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMdxSetImpl.this.setNArray(((Integer) obj).intValue(), (CTMetadataStringIndex) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cl5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMdxSetImpl.this.insertNewN(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dl5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMdxSetImpl.this.removeN(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.el5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMdxSetImpl.this.sizeOfNArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public long getNs() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public STMdxSetOrder.Enum getO() {
        STMdxSetOrder.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[3]);
            }
            r5 = simpleValue == null ? null : (STMdxSetOrder.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public CTMetadataStringIndex insertNewN(int i) {
        CTMetadataStringIndex cTMetadataStringIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataStringIndex = (CTMetadataStringIndex) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMetadataStringIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public boolean isSetC() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public boolean isSetO() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void removeN(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void setC(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void setNArray(CTMetadataStringIndex[] cTMetadataStringIndexArr) {
        check_orphaned();
        arraySetterHelper(cTMetadataStringIndexArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void setNs(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void setO(STMdxSetOrder.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public int sizeOfNArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void unsetC() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void unsetO() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public XmlUnsignedInt xgetC() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlUnsignedInt = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlUnsignedInt == null) {
                xmlUnsignedInt = (XmlUnsignedInt) get_default_attribute_value(qNameArr[2]);
            }
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public XmlUnsignedInt xgetNs() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public STMdxSetOrder xgetO() {
        STMdxSetOrder sTMdxSetOrder;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTMdxSetOrder = (STMdxSetOrder) typeStore.find_attribute_user(qNameArr[3]);
            if (sTMdxSetOrder == null) {
                sTMdxSetOrder = (STMdxSetOrder) get_default_attribute_value(qNameArr[3]);
            }
        }
        return sTMdxSetOrder;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void xsetC(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void xsetNs(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void xsetO(STMdxSetOrder sTMdxSetOrder) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMdxSetOrder sTMdxSetOrder2 = (STMdxSetOrder) typeStore.find_attribute_user(qNameArr[3]);
            if (sTMdxSetOrder2 == null) {
                sTMdxSetOrder2 = (STMdxSetOrder) get_store().add_attribute_user(qNameArr[3]);
            }
            sTMdxSetOrder2.set(sTMdxSetOrder);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public CTMetadataStringIndex getNArray(int i) {
        CTMetadataStringIndex cTMetadataStringIndex;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataStringIndex = (CTMetadataStringIndex) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMetadataStringIndex == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMetadataStringIndex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet
    public void setNArray(int i, CTMetadataStringIndex cTMetadataStringIndex) {
        generatedSetterHelperImpl(cTMetadataStringIndex, PROPERTY_QNAME[0], i, (short) 2);
    }
}
