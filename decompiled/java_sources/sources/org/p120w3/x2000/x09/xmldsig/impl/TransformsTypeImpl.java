package org.p120w3.x2000.x09.xmldsig.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.TransformType;
import org.p120w3.x2000.x09.xmldsig.TransformsType;
import org.p120w3.x2000.x09.xmldsig.impl.TransformsTypeImpl;

/* loaded from: classes16.dex */
public class TransformsTypeImpl extends XmlComplexContentImpl implements TransformsType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "Transform")};
    private static final long serialVersionUID = 1;

    public TransformsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsType
    public TransformType addNewTransform() {
        TransformType transformType;
        synchronized (monitor()) {
            check_orphaned();
            transformType = (TransformType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return transformType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsType
    public TransformType[] getTransformArray() {
        return (TransformType[]) getXmlObjectArray(PROPERTY_QNAME[0], new TransformType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsType
    public List<TransformType> getTransformList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lmn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TransformsTypeImpl.this.getTransformArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mmn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    TransformsTypeImpl.this.setTransformArray(((Integer) obj).intValue(), (TransformType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nmn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TransformsTypeImpl.this.insertNewTransform(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.omn
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TransformsTypeImpl.this.removeTransform(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pmn
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(TransformsTypeImpl.this.sizeOfTransformArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsType
    public TransformType insertNewTransform(int i) {
        TransformType transformType;
        synchronized (monitor()) {
            check_orphaned();
            transformType = (TransformType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return transformType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsType
    public void removeTransform(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsType
    public void setTransformArray(TransformType[] transformTypeArr) {
        check_orphaned();
        arraySetterHelper(transformTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsType
    public int sizeOfTransformArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsType
    public TransformType getTransformArray(int i) {
        TransformType transformType;
        synchronized (monitor()) {
            check_orphaned();
            transformType = (TransformType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (transformType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return transformType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformsType
    public void setTransformArray(int i, TransformType transformType) {
        generatedSetterHelperImpl(transformType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
