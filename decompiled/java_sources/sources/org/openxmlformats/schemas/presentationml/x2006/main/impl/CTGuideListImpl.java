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
import org.openxmlformats.schemas.presentationml.x2006.main.CTGuide;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGuideList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTGuideListImpl;

/* loaded from: classes14.dex */
public class CTGuideListImpl extends XmlComplexContentImpl implements CTGuideList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "guide")};
    private static final long serialVersionUID = 1;

    public CTGuideListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTGuideList
    public CTGuide addNewGuide() {
        CTGuide cTGuide;
        synchronized (monitor()) {
            check_orphaned();
            cTGuide = (CTGuide) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGuide;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTGuideList
    public CTGuide[] getGuideArray() {
        return (CTGuide[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTGuide[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTGuideList
    public List<CTGuide> getGuideList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ql4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGuideListImpl.this.getGuideArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rl4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGuideListImpl.this.setGuideArray(((Integer) obj).intValue(), (CTGuide) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sl4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGuideListImpl.this.insertNewGuide(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tl4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGuideListImpl.this.removeGuide(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ul4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGuideListImpl.this.sizeOfGuideArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTGuideList
    public CTGuide insertNewGuide(int i) {
        CTGuide cTGuide;
        synchronized (monitor()) {
            check_orphaned();
            cTGuide = (CTGuide) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTGuide;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTGuideList
    public void removeGuide(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTGuideList
    public void setGuideArray(CTGuide[] cTGuideArr) {
        check_orphaned();
        arraySetterHelper(cTGuideArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTGuideList
    public int sizeOfGuideArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTGuideList
    public CTGuide getGuideArray(int i) {
        CTGuide cTGuide;
        synchronized (monitor()) {
            check_orphaned();
            cTGuide = (CTGuide) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTGuide == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGuide;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTGuideList
    public void setGuideArray(int i, CTGuide cTGuide) {
        generatedSetterHelperImpl(cTGuide, PROPERTY_QNAME[0], i, (short) 2);
    }
}
