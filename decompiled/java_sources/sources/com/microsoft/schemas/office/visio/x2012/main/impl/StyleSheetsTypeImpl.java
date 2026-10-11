package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.StyleSheetType;
import com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType;
import com.microsoft.schemas.office.visio.x2012.main.impl.StyleSheetsTypeImpl;
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
public class StyleSheetsTypeImpl extends XmlComplexContentImpl implements StyleSheetsType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "StyleSheet")};
    private static final long serialVersionUID = 1;

    public StyleSheetsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType
    public StyleSheetType addNewStyleSheet() {
        StyleSheetType styleSheetType;
        synchronized (monitor()) {
            check_orphaned();
            styleSheetType = (StyleSheetType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return styleSheetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType
    public StyleSheetType[] getStyleSheetArray() {
        return (StyleSheetType[]) getXmlObjectArray(PROPERTY_QNAME[0], new StyleSheetType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType
    public List<StyleSheetType> getStyleSheetList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d3n
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return StyleSheetsTypeImpl.this.getStyleSheetArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e3n
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    StyleSheetsTypeImpl.this.setStyleSheetArray(((Integer) obj).intValue(), (StyleSheetType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.f3n
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return StyleSheetsTypeImpl.this.insertNewStyleSheet(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g3n
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    StyleSheetsTypeImpl.this.removeStyleSheet(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.h3n
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(StyleSheetsTypeImpl.this.sizeOfStyleSheetArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType
    public StyleSheetType insertNewStyleSheet(int i) {
        StyleSheetType styleSheetType;
        synchronized (monitor()) {
            check_orphaned();
            styleSheetType = (StyleSheetType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return styleSheetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType
    public void removeStyleSheet(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType
    public void setStyleSheetArray(StyleSheetType[] styleSheetTypeArr) {
        check_orphaned();
        arraySetterHelper(styleSheetTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType
    public int sizeOfStyleSheetArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType
    public StyleSheetType getStyleSheetArray(int i) {
        StyleSheetType styleSheetType;
        synchronized (monitor()) {
            check_orphaned();
            styleSheetType = (StyleSheetType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (styleSheetType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return styleSheetType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.StyleSheetsType
    public void setStyleSheetArray(int i, StyleSheetType styleSheetType) {
        generatedSetterHelperImpl(styleSheetType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
