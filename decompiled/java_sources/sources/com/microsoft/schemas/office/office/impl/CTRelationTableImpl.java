package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTRelation;
import com.microsoft.schemas.office.office.CTRelationTable;
import com.microsoft.schemas.office.office.impl.CTRelationTableImpl;
import com.microsoft.schemas.vml.STExt;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CTRelationTableImpl extends XmlComplexContentImpl implements CTRelationTable {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "rel"), new QName("urn:schemas-microsoft-com:vml", "ext")};
    private static final long serialVersionUID = 1;

    public CTRelationTableImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public CTRelation addNewRel() {
        CTRelation cTRelation;
        synchronized (monitor()) {
            check_orphaned();
            cTRelation = (CTRelation) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelation;
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public STExt.Enum getExt() {
        STExt.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STExt.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public CTRelation[] getRelArray() {
        return (CTRelation[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTRelation[0]);
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public List<CTRelation> getRelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lr8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRelationTableImpl.this.getRelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mr8
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRelationTableImpl.this.setRelArray(((Integer) obj).intValue(), (CTRelation) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nr8
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRelationTableImpl.this.insertNewRel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.or8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRelationTableImpl.this.removeRel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pr8
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRelationTableImpl.this.sizeOfRelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public CTRelation insertNewRel(int i) {
        CTRelation cTRelation;
        synchronized (monitor()) {
            check_orphaned();
            cTRelation = (CTRelation) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTRelation;
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public boolean isSetExt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public void removeRel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public void setExt(STExt.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public void setRelArray(CTRelation[] cTRelationArr) {
        check_orphaned();
        arraySetterHelper(cTRelationArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public int sizeOfRelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public void unsetExt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public STExt xgetExt() {
        STExt sTExt;
        synchronized (monitor()) {
            check_orphaned();
            sTExt = (STExt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTExt;
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public void xsetExt(STExt sTExt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STExt sTExt2 = (STExt) typeStore.find_attribute_user(qNameArr[1]);
            if (sTExt2 == null) {
                sTExt2 = (STExt) get_store().add_attribute_user(qNameArr[1]);
            }
            sTExt2.set(sTExt);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public CTRelation getRelArray(int i) {
        CTRelation cTRelation;
        synchronized (monitor()) {
            check_orphaned();
            cTRelation = (CTRelation) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTRelation == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRelation;
    }

    @Override // com.microsoft.schemas.office.office.CTRelationTable
    public void setRelArray(int i, CTRelation cTRelation) {
        generatedSetterHelperImpl(cTRelation, PROPERTY_QNAME[0], i, (short) 2);
    }
}
