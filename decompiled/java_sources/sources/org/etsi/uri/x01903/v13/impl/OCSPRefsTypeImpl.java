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
import org.etsi.uri.x01903.v13.OCSPRefType;
import org.etsi.uri.x01903.v13.OCSPRefsType;
import org.etsi.uri.x01903.v13.impl.OCSPRefsTypeImpl;

/* loaded from: classes13.dex */
public class OCSPRefsTypeImpl extends XmlComplexContentImpl implements OCSPRefsType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "OCSPRef")};
    private static final long serialVersionUID = 1;

    public OCSPRefsTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.OCSPRefsType
    public OCSPRefType addNewOCSPRef() {
        OCSPRefType oCSPRefType;
        synchronized (monitor()) {
            check_orphaned();
            oCSPRefType = (OCSPRefType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return oCSPRefType;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPRefsType
    public OCSPRefType[] getOCSPRefArray() {
        return (OCSPRefType[]) getXmlObjectArray(PROPERTY_QNAME[0], new OCSPRefType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.OCSPRefsType
    public List<OCSPRefType> getOCSPRefList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e6k
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OCSPRefsTypeImpl.this.getOCSPRefArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f6k
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    OCSPRefsTypeImpl.this.setOCSPRefArray(((Integer) obj).intValue(), (OCSPRefType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g6k
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return OCSPRefsTypeImpl.this.insertNewOCSPRef(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h6k
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    OCSPRefsTypeImpl.this.removeOCSPRef(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i6k
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(OCSPRefsTypeImpl.this.sizeOfOCSPRefArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPRefsType
    public OCSPRefType insertNewOCSPRef(int i) {
        OCSPRefType oCSPRefType;
        synchronized (monitor()) {
            check_orphaned();
            oCSPRefType = (OCSPRefType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return oCSPRefType;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPRefsType
    public void removeOCSPRef(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.OCSPRefsType
    public void setOCSPRefArray(OCSPRefType[] oCSPRefTypeArr) {
        check_orphaned();
        arraySetterHelper(oCSPRefTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.OCSPRefsType
    public int sizeOfOCSPRefArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPRefsType
    public OCSPRefType getOCSPRefArray(int i) {
        OCSPRefType oCSPRefType;
        synchronized (monitor()) {
            check_orphaned();
            oCSPRefType = (OCSPRefType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (oCSPRefType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return oCSPRefType;
    }

    @Override // org.etsi.uri.x01903.v13.OCSPRefsType
    public void setOCSPRefArray(int i, OCSPRefType oCSPRefType) {
        generatedSetterHelperImpl(oCSPRefType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
