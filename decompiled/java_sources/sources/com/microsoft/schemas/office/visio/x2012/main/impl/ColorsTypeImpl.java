package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.ColorEntryType;
import com.microsoft.schemas.office.visio.x2012.main.ColorsType;
import com.microsoft.schemas.office.visio.x2012.main.impl.ColorsTypeImpl;
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
public class ColorsTypeImpl extends XmlComplexContentImpl implements ColorsType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "ColorEntry")};
    private static final long serialVersionUID = 1;

    public ColorsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ColorsType
    public ColorEntryType addNewColorEntry() {
        ColorEntryType colorEntryType;
        synchronized (monitor()) {
            check_orphaned();
            colorEntryType = (ColorEntryType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return colorEntryType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ColorsType
    public ColorEntryType[] getColorEntryArray() {
        return (ColorEntryType[]) getXmlObjectArray(PROPERTY_QNAME[0], new ColorEntryType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ColorsType
    public List<ColorEntryType> getColorEntryList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f3e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ColorsTypeImpl.this.getColorEntryArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g3e
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ColorsTypeImpl.this.setColorEntryArray(((Integer) obj).intValue(), (ColorEntryType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h3e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ColorsTypeImpl.this.insertNewColorEntry(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i3e
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ColorsTypeImpl.this.removeColorEntry(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j3e
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ColorsTypeImpl.this.sizeOfColorEntryArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ColorsType
    public ColorEntryType insertNewColorEntry(int i) {
        ColorEntryType colorEntryType;
        synchronized (monitor()) {
            check_orphaned();
            colorEntryType = (ColorEntryType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return colorEntryType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ColorsType
    public void removeColorEntry(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ColorsType
    public void setColorEntryArray(ColorEntryType[] colorEntryTypeArr) {
        check_orphaned();
        arraySetterHelper(colorEntryTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ColorsType
    public int sizeOfColorEntryArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ColorsType
    public ColorEntryType getColorEntryArray(int i) {
        ColorEntryType colorEntryType;
        synchronized (monitor()) {
            check_orphaned();
            colorEntryType = (ColorEntryType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (colorEntryType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return colorEntryType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ColorsType
    public void setColorEntryArray(int i, ColorEntryType colorEntryType) {
        generatedSetterHelperImpl(colorEntryType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
