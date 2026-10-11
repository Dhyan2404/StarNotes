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
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplate;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplateList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTTLTemplateListImpl;

/* loaded from: classes14.dex */
public class CTTLTemplateListImpl extends XmlComplexContentImpl implements CTTLTemplateList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "tmpl")};
    private static final long serialVersionUID = 1;

    public CTTLTemplateListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplateList
    public CTTLTemplate addNewTmpl() {
        CTTLTemplate cTTLTemplate;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTemplate = (CTTLTemplate) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLTemplate;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplateList
    public CTTLTemplate[] getTmplArray() {
        return (CTTLTemplate[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTTLTemplate[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplateList
    public List<CTTLTemplate> getTmplList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mcc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTLTemplateListImpl.this.getTmplArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ncc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTLTemplateListImpl.this.setTmplArray(((Integer) obj).intValue(), (CTTLTemplate) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.occ
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTLTemplateListImpl.this.insertNewTmpl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pcc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTTLTemplateListImpl.this.removeTmpl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qcc
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTTLTemplateListImpl.this.sizeOfTmplArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplateList
    public CTTLTemplate insertNewTmpl(int i) {
        CTTLTemplate cTTLTemplate;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTemplate = (CTTLTemplate) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTTLTemplate;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplateList
    public void removeTmpl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplateList
    public void setTmplArray(CTTLTemplate[] cTTLTemplateArr) {
        check_orphaned();
        arraySetterHelper(cTTLTemplateArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplateList
    public int sizeOfTmplArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplateList
    public CTTLTemplate getTmplArray(int i) {
        CTTLTemplate cTTLTemplate;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTemplate = (CTTLTemplate) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTTLTemplate == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTLTemplate;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTemplateList
    public void setTmplArray(int i, CTTLTemplate cTTLTemplate) {
        generatedSetterHelperImpl(cTTLTemplate, PROPERTY_QNAME[0], i, (short) 2);
    }
}
