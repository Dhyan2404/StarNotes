package org.etsi.uri.x01903.v13.impl;

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
import org.etsi.uri.x01903.v13.CRLRefType;
import org.etsi.uri.x01903.v13.CRLRefsType;
import org.etsi.uri.x01903.v13.impl.CRLRefsTypeImpl;

/* loaded from: classes13.dex */
public class CRLRefsTypeImpl extends XmlComplexContentImpl implements CRLRefsType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CRLRef")};
    private static final long serialVersionUID = 1;

    public CRLRefsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.CRLRefsType
    public CRLRefType addNewCRLRef() {
        CRLRefType cRLRefType;
        synchronized (monitor()) {
            check_orphaned();
            cRLRefType = (CRLRefType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cRLRefType;
    }

    @Override // org.etsi.uri.x01903.v13.CRLRefsType
    public CRLRefType[] getCRLRefArray() {
        return (CRLRefType[]) getXmlObjectArray(PROPERTY_QNAME[0], new CRLRefType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.CRLRefsType
    public List<CRLRefType> getCRLRefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.m20
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CRLRefsTypeImpl.this.getCRLRefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n20
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CRLRefsTypeImpl.this.setCRLRefArray(((Integer) obj).intValue(), (CRLRefType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o20
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CRLRefsTypeImpl.this.insertNewCRLRef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.p20
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CRLRefsTypeImpl.this.removeCRLRef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q20
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CRLRefsTypeImpl.this.sizeOfCRLRefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.CRLRefsType
    public CRLRefType insertNewCRLRef(int i) {
        CRLRefType cRLRefType;
        synchronized (monitor()) {
            check_orphaned();
            cRLRefType = (CRLRefType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cRLRefType;
    }

    @Override // org.etsi.uri.x01903.v13.CRLRefsType
    public void removeCRLRef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CRLRefsType
    public void setCRLRefArray(CRLRefType[] cRLRefTypeArr) {
        check_orphaned();
        arraySetterHelper(cRLRefTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.CRLRefsType
    public int sizeOfCRLRefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.CRLRefsType
    public CRLRefType getCRLRefArray(int i) {
        CRLRefType cRLRefType;
        synchronized (monitor()) {
            check_orphaned();
            cRLRefType = (CRLRefType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cRLRefType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cRLRefType;
    }

    @Override // org.etsi.uri.x01903.v13.CRLRefsType
    public void setCRLRefArray(int i, CRLRefType cRLRefType) {
        generatedSetterHelperImpl(cRLRefType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
