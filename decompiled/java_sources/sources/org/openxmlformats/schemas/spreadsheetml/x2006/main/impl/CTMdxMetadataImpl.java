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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMdxMetadataImpl;

/* loaded from: classes15.dex */
public class CTMdxMetadataImpl extends XmlComplexContentImpl implements CTMdxMetadata {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "mdx"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTMdxMetadataImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
    public CTMdx addNewMdx() {
        CTMdx cTMdx;
        synchronized (monitor()) {
            check_orphaned();
            cTMdx = (CTMdx) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMdx;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
    public CTMdx[] getMdxArray() {
        return (CTMdx[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMdx[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
    public List<CTMdx> getMdxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vk5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMdxMetadataImpl.this.getMdxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wk5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMdxMetadataImpl.this.setMdxArray(((Integer) obj).intValue(), (CTMdx) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xk5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMdxMetadataImpl.this.insertNewMdx(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yk5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMdxMetadataImpl.this.removeMdx(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zk5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMdxMetadataImpl.this.sizeOfMdxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
    public CTMdx insertNewMdx(int i) {
        CTMdx cTMdx;
        synchronized (monitor()) {
            check_orphaned();
            cTMdx = (CTMdx) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMdx;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
    public void removeMdx(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
    public void setMdxArray(CTMdx[] cTMdxArr) {
        check_orphaned();
        arraySetterHelper(cTMdxArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
    public int sizeOfMdxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
    public CTMdx getMdxArray(int i) {
        CTMdx cTMdx;
        synchronized (monitor()) {
            check_orphaned();
            cTMdx = (CTMdx) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMdx == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMdx;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata
    public void setMdxArray(int i, CTMdx cTMdx) {
        generatedSetterHelperImpl(cTMdx, PROPERTY_QNAME[0], i, (short) 2);
    }
}
