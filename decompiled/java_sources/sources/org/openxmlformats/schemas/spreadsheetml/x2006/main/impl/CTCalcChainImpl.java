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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcCell;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCalcChainImpl;

/* loaded from: classes15.dex */
public class CTCalcChainImpl extends XmlComplexContentImpl implements CTCalcChain {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "c"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTCalcChainImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public CTCalcCell addNewC() {
        CTCalcCell cTCalcCell;
        synchronized (monitor()) {
            check_orphaned();
            cTCalcCell = (CTCalcCell) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCalcCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public CTCalcCell[] getCArray() {
        return (CTCalcCell[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCalcCell[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public List<CTCalcCell> getCList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g51
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCalcChainImpl.this.getCArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h51
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCalcChainImpl.this.setCArray(((Integer) obj).intValue(), (CTCalcCell) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i51
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCalcChainImpl.this.insertNewC(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j51
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCalcChainImpl.this.removeC(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k51
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCalcChainImpl.this.sizeOfCArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public CTCalcCell insertNewC(int i) {
        CTCalcCell cTCalcCell;
        synchronized (monitor()) {
            check_orphaned();
            cTCalcCell = (CTCalcCell) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCalcCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public void removeC(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public void setCArray(CTCalcCell[] cTCalcCellArr) {
        check_orphaned();
        arraySetterHelper(cTCalcCellArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public int sizeOfCArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public CTCalcCell getCArray(int i) {
        CTCalcCell cTCalcCell;
        synchronized (monitor()) {
            check_orphaned();
            cTCalcCell = (CTCalcCell) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCalcCell == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCalcCell;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalcChain
    public void setCArray(int i, CTCalcCell cTCalcCell) {
        generatedSetterHelperImpl(cTCalcCell, PROPERTY_QNAME[0], i, (short) 2);
    }
}
