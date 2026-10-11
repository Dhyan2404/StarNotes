package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.CellDefType;
import com.microsoft.schemas.office.visio.x2012.main.ExtensionsType;
import com.microsoft.schemas.office.visio.x2012.main.FunctionDefType;
import com.microsoft.schemas.office.visio.x2012.main.SectionDefType;
import com.microsoft.schemas.office.visio.x2012.main.impl.ExtensionsTypeImpl;
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
public class ExtensionsTypeImpl extends XmlComplexContentImpl implements ExtensionsType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "CellDef"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "FunctionDef"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "SectionDef")};
    private static final long serialVersionUID = 1;

    public ExtensionsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public CellDefType addNewCellDef() {
        CellDefType cellDefType;
        synchronized (monitor()) {
            check_orphaned();
            cellDefType = (CellDefType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cellDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public FunctionDefType addNewFunctionDef() {
        FunctionDefType functionDefType;
        synchronized (monitor()) {
            check_orphaned();
            functionDefType = (FunctionDefType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return functionDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public SectionDefType addNewSectionDef() {
        SectionDefType sectionDefType;
        synchronized (monitor()) {
            check_orphaned();
            sectionDefType = (SectionDefType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return sectionDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public CellDefType[] getCellDefArray() {
        return (CellDefType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CellDefType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public List<CellDefType> getCellDefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.m6g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ExtensionsTypeImpl.this.getCellDefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n6g
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ExtensionsTypeImpl.this.setCellDefArray(((Integer) obj).intValue(), (CellDefType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o6g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ExtensionsTypeImpl.this.insertNewCellDef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.p6g
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ExtensionsTypeImpl.this.removeCellDef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q6g
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ExtensionsTypeImpl.this.sizeOfCellDefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public FunctionDefType[] getFunctionDefArray() {
        return (FunctionDefType[]) getXmlObjectArray(PROPERTY_QNAME[1], new FunctionDefType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public List<FunctionDefType> getFunctionDefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d6g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ExtensionsTypeImpl.this.getFunctionDefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e6g
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ExtensionsTypeImpl.this.setFunctionDefArray(((Integer) obj).intValue(), (FunctionDefType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.f6g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ExtensionsTypeImpl.this.insertNewFunctionDef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g6g
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ExtensionsTypeImpl.this.removeFunctionDef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.h6g
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ExtensionsTypeImpl.this.sizeOfFunctionDefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public SectionDefType[] getSectionDefArray() {
        return (SectionDefType[]) getXmlObjectArray(PROPERTY_QNAME[2], new SectionDefType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public List<SectionDefType> getSectionDefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c6g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ExtensionsTypeImpl.this.getSectionDefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i6g
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ExtensionsTypeImpl.this.setSectionDefArray(((Integer) obj).intValue(), (SectionDefType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j6g
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ExtensionsTypeImpl.this.insertNewSectionDef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k6g
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ExtensionsTypeImpl.this.removeSectionDef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l6g
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ExtensionsTypeImpl.this.sizeOfSectionDefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public CellDefType insertNewCellDef(int i) {
        CellDefType cellDefType;
        synchronized (monitor()) {
            check_orphaned();
            cellDefType = (CellDefType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cellDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public FunctionDefType insertNewFunctionDef(int i) {
        FunctionDefType functionDefType;
        synchronized (monitor()) {
            check_orphaned();
            functionDefType = (FunctionDefType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return functionDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public SectionDefType insertNewSectionDef(int i) {
        SectionDefType sectionDefType;
        synchronized (monitor()) {
            check_orphaned();
            sectionDefType = (SectionDefType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return sectionDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public void removeCellDef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public void removeFunctionDef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public void removeSectionDef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public void setCellDefArray(CellDefType[] cellDefTypeArr) {
        check_orphaned();
        arraySetterHelper(cellDefTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public void setFunctionDefArray(FunctionDefType[] functionDefTypeArr) {
        check_orphaned();
        arraySetterHelper(functionDefTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public void setSectionDefArray(SectionDefType[] sectionDefTypeArr) {
        check_orphaned();
        arraySetterHelper(sectionDefTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public int sizeOfCellDefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public int sizeOfFunctionDefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public int sizeOfSectionDefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
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

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public FunctionDefType getFunctionDefArray(int i) {
        FunctionDefType functionDefType;
        synchronized (monitor()) {
            check_orphaned();
            functionDefType = (FunctionDefType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (functionDefType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return functionDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public SectionDefType getSectionDefArray(int i) {
        SectionDefType sectionDefType;
        synchronized (monitor()) {
            check_orphaned();
            sectionDefType = (SectionDefType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (sectionDefType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sectionDefType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public void setCellDefArray(int i, CellDefType cellDefType) {
        generatedSetterHelperImpl(cellDefType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public void setFunctionDefArray(int i, FunctionDefType functionDefType) {
        generatedSetterHelperImpl(functionDefType, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsType
    public void setSectionDefArray(int i, SectionDefType sectionDefType) {
        generatedSetterHelperImpl(sectionDefType, PROPERTY_QNAME[2], i, (short) 2);
    }
}
