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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFont;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTFontsListImpl;

/* loaded from: classes16.dex */
public class CTFontsListImpl extends XmlComplexContentImpl implements CTFontsList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "font")};
    private static final long serialVersionUID = 1;

    public CTFontsListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList
    public CTFont addNewFont() {
        CTFont cTFont;
        synchronized (monitor()) {
            check_orphaned();
            cTFont = (CTFont) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFont;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList
    public CTFont[] getFontArray() {
        return (CTFont[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTFont[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList
    public List<CTFont> getFontList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xz3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontsListImpl.this.getFontArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yz3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontsListImpl.this.setFontArray(((Integer) obj).intValue(), (CTFont) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zz3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontsListImpl.this.insertNewFont(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.a04
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontsListImpl.this.removeFont(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.b04
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontsListImpl.this.sizeOfFontArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList
    public CTFont insertNewFont(int i) {
        CTFont cTFont;
        synchronized (monitor()) {
            check_orphaned();
            cTFont = (CTFont) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTFont;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList
    public void removeFont(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList
    public void setFontArray(CTFont[] cTFontArr) {
        check_orphaned();
        arraySetterHelper(cTFontArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList
    public int sizeOfFontArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList
    public CTFont getFontArray(int i) {
        CTFont cTFont;
        synchronized (monitor()) {
            check_orphaned();
            cTFont = (CTFont) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTFont == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFont;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFontsList
    public void setFontArray(int i, CTFont cTFont) {
        generatedSetterHelperImpl(cTFont, PROPERTY_QNAME[0], i, (short) 2);
    }
}
