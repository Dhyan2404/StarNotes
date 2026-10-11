package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTF;
import com.microsoft.schemas.vml.CTFormulas;
import com.microsoft.schemas.vml.impl.CTFormulasImpl;
import com.miui.penengine.p015e.C6997f;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTFormulasImpl extends XmlComplexContentImpl implements CTFormulas {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", C6997f.f39671c)};
    private static final long serialVersionUID = 1;

    public CTFormulasImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.CTFormulas
    public CTF addNewF() {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return ctf;
    }

    @Override // com.microsoft.schemas.vml.CTFormulas
    public CTF[] getFArray() {
        return (CTF[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTF[0]);
    }

    @Override // com.microsoft.schemas.vml.CTFormulas
    public List<CTF> getFList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFormulasImpl.this.getFArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g24
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFormulasImpl.this.setFArray(((Integer) obj).intValue(), (CTF) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h24
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFormulasImpl.this.insertNewF(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i24
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFormulasImpl.this.removeF(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j24
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFormulasImpl.this.sizeOfFArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTFormulas
    public CTF insertNewF(int i) {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return ctf;
    }

    @Override // com.microsoft.schemas.vml.CTFormulas
    public void removeF(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTFormulas
    public void setFArray(CTF[] ctfArr) {
        check_orphaned();
        arraySetterHelper(ctfArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.vml.CTFormulas
    public int sizeOfFArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTFormulas
    public CTF getFArray(int i) {
        CTF ctf;
        synchronized (monitor()) {
            check_orphaned();
            ctf = (CTF) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (ctf == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ctf;
    }

    @Override // com.microsoft.schemas.vml.CTFormulas
    public void setFArray(int i, CTF ctf) {
        generatedSetterHelperImpl(ctf, PROPERTY_QNAME[0], i, (short) 2);
    }
}
