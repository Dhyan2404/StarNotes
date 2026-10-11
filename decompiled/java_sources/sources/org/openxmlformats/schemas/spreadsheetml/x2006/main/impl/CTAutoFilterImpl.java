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
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFilterColumn;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSortState;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRef;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTAutoFilterImpl;

/* loaded from: classes15.dex */
public class CTAutoFilterImpl extends XmlComplexContentImpl implements CTAutoFilter {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "filterColumn"), new QName(XSSFRelation.NS_SPREADSHEETML, "sortState"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst"), new QName("", "ref")};
    private static final long serialVersionUID = 1;

    public CTAutoFilterImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public CTFilterColumn addNewFilterColumn() {
        CTFilterColumn cTFilterColumn;
        synchronized (monitor()) {
            check_orphaned();
            cTFilterColumn = (CTFilterColumn) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFilterColumn;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public CTSortState addNewSortState() {
        CTSortState cTSortState;
        synchronized (monitor()) {
            check_orphaned();
            cTSortState = (CTSortState) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSortState;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public CTFilterColumn[] getFilterColumnArray() {
        return (CTFilterColumn[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFilterColumn[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public List<CTFilterColumn> getFilterColumnList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sj0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAutoFilterImpl.this.getFilterColumnArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tj0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTAutoFilterImpl.this.setFilterColumnArray(((Integer) obj).intValue(), (CTFilterColumn) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uj0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTAutoFilterImpl.this.insertNewFilterColumn(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vj0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTAutoFilterImpl.this.removeFilterColumn(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wj0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTAutoFilterImpl.this.sizeOfFilterColumnArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public String getRef() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public CTSortState getSortState() {
        CTSortState cTSortState;
        synchronized (monitor()) {
            check_orphaned();
            cTSortState = (CTSortState) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTSortState == null) {
                cTSortState = null;
            }
        }
        return cTSortState;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public CTFilterColumn insertNewFilterColumn(int i) {
        CTFilterColumn cTFilterColumn;
        synchronized (monitor()) {
            check_orphaned();
            cTFilterColumn = (CTFilterColumn) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFilterColumn;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public boolean isSetRef() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public boolean isSetSortState() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public void removeFilterColumn(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public void setFilterColumnArray(CTFilterColumn[] cTFilterColumnArr) {
        check_orphaned();
        arraySetterHelper(cTFilterColumnArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public void setRef(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public void setSortState(CTSortState cTSortState) {
        generatedSetterHelperImpl(cTSortState, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public int sizeOfFilterColumnArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public void unsetRef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public void unsetSortState() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public STRef xgetRef() {
        STRef sTRef;
        synchronized (monitor()) {
            check_orphaned();
            sTRef = (STRef) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTRef;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public void xsetRef(STRef sTRef) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRef sTRef2 = (STRef) typeStore.find_attribute_user(qNameArr[3]);
            if (sTRef2 == null) {
                sTRef2 = (STRef) get_store().add_attribute_user(qNameArr[3]);
            }
            sTRef2.set(sTRef);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public CTFilterColumn getFilterColumnArray(int i) {
        CTFilterColumn cTFilterColumn;
        synchronized (monitor()) {
            check_orphaned();
            cTFilterColumn = (CTFilterColumn) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTFilterColumn == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFilterColumn;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter
    public void setFilterColumnArray(int i, CTFilterColumn cTFilterColumn) {
        generatedSetterHelperImpl(cTFilterColumn, PROPERTY_QNAME[0], i, (short) 2);
    }
}
