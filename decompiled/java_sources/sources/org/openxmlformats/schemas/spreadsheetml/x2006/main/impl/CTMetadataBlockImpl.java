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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataRecord;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMetadataBlockImpl;

/* loaded from: classes15.dex */
public class CTMetadataBlockImpl extends XmlComplexContentImpl implements CTMetadataBlock {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "rc")};
    private static final long serialVersionUID = 1;

    public CTMetadataBlockImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock
    public CTMetadataRecord addNewRc() {
        CTMetadataRecord cTMetadataRecord;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataRecord = (CTMetadataRecord) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMetadataRecord;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock
    public CTMetadataRecord[] getRcArray() {
        return (CTMetadataRecord[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTMetadataRecord[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock
    public List<CTMetadataRecord> getRcList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jm5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMetadataBlockImpl.this.getRcArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.km5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMetadataBlockImpl.this.setRcArray(((Integer) obj).intValue(), (CTMetadataRecord) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lm5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMetadataBlockImpl.this.insertNewRc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mm5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMetadataBlockImpl.this.removeRc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nm5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMetadataBlockImpl.this.sizeOfRcArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock
    public CTMetadataRecord insertNewRc(int i) {
        CTMetadataRecord cTMetadataRecord;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataRecord = (CTMetadataRecord) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTMetadataRecord;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock
    public void removeRc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock
    public void setRcArray(CTMetadataRecord[] cTMetadataRecordArr) {
        check_orphaned();
        arraySetterHelper(cTMetadataRecordArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock
    public int sizeOfRcArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock
    public CTMetadataRecord getRcArray(int i) {
        CTMetadataRecord cTMetadataRecord;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataRecord = (CTMetadataRecord) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTMetadataRecord == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTMetadataRecord;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlock
    public void setRcArray(int i, CTMetadataRecord cTMetadataRecord) {
        generatedSetterHelperImpl(cTMetadataRecord, PROPERTY_QNAME[0], i, (short) 2);
    }
}
