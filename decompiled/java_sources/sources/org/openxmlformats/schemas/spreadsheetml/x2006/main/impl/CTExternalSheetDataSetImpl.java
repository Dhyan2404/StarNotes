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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetData;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTExternalSheetDataSetImpl;

/* loaded from: classes15.dex */
public class CTExternalSheetDataSetImpl extends XmlComplexContentImpl implements CTExternalSheetDataSet {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "sheetData")};
    private static final long serialVersionUID = 1;

    public CTExternalSheetDataSetImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet
    public CTExternalSheetData addNewSheetData() {
        CTExternalSheetData cTExternalSheetData;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalSheetData = (CTExternalSheetData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTExternalSheetData;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet
    public CTExternalSheetData[] getSheetDataArray() {
        return (CTExternalSheetData[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTExternalSheetData[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet
    public List<CTExternalSheetData> getSheetDataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vr3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTExternalSheetDataSetImpl.this.getSheetDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wr3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTExternalSheetDataSetImpl.this.setSheetDataArray(((Integer) obj).intValue(), (CTExternalSheetData) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xr3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTExternalSheetDataSetImpl.this.insertNewSheetData(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yr3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTExternalSheetDataSetImpl.this.removeSheetData(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zr3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTExternalSheetDataSetImpl.this.sizeOfSheetDataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet
    public CTExternalSheetData insertNewSheetData(int i) {
        CTExternalSheetData cTExternalSheetData;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalSheetData = (CTExternalSheetData) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTExternalSheetData;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet
    public void removeSheetData(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet
    public void setSheetDataArray(CTExternalSheetData[] cTExternalSheetDataArr) {
        check_orphaned();
        arraySetterHelper(cTExternalSheetDataArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet
    public int sizeOfSheetDataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet
    public CTExternalSheetData getSheetDataArray(int i) {
        CTExternalSheetData cTExternalSheetData;
        synchronized (monitor()) {
            check_orphaned();
            cTExternalSheetData = (CTExternalSheetData) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTExternalSheetData == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTExternalSheetData;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet
    public void setSheetDataArray(int i, CTExternalSheetData cTExternalSheetData) {
        generatedSetterHelperImpl(cTExternalSheetData, PROPERTY_QNAME[0], i, (short) 2);
    }
}
