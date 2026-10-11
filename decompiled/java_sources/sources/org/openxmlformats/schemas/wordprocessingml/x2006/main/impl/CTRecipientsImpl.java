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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipientData;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTRecipientsImpl;

/* loaded from: classes16.dex */
public class CTRecipientsImpl extends XmlComplexContentImpl implements CTRecipients {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "recipientData")};
    private static final long serialVersionUID = 1;

    public CTRecipientsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients
    public CTRecipientData addNewRecipientData() {
        CTRecipientData cTRecipientData;
        synchronized (monitor()) {
            check_orphaned();
            cTRecipientData = (CTRecipientData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRecipientData;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients
    public CTRecipientData[] getRecipientDataArray() {
        return (CTRecipientData[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTRecipientData[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients
    public List<CTRecipientData> getRecipientDataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hl8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecipientsImpl.this.getRecipientDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.il8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRecipientsImpl.this.setRecipientDataArray(((Integer) obj).intValue(), (CTRecipientData) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jl8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRecipientsImpl.this.insertNewRecipientData(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kl8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRecipientsImpl.this.removeRecipientData(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ll8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRecipientsImpl.this.sizeOfRecipientDataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients
    public CTRecipientData insertNewRecipientData(int i) {
        CTRecipientData cTRecipientData;
        synchronized (monitor()) {
            check_orphaned();
            cTRecipientData = (CTRecipientData) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTRecipientData;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients
    public void removeRecipientData(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients
    public void setRecipientDataArray(CTRecipientData[] cTRecipientDataArr) {
        check_orphaned();
        arraySetterHelper(cTRecipientDataArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients
    public int sizeOfRecipientDataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients
    public CTRecipientData getRecipientDataArray(int i) {
        CTRecipientData cTRecipientData;
        synchronized (monitor()) {
            check_orphaned();
            cTRecipientData = (CTRecipientData) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTRecipientData == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRecipientData;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRecipients
    public void setRecipientDataArray(int i, CTRecipientData cTRecipientData) {
        generatedSetterHelperImpl(cTRecipientData, PROPERTY_QNAME[0], i, (short) 2);
    }
}
