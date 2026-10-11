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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumn;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTTableColumnsImpl;

/* loaded from: classes15.dex */
public class CTTableColumnsImpl extends XmlComplexContentImpl implements CTTableColumns {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "tableColumn"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTTableColumnsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public CTTableColumn addNewTableColumn() {
        CTTableColumn cTTableColumn;
        synchronized (monitor()) {
            check_orphaned();
            cTTableColumn = (CTTableColumn) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTableColumn;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public CTTableColumn[] getTableColumnArray() {
        return (CTTableColumn[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTableColumn[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public List<CTTableColumn> getTableColumnList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bdc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTableColumnsImpl.this.getTableColumnArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cdc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTableColumnsImpl.this.setTableColumnArray(((Integer) obj).intValue(), (CTTableColumn) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ddc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTableColumnsImpl.this.insertNewTableColumn(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.edc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTableColumnsImpl.this.removeTableColumn(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fdc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTableColumnsImpl.this.sizeOfTableColumnArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public CTTableColumn insertNewTableColumn(int i) {
        CTTableColumn cTTableColumn;
        synchronized (monitor()) {
            check_orphaned();
            cTTableColumn = (CTTableColumn) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTableColumn;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public void removeTableColumn(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public void setTableColumnArray(CTTableColumn[] cTTableColumnArr) {
        check_orphaned();
        arraySetterHelper(cTTableColumnArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public int sizeOfTableColumnArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public CTTableColumn getTableColumnArray(int i) {
        CTTableColumn cTTableColumn;
        synchronized (monitor()) {
            check_orphaned();
            cTTableColumn = (CTTableColumn) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTableColumn == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTableColumn;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumns
    public void setTableColumnArray(int i, CTTableColumn cTTableColumn) {
        generatedSetterHelperImpl(cTTableColumn, PROPERTY_QNAME[0], i, (short) 2);
    }
}
