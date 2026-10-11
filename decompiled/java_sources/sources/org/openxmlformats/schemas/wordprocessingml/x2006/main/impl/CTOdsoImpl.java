package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.onyx.android.sdk.data.common.cloud.Constant;
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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMailMergeSourceType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdsoFieldMapData;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRel;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTOdsoImpl;

/* loaded from: classes16.dex */
public class CTOdsoImpl extends XmlComplexContentImpl implements CTOdso {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "udl"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "table"), new QName(XSSFRelation.NS_WORDPROCESSINGML, Constant.SRC_TAG), new QName(XSSFRelation.NS_WORDPROCESSINGML, "colDelim"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "type"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "fHdr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "fieldMapData"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "recipientData")};
    private static final long serialVersionUID = 1;

    public CTOdsoImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTDecimalNumber addNewColDelim() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTOnOff addNewFHdr() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTOdsoFieldMapData addNewFieldMapData() {
        CTOdsoFieldMapData cTOdsoFieldMapData;
        synchronized (monitor()) {
            check_orphaned();
            cTOdsoFieldMapData = (CTOdsoFieldMapData) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTOdsoFieldMapData;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTRel addNewRecipientData() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTRel addNewSrc() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTString addNewTable() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTMailMergeSourceType addNewType() {
        CTMailMergeSourceType cTMailMergeSourceType;
        synchronized (monitor()) {
            check_orphaned();
            cTMailMergeSourceType = (CTMailMergeSourceType) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTMailMergeSourceType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTString addNewUdl() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTDecimalNumber getColDelim() {
        CTDecimalNumber cTDecimalNumber;
        synchronized (monitor()) {
            check_orphaned();
            cTDecimalNumber = (CTDecimalNumber) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTDecimalNumber == null) {
                cTDecimalNumber = null;
            }
        }
        return cTDecimalNumber;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTOnOff getFHdr() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTOdsoFieldMapData[] getFieldMapDataArray() {
        return (CTOdsoFieldMapData[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTOdsoFieldMapData[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public List<CTOdsoFieldMapData> getFieldMapDataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b96
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOdsoImpl.this.getFieldMapDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c96
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOdsoImpl.this.setFieldMapDataArray(((Integer) obj).intValue(), (CTOdsoFieldMapData) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d96
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOdsoImpl.this.insertNewFieldMapData(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e96
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOdsoImpl.this.removeFieldMapData(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.f96
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOdsoImpl.this.sizeOfFieldMapDataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTRel[] getRecipientDataArray() {
        return (CTRel[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTRel[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public List<CTRel> getRecipientDataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.g96
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOdsoImpl.this.getRecipientDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h96
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOdsoImpl.this.setRecipientDataArray(((Integer) obj).intValue(), (CTRel) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.i96
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOdsoImpl.this.insertNewRecipientData(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.j96
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOdsoImpl.this.removeRecipientData(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.k96
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOdsoImpl.this.sizeOfRecipientDataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTRel getSrc() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTRel == null) {
                cTRel = null;
            }
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTString getTable() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTMailMergeSourceType getType() {
        CTMailMergeSourceType cTMailMergeSourceType;
        synchronized (monitor()) {
            check_orphaned();
            cTMailMergeSourceType = (CTMailMergeSourceType) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTMailMergeSourceType == null) {
                cTMailMergeSourceType = null;
            }
        }
        return cTMailMergeSourceType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTString getUdl() {
        CTString cTString;
        synchronized (monitor()) {
            check_orphaned();
            cTString = (CTString) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTString == null) {
                cTString = null;
            }
        }
        return cTString;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTOdsoFieldMapData insertNewFieldMapData(int i) {
        CTOdsoFieldMapData cTOdsoFieldMapData;
        synchronized (monitor()) {
            check_orphaned();
            cTOdsoFieldMapData = (CTOdsoFieldMapData) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTOdsoFieldMapData;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTRel insertNewRecipientData(int i) {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public boolean isSetColDelim() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public boolean isSetFHdr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public boolean isSetSrc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public boolean isSetTable() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public boolean isSetUdl() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void removeFieldMapData(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void removeRecipientData(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void setColDelim(CTDecimalNumber cTDecimalNumber) {
        generatedSetterHelperImpl(cTDecimalNumber, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void setFHdr(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void setFieldMapDataArray(CTOdsoFieldMapData[] cTOdsoFieldMapDataArr) {
        check_orphaned();
        arraySetterHelper(cTOdsoFieldMapDataArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void setRecipientDataArray(CTRel[] cTRelArr) {
        check_orphaned();
        arraySetterHelper(cTRelArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void setSrc(CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void setTable(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void setType(CTMailMergeSourceType cTMailMergeSourceType) {
        generatedSetterHelperImpl(cTMailMergeSourceType, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void setUdl(CTString cTString) {
        generatedSetterHelperImpl(cTString, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public int sizeOfFieldMapDataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public int sizeOfRecipientDataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void unsetColDelim() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void unsetFHdr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void unsetSrc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void unsetTable() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void unsetUdl() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTOdsoFieldMapData getFieldMapDataArray(int i) {
        CTOdsoFieldMapData cTOdsoFieldMapData;
        synchronized (monitor()) {
            check_orphaned();
            cTOdsoFieldMapData = (CTOdsoFieldMapData) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTOdsoFieldMapData == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOdsoFieldMapData;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public CTRel getRecipientDataArray(int i) {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTRel == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void setFieldMapDataArray(int i, CTOdsoFieldMapData cTOdsoFieldMapData) {
        generatedSetterHelperImpl(cTOdsoFieldMapData, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOdso
    public void setRecipientDataArray(int i, CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[7], i, (short) 2);
    }
}
