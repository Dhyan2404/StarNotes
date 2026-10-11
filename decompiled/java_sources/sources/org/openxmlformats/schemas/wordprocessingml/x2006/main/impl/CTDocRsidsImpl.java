package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLongHexNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTDocRsidsImpl;

/* loaded from: classes16.dex */
public class CTDocRsidsImpl extends XmlComplexContentImpl implements CTDocRsids {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "rsidRoot"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "rsid")};
    private static final long serialVersionUID = 1;

    public CTDocRsidsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public CTLongHexNumber addNewRsid() {
        CTLongHexNumber cTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTLongHexNumber = (CTLongHexNumber) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public CTLongHexNumber addNewRsidRoot() {
        CTLongHexNumber cTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTLongHexNumber = (CTLongHexNumber) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public CTLongHexNumber[] getRsidArray() {
        return (CTLongHexNumber[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTLongHexNumber[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public List<CTLongHexNumber> getRsidList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cg3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDocRsidsImpl.this.getRsidArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dg3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDocRsidsImpl.this.setRsidArray(((Integer) obj).intValue(), (CTLongHexNumber) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.eg3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDocRsidsImpl.this.insertNewRsid(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fg3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDocRsidsImpl.this.removeRsid(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gg3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDocRsidsImpl.this.sizeOfRsidArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public CTLongHexNumber getRsidRoot() {
        CTLongHexNumber cTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTLongHexNumber = (CTLongHexNumber) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTLongHexNumber == null) {
                cTLongHexNumber = null;
            }
        }
        return cTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public CTLongHexNumber insertNewRsid(int i) {
        CTLongHexNumber cTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTLongHexNumber = (CTLongHexNumber) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public boolean isSetRsidRoot() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public void removeRsid(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public void setRsidArray(CTLongHexNumber[] cTLongHexNumberArr) {
        check_orphaned();
        arraySetterHelper(cTLongHexNumberArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public void setRsidRoot(CTLongHexNumber cTLongHexNumber) {
        generatedSetterHelperImpl(cTLongHexNumber, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public int sizeOfRsidArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public void unsetRsidRoot() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public CTLongHexNumber getRsidArray(int i) {
        CTLongHexNumber cTLongHexNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTLongHexNumber = (CTLongHexNumber) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTLongHexNumber == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLongHexNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocRsids
    public void setRsidArray(int i, CTLongHexNumber cTLongHexNumber) {
        generatedSetterHelperImpl(cTLongHexNumber, PROPERTY_QNAME[1], i, (short) 2);
    }
}
