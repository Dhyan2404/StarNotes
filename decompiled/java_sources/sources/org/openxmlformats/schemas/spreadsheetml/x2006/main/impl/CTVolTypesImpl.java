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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTVolTypesImpl;

/* loaded from: classes15.dex */
public class CTVolTypesImpl extends XmlComplexContentImpl implements CTVolTypes {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "volType"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTVolTypesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public CTVolType addNewVolType() {
        CTVolType cTVolType;
        synchronized (monitor()) {
            check_orphaned();
            cTVolType = (CTVolType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVolType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public CTVolType[] getVolTypeArray() {
        return (CTVolType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTVolType[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public List<CTVolType> getVolTypeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lhd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolTypesImpl.this.getVolTypeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mhd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTVolTypesImpl.this.setVolTypeArray(((Integer) obj).intValue(), (CTVolType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nhd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTVolTypesImpl.this.insertNewVolType(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ohd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTVolTypesImpl.this.removeVolType(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.phd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTVolTypesImpl.this.sizeOfVolTypeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public CTVolType insertNewVolType(int i) {
        CTVolType cTVolType;
        synchronized (monitor()) {
            check_orphaned();
            cTVolType = (CTVolType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTVolType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public boolean isSetExtLst() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public void removeVolType(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public void setVolTypeArray(CTVolType[] cTVolTypeArr) {
        check_orphaned();
        arraySetterHelper(cTVolTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public int sizeOfVolTypeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public CTVolType getVolTypeArray(int i) {
        CTVolType cTVolType;
        synchronized (monitor()) {
            check_orphaned();
            cTVolType = (CTVolType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTVolType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTVolType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTVolTypes
    public void setVolTypeArray(int i, CTVolType cTVolType) {
        generatedSetterHelperImpl(cTVolType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
