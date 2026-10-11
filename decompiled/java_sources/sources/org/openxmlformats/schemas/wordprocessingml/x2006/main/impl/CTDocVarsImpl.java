package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

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
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVars;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.impl.CTDocVarsImpl;

/* loaded from: classes16.dex */
public class CTDocVarsImpl extends XmlComplexContentImpl implements CTDocVars {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "docVar")};
    private static final long serialVersionUID = 1;

    public CTDocVarsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVars
    public CTDocVar addNewDocVar() {
        CTDocVar cTDocVar;
        synchronized (monitor()) {
            check_orphaned();
            cTDocVar = (CTDocVar) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDocVar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVars
    public CTDocVar[] getDocVarArray() {
        return (CTDocVar[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTDocVar[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVars
    public List<CTDocVar> getDocVarList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hg3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDocVarsImpl.this.getDocVarArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ig3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTDocVarsImpl.this.setDocVarArray(((Integer) obj).intValue(), (CTDocVar) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jg3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTDocVarsImpl.this.insertNewDocVar(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kg3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTDocVarsImpl.this.removeDocVar(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lg3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTDocVarsImpl.this.sizeOfDocVarArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVars
    public CTDocVar insertNewDocVar(int i) {
        CTDocVar cTDocVar;
        synchronized (monitor()) {
            check_orphaned();
            cTDocVar = (CTDocVar) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTDocVar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVars
    public void removeDocVar(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVars
    public void setDocVarArray(CTDocVar[] cTDocVarArr) {
        check_orphaned();
        arraySetterHelper(cTDocVarArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVars
    public int sizeOfDocVarArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVars
    public CTDocVar getDocVarArray(int i) {
        CTDocVar cTDocVar;
        synchronized (monitor()) {
            check_orphaned();
            cTDocVar = (CTDocVar) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTDocVar == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDocVar;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocVars
    public void setDocVarArray(int i, CTDocVar cTDocVar) {
        generatedSetterHelperImpl(cTDocVar, PROPERTY_QNAME[0], i, (short) 2);
    }
}
