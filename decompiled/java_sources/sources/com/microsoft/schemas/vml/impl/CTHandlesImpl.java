package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTH;
import com.microsoft.schemas.vml.CTHandles;
import com.microsoft.schemas.vml.impl.CTHandlesImpl;
import com.miui.penengine.p015e.C6999h;
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
public class CTHandlesImpl extends XmlComplexContentImpl implements CTHandles {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", C6999h.f39688c)};
    private static final long serialVersionUID = 1;

    public CTHandlesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.CTHandles
    public CTH addNewH() {
        CTH cth;
        synchronized (monitor()) {
            check_orphaned();
            cth = (CTH) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cth;
    }

    @Override // com.microsoft.schemas.vml.CTHandles
    public CTH[] getHArray() {
        return (CTH[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTH[0]);
    }

    @Override // com.microsoft.schemas.vml.CTHandles
    public List<CTH> getHList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zm4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTHandlesImpl.this.getHArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.an4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTHandlesImpl.this.setHArray(((Integer) obj).intValue(), (CTH) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bn4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTHandlesImpl.this.insertNewH(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cn4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTHandlesImpl.this.removeH(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dn4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTHandlesImpl.this.sizeOfHArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTHandles
    public CTH insertNewH(int i) {
        CTH cth;
        synchronized (monitor()) {
            check_orphaned();
            cth = (CTH) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cth;
    }

    @Override // com.microsoft.schemas.vml.CTHandles
    public void removeH(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTHandles
    public void setHArray(CTH[] cthArr) {
        check_orphaned();
        arraySetterHelper(cthArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.vml.CTHandles
    public int sizeOfHArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTHandles
    public CTH getHArray(int i) {
        CTH cth;
        synchronized (monitor()) {
            check_orphaned();
            cth = (CTH) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cth == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cth;
    }

    @Override // com.microsoft.schemas.vml.CTHandles
    public void setHArray(int i, CTH cth) {
        generatedSetterHelperImpl(cth, PROPERTY_QNAME[0], i, (short) 2);
    }
}
