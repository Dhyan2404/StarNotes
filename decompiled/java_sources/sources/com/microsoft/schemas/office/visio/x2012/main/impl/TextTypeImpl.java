package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.CpType;
import com.microsoft.schemas.office.visio.x2012.main.FldType;
import com.microsoft.schemas.office.visio.x2012.main.PpType;
import com.microsoft.schemas.office.visio.x2012.main.TextType;
import com.microsoft.schemas.office.visio.x2012.main.TpType;
import com.microsoft.schemas.office.visio.x2012.main.impl.TextTypeImpl;
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
public class TextTypeImpl extends XmlComplexContentImpl implements TextType {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "cp"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "pp"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "tp"), new QName("http://schemas.microsoft.com/office/visio/2012/main", "fld")};
    private static final long serialVersionUID = 1;

    public TextTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public CpType addNewCp() {
        CpType cpType;
        synchronized (monitor()) {
            check_orphaned();
            cpType = (CpType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cpType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public FldType addNewFld() {
        FldType fldType;
        synchronized (monitor()) {
            check_orphaned();
            fldType = (FldType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return fldType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public PpType addNewPp() {
        PpType ppType;
        synchronized (monitor()) {
            check_orphaned();
            ppType = (PpType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return ppType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public TpType addNewTp() {
        TpType tpType;
        synchronized (monitor()) {
            check_orphaned();
            tpType = (TpType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return tpType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public CpType[] getCpArray() {
        return (CpType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CpType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public List<CpType> getCpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wfn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TextTypeImpl.this.getCpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xfn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    TextTypeImpl.this.setCpArray(((Integer) obj).intValue(), (CpType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yfn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TextTypeImpl.this.insertNewCp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zfn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TextTypeImpl.this.removeCp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.agn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(TextTypeImpl.this.sizeOfCpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public FldType[] getFldArray() {
        return (FldType[]) getXmlObjectArray(PROPERTY_QNAME[3], new FldType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public List<FldType> getFldList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qfn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TextTypeImpl.this.getFldArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bgn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    TextTypeImpl.this.setFldArray(((Integer) obj).intValue(), (FldType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cgn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TextTypeImpl.this.insertNewFld(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dgn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TextTypeImpl.this.removeFld(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.egn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(TextTypeImpl.this.sizeOfFldArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public PpType[] getPpArray() {
        return (PpType[]) getXmlObjectArray(PROPERTY_QNAME[1], new PpType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public List<PpType> getPpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rfn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TextTypeImpl.this.getPpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sfn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    TextTypeImpl.this.setPpArray(((Integer) obj).intValue(), (PpType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tfn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TextTypeImpl.this.insertNewPp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ufn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TextTypeImpl.this.removePp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vfn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(TextTypeImpl.this.sizeOfPpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public TpType[] getTpArray() {
        return (TpType[]) getXmlObjectArray(PROPERTY_QNAME[2], new TpType[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public List<TpType> getTpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fgn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TextTypeImpl.this.getTpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ggn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    TextTypeImpl.this.setTpArray(((Integer) obj).intValue(), (TpType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hgn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TextTypeImpl.this.insertNewTp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ign
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TextTypeImpl.this.removeTp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jgn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(TextTypeImpl.this.sizeOfTpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public CpType insertNewCp(int i) {
        CpType cpType;
        synchronized (monitor()) {
            check_orphaned();
            cpType = (CpType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cpType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public FldType insertNewFld(int i) {
        FldType fldType;
        synchronized (monitor()) {
            check_orphaned();
            fldType = (FldType) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return fldType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public PpType insertNewPp(int i) {
        PpType ppType;
        synchronized (monitor()) {
            check_orphaned();
            ppType = (PpType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return ppType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public TpType insertNewTp(int i) {
        TpType tpType;
        synchronized (monitor()) {
            check_orphaned();
            tpType = (TpType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return tpType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void removeCp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void removeFld(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void removePp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void removeTp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void setCpArray(CpType[] cpTypeArr) {
        check_orphaned();
        arraySetterHelper(cpTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void setFldArray(FldType[] fldTypeArr) {
        check_orphaned();
        arraySetterHelper(fldTypeArr, PROPERTY_QNAME[3]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void setPpArray(PpType[] ppTypeArr) {
        check_orphaned();
        arraySetterHelper(ppTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void setTpArray(TpType[] tpTypeArr) {
        check_orphaned();
        arraySetterHelper(tpTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public int sizeOfCpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public int sizeOfFldArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public int sizeOfPpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public int sizeOfTpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public CpType getCpArray(int i) {
        CpType cpType;
        synchronized (monitor()) {
            check_orphaned();
            cpType = (CpType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cpType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cpType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public FldType getFldArray(int i) {
        FldType fldType;
        synchronized (monitor()) {
            check_orphaned();
            fldType = (FldType) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (fldType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return fldType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public PpType getPpArray(int i) {
        PpType ppType;
        synchronized (monitor()) {
            check_orphaned();
            ppType = (PpType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (ppType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return ppType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public TpType getTpArray(int i) {
        TpType tpType;
        synchronized (monitor()) {
            check_orphaned();
            tpType = (TpType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (tpType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return tpType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void setCpArray(int i, CpType cpType) {
        generatedSetterHelperImpl(cpType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void setFldArray(int i, FldType fldType) {
        generatedSetterHelperImpl(fldType, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void setPpArray(int i, PpType ppType) {
        generatedSetterHelperImpl(ppType, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.TextType
    public void setTpArray(int i, TpType tpType) {
        generatedSetterHelperImpl(tpType, PROPERTY_QNAME[2], i, (short) 2);
    }
}
