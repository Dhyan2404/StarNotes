package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.CellDefType;
import com.microsoft.schemas.office.visio.x2012.main.RowDefType;
import com.microsoft.schemas.office.visio.x2012.main.impl.RowDefTypeImpl;
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
public class RowDefTypeImpl extends XmlComplexContentImpl implements RowDefType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "CellDef")};
    private static final long serialVersionUID = 1;

    public RowDefTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowDefType
    public CellDefType addNewCellDef() {
        CellDefType cellDefType;
        synchronized (monitor()) {
            check_orphaned();
            cellDefType = (CellDefType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cellDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowDefType
    public CellDefType[] getCellDefArray() {
        return (CellDefType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CellDefType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowDefType
    public List<CellDefType> getCellDefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jsl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RowDefTypeImpl.this.getCellDefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ksl
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    RowDefTypeImpl.this.setCellDefArray(((Integer) obj).intValue(), (CellDefType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lsl
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return RowDefTypeImpl.this.insertNewCellDef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.msl
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    RowDefTypeImpl.this.removeCellDef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nsl
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(RowDefTypeImpl.this.sizeOfCellDefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowDefType
    public CellDefType insertNewCellDef(int i) {
        CellDefType cellDefType;
        synchronized (monitor()) {
            check_orphaned();
            cellDefType = (CellDefType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cellDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowDefType
    public void removeCellDef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowDefType
    public void setCellDefArray(CellDefType[] cellDefTypeArr) {
        check_orphaned();
        arraySetterHelper(cellDefTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowDefType
    public int sizeOfCellDefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowDefType
    public CellDefType getCellDefArray(int i) {
        CellDefType cellDefType;
        synchronized (monitor()) {
            check_orphaned();
            cellDefType = (CellDefType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cellDefType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cellDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.RowDefType
    public void setCellDefArray(int i, CellDefType cellDefType) {
        generatedSetterHelperImpl(cellDefType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
