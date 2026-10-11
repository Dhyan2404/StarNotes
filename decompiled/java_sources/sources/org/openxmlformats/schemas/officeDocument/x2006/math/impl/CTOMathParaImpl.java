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
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathParaPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.impl.CTOMathParaImpl;

/* loaded from: classes14.dex */
public class CTOMathParaImpl extends XmlComplexContentImpl implements CTOMathPara {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMathParaPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "oMath")};
    private static final long serialVersionUID = 1;

    public CTOMathParaImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public CTOMath addNewOMath() {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public CTOMathParaPr addNewOMathParaPr() {
        CTOMathParaPr cTOMathParaPr;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathParaPr = (CTOMathParaPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOMathParaPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public CTOMath[] getOMathArray() {
        return (CTOMath[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTOMath[0]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public List<CTOMath> getOMathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w86
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathParaImpl.this.getOMathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x86
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOMathParaImpl.this.setOMathArray(((Integer) obj).intValue(), (CTOMath) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.y86
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOMathParaImpl.this.insertNewOMath(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.z86
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOMathParaImpl.this.removeOMath(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a96
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOMathParaImpl.this.sizeOfOMathArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public CTOMathParaPr getOMathParaPr() {
        CTOMathParaPr cTOMathParaPr;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathParaPr = (CTOMathParaPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOMathParaPr == null) {
                cTOMathParaPr = null;
            }
        }
        return cTOMathParaPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public CTOMath insertNewOMath(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public boolean isSetOMathParaPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public void removeOMath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public void setOMathArray(CTOMath[] cTOMathArr) {
        check_orphaned();
        arraySetterHelper(cTOMathArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public void setOMathParaPr(CTOMathParaPr cTOMathParaPr) {
        generatedSetterHelperImpl(cTOMathParaPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public int sizeOfOMathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public void unsetOMathParaPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public CTOMath getOMathArray(int i) {
        CTOMath cTOMath;
        synchronized (monitor()) {
            check_orphaned();
            cTOMath = (CTOMath) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTOMath == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOMath;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara
    public void setOMathArray(int i, CTOMath cTOMath) {
        generatedSetterHelperImpl(cTOMath, PROPERTY_QNAME[1], i, (short) 2);
    }
}
