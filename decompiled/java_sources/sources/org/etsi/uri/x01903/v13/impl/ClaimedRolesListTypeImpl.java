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
import org.etsi.uri.x01903.v13.AnyType;
import org.etsi.uri.x01903.v13.ClaimedRolesListType;
import org.etsi.uri.x01903.v13.impl.ClaimedRolesListTypeImpl;

/* loaded from: classes13.dex */
public class ClaimedRolesListTypeImpl extends XmlComplexContentImpl implements ClaimedRolesListType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "ClaimedRole")};
    private static final long serialVersionUID = 1;

    public ClaimedRolesListTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.ClaimedRolesListType
    public AnyType addNewClaimedRole() {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.ClaimedRolesListType
    public AnyType[] getClaimedRoleArray() {
        return (AnyType[]) getXmlObjectArray(PROPERTY_QNAME[0], new AnyType[0]);
    }

    @Override // org.etsi.uri.x01903.v13.ClaimedRolesListType
    public List<AnyType> getClaimedRoleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qtd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ClaimedRolesListTypeImpl.this.getClaimedRoleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rtd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ClaimedRolesListTypeImpl.this.setClaimedRoleArray(((Integer) obj).intValue(), (AnyType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.std
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ClaimedRolesListTypeImpl.this.insertNewClaimedRole(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ttd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ClaimedRolesListTypeImpl.this.removeClaimedRole(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.utd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ClaimedRolesListTypeImpl.this.sizeOfClaimedRoleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.ClaimedRolesListType
    public AnyType insertNewClaimedRole(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.ClaimedRolesListType
    public void removeClaimedRole(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.ClaimedRolesListType
    public void setClaimedRoleArray(AnyType[] anyTypeArr) {
        check_orphaned();
        arraySetterHelper(anyTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.etsi.uri.x01903.v13.ClaimedRolesListType
    public int sizeOfClaimedRoleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.ClaimedRolesListType
    public AnyType getClaimedRoleArray(int i) {
        AnyType anyType;
        synchronized (monitor()) {
            check_orphaned();
            anyType = (AnyType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (anyType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return anyType;
    }

    @Override // org.etsi.uri.x01903.v13.ClaimedRolesListType
    public void setClaimedRoleArray(int i, AnyType anyType) {
        generatedSetterHelperImpl(anyType, PROPERTY_QNAME[0], i, (short) 2);
    }
}
