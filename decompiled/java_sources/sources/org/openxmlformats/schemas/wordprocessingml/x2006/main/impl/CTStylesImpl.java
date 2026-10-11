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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocDefaults;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTLatentStyles;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTStylesImpl;

/* loaded from: classes16.dex */
public class CTStylesImpl extends XmlComplexContentImpl implements CTStyles {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "docDefaults"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "latentStyles"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "style")};
    private static final long serialVersionUID = 1;

    public CTStylesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public CTDocDefaults addNewDocDefaults() {
        CTDocDefaults cTDocDefaults;
        synchronized (monitor()) {
            check_orphaned();
            cTDocDefaults = (CTDocDefaults) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDocDefaults;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public CTLatentStyles addNewLatentStyles() {
        CTLatentStyles cTLatentStyles;
        synchronized (monitor()) {
            check_orphaned();
            cTLatentStyles = (CTLatentStyles) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTLatentStyles;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public CTStyle addNewStyle() {
        CTStyle cTStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTStyle = (CTStyle) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTStyle;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public CTDocDefaults getDocDefaults() {
        CTDocDefaults cTDocDefaults;
        synchronized (monitor()) {
            check_orphaned();
            cTDocDefaults = (CTDocDefaults) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDocDefaults == null) {
                cTDocDefaults = null;
            }
        }
        return cTDocDefaults;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public CTLatentStyles getLatentStyles() {
        CTLatentStyles cTLatentStyles;
        synchronized (monitor()) {
            check_orphaned();
            cTLatentStyles = (CTLatentStyles) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTLatentStyles == null) {
                cTLatentStyles = null;
            }
        }
        return cTLatentStyles;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public CTStyle[] getStyleArray() {
        return (CTStyle[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTStyle[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public List<CTStyle> getStyleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t5c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStylesImpl.this.getStyleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u5c
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTStylesImpl.this.setStyleArray(((Integer) obj).intValue(), (CTStyle) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v5c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTStylesImpl.this.insertNewStyle(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w5c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTStylesImpl.this.removeStyle(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x5c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTStylesImpl.this.sizeOfStyleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public CTStyle insertNewStyle(int i) {
        CTStyle cTStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTStyle = (CTStyle) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTStyle;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public boolean isSetDocDefaults() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public boolean isSetLatentStyles() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public void removeStyle(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public void setDocDefaults(CTDocDefaults cTDocDefaults) {
        generatedSetterHelperImpl(cTDocDefaults, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public void setLatentStyles(CTLatentStyles cTLatentStyles) {
        generatedSetterHelperImpl(cTLatentStyles, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public void setStyleArray(CTStyle[] cTStyleArr) {
        check_orphaned();
        arraySetterHelper(cTStyleArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public int sizeOfStyleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public void unsetDocDefaults() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public void unsetLatentStyles() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public CTStyle getStyleArray(int i) {
        CTStyle cTStyle;
        synchronized (monitor()) {
            check_orphaned();
            cTStyle = (CTStyle) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTStyle == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTStyle;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles
    public void setStyleArray(int i, CTStyle cTStyle) {
        generatedSetterHelperImpl(cTStyle, PROPERTY_QNAME[2], i, (short) 2);
    }
}
