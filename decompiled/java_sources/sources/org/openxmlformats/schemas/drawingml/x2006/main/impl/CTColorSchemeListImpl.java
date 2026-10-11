package org.openxmlformats.schemas.drawingml.x2006.main.impl;

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
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeAndMapping;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeList;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTColorSchemeListImpl;

/* loaded from: classes14.dex */
public class CTColorSchemeListImpl extends XmlComplexContentImpl implements CTColorSchemeList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "extraClrScheme")};
    private static final long serialVersionUID = 1;

    public CTColorSchemeListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeList
    public CTColorSchemeAndMapping addNewExtraClrScheme() {
        CTColorSchemeAndMapping cTColorSchemeAndMapping;
        synchronized (monitor()) {
            check_orphaned();
            cTColorSchemeAndMapping = (CTColorSchemeAndMapping) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTColorSchemeAndMapping;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeList
    public CTColorSchemeAndMapping[] getExtraClrSchemeArray() {
        return (CTColorSchemeAndMapping[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTColorSchemeAndMapping[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeList
    public List<CTColorSchemeAndMapping> getExtraClrSchemeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorSchemeListImpl.this.getExtraClrSchemeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k02
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTColorSchemeListImpl.this.setExtraClrSchemeArray(((Integer) obj).intValue(), (CTColorSchemeAndMapping) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTColorSchemeListImpl.this.insertNewExtraClrScheme(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m02
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTColorSchemeListImpl.this.removeExtraClrScheme(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n02
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTColorSchemeListImpl.this.sizeOfExtraClrSchemeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeList
    public CTColorSchemeAndMapping insertNewExtraClrScheme(int i) {
        CTColorSchemeAndMapping cTColorSchemeAndMapping;
        synchronized (monitor()) {
            check_orphaned();
            cTColorSchemeAndMapping = (CTColorSchemeAndMapping) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTColorSchemeAndMapping;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeList
    public void removeExtraClrScheme(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeList
    public void setExtraClrSchemeArray(CTColorSchemeAndMapping[] cTColorSchemeAndMappingArr) {
        check_orphaned();
        arraySetterHelper(cTColorSchemeAndMappingArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeList
    public int sizeOfExtraClrSchemeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeList
    public CTColorSchemeAndMapping getExtraClrSchemeArray(int i) {
        CTColorSchemeAndMapping cTColorSchemeAndMapping;
        synchronized (monitor()) {
            check_orphaned();
            cTColorSchemeAndMapping = (CTColorSchemeAndMapping) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTColorSchemeAndMapping == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTColorSchemeAndMapping;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTColorSchemeList
    public void setExtraClrSchemeArray(int i, CTColorSchemeAndMapping cTColorSchemeAndMapping) {
        generatedSetterHelperImpl(cTColorSchemeAndMapping, PROPERTY_QNAME[0], i, (short) 2);
    }
}
