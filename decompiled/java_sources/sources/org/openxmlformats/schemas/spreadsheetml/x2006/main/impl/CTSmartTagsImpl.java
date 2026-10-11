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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellSmartTags;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTags;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTSmartTagsImpl;

/* loaded from: classes15.dex */
public class CTSmartTagsImpl extends XmlComplexContentImpl implements CTSmartTags {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "cellSmartTags")};
    private static final long serialVersionUID = 1;

    public CTSmartTagsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTags
    public CTCellSmartTags addNewCellSmartTags() {
        CTCellSmartTags cTCellSmartTags;
        synchronized (monitor()) {
            check_orphaned();
            cTCellSmartTags = (CTCellSmartTags) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCellSmartTags;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTags
    public CTCellSmartTags[] getCellSmartTagsArray() {
        return (CTCellSmartTags[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCellSmartTags[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTags
    public List<CTCellSmartTags> getCellSmartTagsList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wib
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSmartTagsImpl.this.getCellSmartTagsArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xib
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSmartTagsImpl.this.setCellSmartTagsArray(((Integer) obj).intValue(), (CTCellSmartTags) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yib
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSmartTagsImpl.this.insertNewCellSmartTags(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zib
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSmartTagsImpl.this.removeCellSmartTags(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ajb
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSmartTagsImpl.this.sizeOfCellSmartTagsArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTags
    public CTCellSmartTags insertNewCellSmartTags(int i) {
        CTCellSmartTags cTCellSmartTags;
        synchronized (monitor()) {
            check_orphaned();
            cTCellSmartTags = (CTCellSmartTags) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCellSmartTags;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTags
    public void removeCellSmartTags(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTags
    public void setCellSmartTagsArray(CTCellSmartTags[] cTCellSmartTagsArr) {
        check_orphaned();
        arraySetterHelper(cTCellSmartTagsArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTags
    public int sizeOfCellSmartTagsArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTags
    public CTCellSmartTags getCellSmartTagsArray(int i) {
        CTCellSmartTags cTCellSmartTags;
        synchronized (monitor()) {
            check_orphaned();
            cTCellSmartTags = (CTCellSmartTags) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCellSmartTags == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCellSmartTags;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSmartTags
    public void setCellSmartTagsArray(int i, CTCellSmartTags cTCellSmartTags) {
        generatedSetterHelperImpl(cTCellSmartTags, PROPERTY_QNAME[0], i, (short) 2);
    }
}
