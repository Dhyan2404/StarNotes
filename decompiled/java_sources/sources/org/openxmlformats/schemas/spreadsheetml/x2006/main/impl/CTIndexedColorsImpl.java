package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndexedColors;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRgbColor;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTIndexedColorsImpl;

/* loaded from: classes15.dex */
public class CTIndexedColorsImpl extends XmlComplexContentImpl implements CTIndexedColors {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "rgbColor")};
    private static final long serialVersionUID = 1;

    public CTIndexedColorsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndexedColors
    public CTRgbColor addNewRgbColor() {
        CTRgbColor cTRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTRgbColor = (CTRgbColor) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRgbColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndexedColors
    public CTRgbColor[] getRgbColorArray() {
        return (CTRgbColor[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTRgbColor[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndexedColors
    public List<CTRgbColor> getRgbColorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qa5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTIndexedColorsImpl.this.getRgbColorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ra5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTIndexedColorsImpl.this.setRgbColorArray(((Integer) obj).intValue(), (CTRgbColor) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sa5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTIndexedColorsImpl.this.insertNewRgbColor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ta5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTIndexedColorsImpl.this.removeRgbColor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ua5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTIndexedColorsImpl.this.sizeOfRgbColorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndexedColors
    public CTRgbColor insertNewRgbColor(int i) {
        CTRgbColor cTRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTRgbColor = (CTRgbColor) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTRgbColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndexedColors
    public void removeRgbColor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndexedColors
    public void setRgbColorArray(CTRgbColor[] cTRgbColorArr) {
        check_orphaned();
        arraySetterHelper(cTRgbColorArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndexedColors
    public int sizeOfRgbColorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndexedColors
    public CTRgbColor getRgbColorArray(int i) {
        CTRgbColor cTRgbColor;
        synchronized (monitor()) {
            check_orphaned();
            cTRgbColor = (CTRgbColor) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTRgbColor == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRgbColor;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTIndexedColors
    public void setRgbColorArray(int i, CTRgbColor cTRgbColor) {
        generatedSetterHelperImpl(cTRgbColor, PROPERTY_QNAME[0], i, (short) 2);
    }
}
