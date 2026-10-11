package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraint;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTConstraintsImpl;

/* loaded from: classes14.dex */
public class CTConstraintsImpl extends XmlComplexContentImpl implements CTConstraints {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "constr")};
    private static final long serialVersionUID = 1;

    public CTConstraintsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints
    public CTConstraint addNewConstr() {
        CTConstraint cTConstraint;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraint = (CTConstraint) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTConstraint;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints
    public CTConstraint[] getConstrArray() {
        return (CTConstraint[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTConstraint[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints
    public List<CTConstraint> getConstrList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ya2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTConstraintsImpl.this.getConstrArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.za2
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTConstraintsImpl.this.setConstrArray(((Integer) obj).intValue(), (CTConstraint) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ab2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTConstraintsImpl.this.insertNewConstr(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bb2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTConstraintsImpl.this.removeConstr(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cb2
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTConstraintsImpl.this.sizeOfConstrArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints
    public CTConstraint insertNewConstr(int i) {
        CTConstraint cTConstraint;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraint = (CTConstraint) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTConstraint;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints
    public void removeConstr(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints
    public void setConstrArray(CTConstraint[] cTConstraintArr) {
        check_orphaned();
        arraySetterHelper(cTConstraintArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints
    public int sizeOfConstrArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints
    public CTConstraint getConstrArray(int i) {
        CTConstraint cTConstraint;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraint = (CTConstraint) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTConstraint == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTConstraint;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints
    public void setConstrArray(int i, CTConstraint cTConstraint) {
        generatedSetterHelperImpl(cTConstraint, PROPERTY_QNAME[0], i, (short) 2);
    }
}
