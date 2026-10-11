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
import org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontListEntry;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTEmbeddedFontListImpl;

/* loaded from: classes14.dex */
public class CTEmbeddedFontListImpl extends XmlComplexContentImpl implements CTEmbeddedFontList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "embeddedFont")};
    private static final long serialVersionUID = 1;

    public CTEmbeddedFontListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList
    public CTEmbeddedFontListEntry addNewEmbeddedFont() {
        CTEmbeddedFontListEntry cTEmbeddedFontListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTEmbeddedFontListEntry = (CTEmbeddedFontListEntry) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEmbeddedFontListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList
    public CTEmbeddedFontListEntry[] getEmbeddedFontArray() {
        return (CTEmbeddedFontListEntry[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTEmbeddedFontListEntry[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList
    public List<CTEmbeddedFontListEntry> getEmbeddedFontList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.np3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEmbeddedFontListImpl.this.getEmbeddedFontArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.op3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEmbeddedFontListImpl.this.setEmbeddedFontArray(((Integer) obj).intValue(), (CTEmbeddedFontListEntry) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pp3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEmbeddedFontListImpl.this.insertNewEmbeddedFont(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qp3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEmbeddedFontListImpl.this.removeEmbeddedFont(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rp3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEmbeddedFontListImpl.this.sizeOfEmbeddedFontArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList
    public CTEmbeddedFontListEntry insertNewEmbeddedFont(int i) {
        CTEmbeddedFontListEntry cTEmbeddedFontListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTEmbeddedFontListEntry = (CTEmbeddedFontListEntry) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTEmbeddedFontListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList
    public void removeEmbeddedFont(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList
    public void setEmbeddedFontArray(CTEmbeddedFontListEntry[] cTEmbeddedFontListEntryArr) {
        check_orphaned();
        arraySetterHelper(cTEmbeddedFontListEntryArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList
    public int sizeOfEmbeddedFontArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList
    public CTEmbeddedFontListEntry getEmbeddedFontArray(int i) {
        CTEmbeddedFontListEntry cTEmbeddedFontListEntry;
        synchronized (monitor()) {
            check_orphaned();
            cTEmbeddedFontListEntry = (CTEmbeddedFontListEntry) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTEmbeddedFontListEntry == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEmbeddedFontListEntry;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList
    public void setEmbeddedFontArray(int i, CTEmbeddedFontListEntry cTEmbeddedFontListEntry) {
        generatedSetterHelperImpl(cTEmbeddedFontListEntry, PROPERTY_QNAME[0], i, (short) 2);
    }
}
