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
import org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSupplementalFont;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextFont;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTFontCollectionImpl;

/* loaded from: classes14.dex */
public class CTFontCollectionImpl extends XmlComplexContentImpl implements CTFontCollection {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "latin"), new QName(XSSFRelation.NS_DRAWINGML, "ea"), new QName(XSSFRelation.NS_DRAWINGML, "cs"), new QName(XSSFRelation.NS_DRAWINGML, "font"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTFontCollectionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTTextFont addNewCs() {
        CTTextFont cTTextFont;
        synchronized (monitor()) {
            check_orphaned();
            cTTextFont = (CTTextFont) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTextFont;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTTextFont addNewEa() {
        CTTextFont cTTextFont;
        synchronized (monitor()) {
            check_orphaned();
            cTTextFont = (CTTextFont) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTextFont;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTSupplementalFont addNewFont() {
        CTSupplementalFont cTSupplementalFont;
        synchronized (monitor()) {
            check_orphaned();
            cTSupplementalFont = (CTSupplementalFont) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTSupplementalFont;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTTextFont addNewLatin() {
        CTTextFont cTTextFont;
        synchronized (monitor()) {
            check_orphaned();
            cTTextFont = (CTTextFont) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTextFont;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTTextFont getCs() {
        CTTextFont cTTextFont;
        synchronized (monitor()) {
            check_orphaned();
            cTTextFont = (CTTextFont) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTextFont == null) {
                cTTextFont = null;
            }
        }
        return cTTextFont;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTTextFont getEa() {
        CTTextFont cTTextFont;
        synchronized (monitor()) {
            check_orphaned();
            cTTextFont = (CTTextFont) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTextFont == null) {
                cTTextFont = null;
            }
        }
        return cTTextFont;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTSupplementalFont[] getFontArray() {
        return (CTSupplementalFont[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTSupplementalFont[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public List<CTSupplementalFont> getFontList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qw3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontCollectionImpl.this.getFontArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rw3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTFontCollectionImpl.this.setFontArray(((Integer) obj).intValue(), (CTSupplementalFont) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sw3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTFontCollectionImpl.this.insertNewFont(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tw3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTFontCollectionImpl.this.removeFont(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uw3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTFontCollectionImpl.this.sizeOfFontArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTTextFont getLatin() {
        CTTextFont cTTextFont;
        synchronized (monitor()) {
            check_orphaned();
            cTTextFont = (CTTextFont) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTextFont == null) {
                cTTextFont = null;
            }
        }
        return cTTextFont;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTSupplementalFont insertNewFont(int i) {
        CTSupplementalFont cTSupplementalFont;
        synchronized (monitor()) {
            check_orphaned();
            cTSupplementalFont = (CTSupplementalFont) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTSupplementalFont;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public void removeFont(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public void setCs(CTTextFont cTTextFont) {
        generatedSetterHelperImpl(cTTextFont, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public void setEa(CTTextFont cTTextFont) {
        generatedSetterHelperImpl(cTTextFont, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public void setFontArray(CTSupplementalFont[] cTSupplementalFontArr) {
        check_orphaned();
        arraySetterHelper(cTSupplementalFontArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public void setLatin(CTTextFont cTTextFont) {
        generatedSetterHelperImpl(cTTextFont, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public int sizeOfFontArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public CTSupplementalFont getFontArray(int i) {
        CTSupplementalFont cTSupplementalFont;
        synchronized (monitor()) {
            check_orphaned();
            cTSupplementalFont = (CTSupplementalFont) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTSupplementalFont == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSupplementalFont;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTFontCollection
    public void setFontArray(int i, CTSupplementalFont cTSupplementalFont) {
        generatedSetterHelperImpl(cTSupplementalFont, PROPERTY_QNAME[3], i, (short) 2);
    }
}
