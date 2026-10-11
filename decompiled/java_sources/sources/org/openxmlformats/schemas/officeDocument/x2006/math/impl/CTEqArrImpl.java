package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArrPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;
import org.openxmlformats.schemas.officeDocument.x2006.math.impl.CTEqArrImpl;

/* loaded from: classes14.dex */
public class CTEqArrImpl extends XmlComplexContentImpl implements CTEqArr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "eqArrPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "e")};
    private static final long serialVersionUID = 1;

    public CTEqArrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public CTOMathArg addNewE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public CTEqArrPr addNewEqArrPr() {
        CTEqArrPr cTEqArrPr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArrPr = (CTEqArrPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEqArrPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public CTOMathArg[] getEArray() {
        return (CTOMathArg[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTOMathArg[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public List<CTOMathArg> getEList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xp3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEqArrImpl.this.getEArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yp3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEqArrImpl.this.setEArray(((Integer) obj).intValue(), (CTOMathArg) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zp3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEqArrImpl.this.insertNewE(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.aq3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEqArrImpl.this.removeE(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bq3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEqArrImpl.this.sizeOfEArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public CTEqArrPr getEqArrPr() {
        CTEqArrPr cTEqArrPr;
        synchronized (monitor()) {
            check_orphaned();
            cTEqArrPr = (CTEqArrPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTEqArrPr == null) {
                cTEqArrPr = null;
            }
        }
        return cTEqArrPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public CTOMathArg insertNewE(int i) {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public boolean isSetEqArrPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public void removeE(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public void setEArray(CTOMathArg[] cTOMathArgArr) {
        check_orphaned();
        arraySetterHelper(cTOMathArgArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public void setEqArrPr(CTEqArrPr cTEqArrPr) {
        generatedSetterHelperImpl(cTEqArrPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public int sizeOfEArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public void unsetEqArrPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public CTOMathArg getEArray(int i) {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTOMathArg == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTEqArr
    public void setEArray(int i, CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[1], i, (short) 2);
    }
}
