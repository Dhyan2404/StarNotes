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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFutureMetadata;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMetadata;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataBlocks;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataStrings;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadataTypes;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTMetadataImpl;

/* loaded from: classes15.dex */
public class CTMetadataImpl extends XmlComplexContentImpl implements CTMetadata {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "metadataTypes"), new QName(XSSFRelation.NS_SPREADSHEETML, "metadataStrings"), new QName(XSSFRelation.NS_SPREADSHEETML, "mdxMetadata"), new QName(XSSFRelation.NS_SPREADSHEETML, "futureMetadata"), new QName(XSSFRelation.NS_SPREADSHEETML, "cellMetadata"), new QName(XSSFRelation.NS_SPREADSHEETML, "valueMetadata"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTMetadataImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTMetadataBlocks addNewCellMetadata() {
        CTMetadataBlocks cTMetadataBlocks;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataBlocks = (CTMetadataBlocks) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTMetadataBlocks;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTFutureMetadata addNewFutureMetadata() {
        CTFutureMetadata cTFutureMetadata;
        synchronized (monitor()) {
            check_orphaned();
            cTFutureMetadata = (CTFutureMetadata) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTFutureMetadata;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTMdxMetadata addNewMdxMetadata() {
        CTMdxMetadata cTMdxMetadata;
        synchronized (monitor()) {
            check_orphaned();
            cTMdxMetadata = (CTMdxMetadata) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTMdxMetadata;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTMetadataStrings addNewMetadataStrings() {
        CTMetadataStrings cTMetadataStrings;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataStrings = (CTMetadataStrings) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTMetadataStrings;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTMetadataTypes addNewMetadataTypes() {
        CTMetadataTypes cTMetadataTypes;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataTypes = (CTMetadataTypes) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMetadataTypes;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTMetadataBlocks addNewValueMetadata() {
        CTMetadataBlocks cTMetadataBlocks;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataBlocks = (CTMetadataBlocks) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTMetadataBlocks;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTMetadataBlocks getCellMetadata() {
        CTMetadataBlocks cTMetadataBlocks;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataBlocks = (CTMetadataBlocks) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTMetadataBlocks == null) {
                cTMetadataBlocks = null;
            }
        }
        return cTMetadataBlocks;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTFutureMetadata[] getFutureMetadataArray() {
        return (CTFutureMetadata[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTFutureMetadata[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public List<CTFutureMetadata> getFutureMetadataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tm5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMetadataImpl.this.getFutureMetadataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.um5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTMetadataImpl.this.setFutureMetadataArray(((Integer) obj).intValue(), (CTFutureMetadata) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vm5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTMetadataImpl.this.insertNewFutureMetadata(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wm5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTMetadataImpl.this.removeFutureMetadata(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xm5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTMetadataImpl.this.sizeOfFutureMetadataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTMdxMetadata getMdxMetadata() {
        CTMdxMetadata cTMdxMetadata;
        synchronized (monitor()) {
            check_orphaned();
            cTMdxMetadata = (CTMdxMetadata) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTMdxMetadata == null) {
                cTMdxMetadata = null;
            }
        }
        return cTMdxMetadata;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTMetadataStrings getMetadataStrings() {
        CTMetadataStrings cTMetadataStrings;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataStrings = (CTMetadataStrings) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTMetadataStrings == null) {
                cTMetadataStrings = null;
            }
        }
        return cTMetadataStrings;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTMetadataTypes getMetadataTypes() {
        CTMetadataTypes cTMetadataTypes;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataTypes = (CTMetadataTypes) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTMetadataTypes == null) {
                cTMetadataTypes = null;
            }
        }
        return cTMetadataTypes;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTMetadataBlocks getValueMetadata() {
        CTMetadataBlocks cTMetadataBlocks;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadataBlocks = (CTMetadataBlocks) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTMetadataBlocks == null) {
                cTMetadataBlocks = null;
            }
        }
        return cTMetadataBlocks;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTFutureMetadata insertNewFutureMetadata(int i) {
        CTFutureMetadata cTFutureMetadata;
        synchronized (monitor()) {
            check_orphaned();
            cTFutureMetadata = (CTFutureMetadata) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTFutureMetadata;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public boolean isSetCellMetadata() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public boolean isSetMdxMetadata() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public boolean isSetMetadataStrings() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public boolean isSetMetadataTypes() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public boolean isSetValueMetadata() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void removeFutureMetadata(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void setCellMetadata(CTMetadataBlocks cTMetadataBlocks) {
        generatedSetterHelperImpl(cTMetadataBlocks, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void setFutureMetadataArray(CTFutureMetadata[] cTFutureMetadataArr) {
        check_orphaned();
        arraySetterHelper(cTFutureMetadataArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void setMdxMetadata(CTMdxMetadata cTMdxMetadata) {
        generatedSetterHelperImpl(cTMdxMetadata, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void setMetadataStrings(CTMetadataStrings cTMetadataStrings) {
        generatedSetterHelperImpl(cTMetadataStrings, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void setMetadataTypes(CTMetadataTypes cTMetadataTypes) {
        generatedSetterHelperImpl(cTMetadataTypes, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void setValueMetadata(CTMetadataBlocks cTMetadataBlocks) {
        generatedSetterHelperImpl(cTMetadataBlocks, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public int sizeOfFutureMetadataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void unsetCellMetadata() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void unsetMdxMetadata() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void unsetMetadataStrings() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void unsetMetadataTypes() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void unsetValueMetadata() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public CTFutureMetadata getFutureMetadataArray(int i) {
        CTFutureMetadata cTFutureMetadata;
        synchronized (monitor()) {
            check_orphaned();
            cTFutureMetadata = (CTFutureMetadata) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTFutureMetadata == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFutureMetadata;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata
    public void setFutureMetadataArray(int i, CTFutureMetadata cTFutureMetadata) {
        generatedSetterHelperImpl(cTFutureMetadata, PROPERTY_QNAME[3], i, (short) 2);
    }
}
