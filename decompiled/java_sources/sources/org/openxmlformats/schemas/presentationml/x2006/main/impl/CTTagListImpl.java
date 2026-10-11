package org.openxmlformats.schemas.presentationml.x2006.main.impl;

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
import org.openxmlformats.schemas.presentationml.x2006.main.CTStringTag;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTagList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTTagListImpl;

/* loaded from: classes14.dex */
public class CTTagListImpl extends XmlComplexContentImpl implements CTTagList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "tag")};
    private static final long serialVersionUID = 1;

    public CTTagListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTagList
    public CTStringTag addNewTag() {
        CTStringTag cTStringTag;
        synchronized (monitor()) {
            check_orphaned();
            cTStringTag = (CTStringTag) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStringTag;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTagList
    public CTStringTag[] getTagArray() {
        return (CTStringTag[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTStringTag[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTagList
    public List<CTStringTag> getTagList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jfc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTagListImpl.this.getTagArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kfc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTagListImpl.this.setTagArray(((Integer) obj).intValue(), (CTStringTag) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lfc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTagListImpl.this.insertNewTag(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mfc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTagListImpl.this.removeTag(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nfc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTagListImpl.this.sizeOfTagArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTagList
    public CTStringTag insertNewTag(int i) {
        CTStringTag cTStringTag;
        synchronized (monitor()) {
            check_orphaned();
            cTStringTag = (CTStringTag) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTStringTag;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTagList
    public void removeTag(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTagList
    public void setTagArray(CTStringTag[] cTStringTagArr) {
        check_orphaned();
        arraySetterHelper(cTStringTagArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTagList
    public int sizeOfTagArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTagList
    public CTStringTag getTagArray(int i) {
        CTStringTag cTStringTag;
        synchronized (monitor()) {
            check_orphaned();
            cTStringTag = (CTStringTag) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTStringTag == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTStringTag;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTagList
    public void setTagArray(int i, CTStringTag cTStringTag) {
        generatedSetterHelperImpl(cTStringTag, PROPERTY_QNAME[0], i, (short) 2);
    }
}
