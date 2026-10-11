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
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMetadataBlocksImpl;

/* loaded from: classes15.dex */
public class CTMetadataBlocksImpl extends XmlComplexContentImpl implements CTMetadataBlocks {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "bk"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTMetadataBlocksImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public CTMetadataBlock addNewBk() {
        CTMetadataBlock cTMetadataBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataBlock = (CTMetadataBlock) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMetadataBlock;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public CTMetadataBlock[] getBkArray() {
        return (CTMetadataBlock[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMetadataBlock[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public List<CTMetadataBlock> getBkList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.om5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMetadataBlocksImpl.this.getBkArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pm5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMetadataBlocksImpl.this.setBkArray(((Integer) obj).intValue(), (CTMetadataBlock) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qm5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMetadataBlocksImpl.this.insertNewBk(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rm5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMetadataBlocksImpl.this.removeBk(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sm5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMetadataBlocksImpl.this.sizeOfBkArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public CTMetadataBlock insertNewBk(int i) {
        CTMetadataBlock cTMetadataBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataBlock = (CTMetadataBlock) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMetadataBlock;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public boolean isSetCount() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public void removeBk(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public void setBkArray(CTMetadataBlock[] cTMetadataBlockArr) {
        check_orphaned();
        arraySetterHelper(cTMetadataBlockArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public void setCount(long j) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public int sizeOfBkArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlUnsignedInt = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlUnsignedInt == null) {
                xmlUnsignedInt = (XmlUnsignedInt) get_default_attribute_value(qNameArr[1]);
            }
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public void xsetCount(XmlUnsignedInt xmlUnsignedInt) {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public CTMetadataBlock getBkArray(int i) {
        CTMetadataBlock cTMetadataBlock;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataBlock = (CTMetadataBlock) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMetadataBlock == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMetadataBlock;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks
    public void setBkArray(int i, CTMetadataBlock cTMetadataBlock) {
        generatedSetterHelperImpl(cTMetadataBlock, PROPERTY_QNAME[0], i, (short) 2);
    }
}
