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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRange;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRanges;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTProtectedRangesImpl;

/* loaded from: classes15.dex */
public class CTProtectedRangesImpl extends XmlComplexContentImpl implements CTProtectedRanges {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "protectedRange")};
    private static final long serialVersionUID = 1;

    public CTProtectedRangesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRanges
    public CTProtectedRange addNewProtectedRange() {
        CTProtectedRange cTProtectedRange;
        synchronized (monitor()) {
            check_orphaned();
            cTProtectedRange = (CTProtectedRange) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTProtectedRange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRanges
    public CTProtectedRange[] getProtectedRangeArray() {
        return (CTProtectedRange[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTProtectedRange[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRanges
    public List<CTProtectedRange> getProtectedRangeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.po7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTProtectedRangesImpl.this.getProtectedRangeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qo7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTProtectedRangesImpl.this.setProtectedRangeArray(((Integer) obj).intValue(), (CTProtectedRange) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ro7
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTProtectedRangesImpl.this.insertNewProtectedRange(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.so7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTProtectedRangesImpl.this.removeProtectedRange(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.to7
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTProtectedRangesImpl.this.sizeOfProtectedRangeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRanges
    public CTProtectedRange insertNewProtectedRange(int i) {
        CTProtectedRange cTProtectedRange;
        synchronized (monitor()) {
            check_orphaned();
            cTProtectedRange = (CTProtectedRange) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTProtectedRange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRanges
    public void removeProtectedRange(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRanges
    public void setProtectedRangeArray(CTProtectedRange[] cTProtectedRangeArr) {
        check_orphaned();
        arraySetterHelper(cTProtectedRangeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRanges
    public int sizeOfProtectedRangeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRanges
    public CTProtectedRange getProtectedRangeArray(int i) {
        CTProtectedRange cTProtectedRange;
        synchronized (monitor()) {
            check_orphaned();
            cTProtectedRange = (CTProtectedRange) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTProtectedRange == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTProtectedRange;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTProtectedRanges
    public void setProtectedRangeArray(int i, CTProtectedRange cTProtectedRange) {
        generatedSetterHelperImpl(cTProtectedRange, PROPERTY_QNAME[0], i, (short) 2);
    }
}
