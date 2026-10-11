package org.etsi.uri.x01903.v13.impl;

import com.sunia.HTREnginev2.ld1;
import com.sunia.HTREnginev2.o4e;
import com.sunia.HTREnginev2.p4e;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.CommitmentTypeIndicationType;
import org.etsi.uri.x01903.v13.CommitmentTypeQualifiersListType;
import org.etsi.uri.x01903.v13.ObjectIdentifierType;
import org.etsi.uri.x01903.v13.impl.CommitmentTypeIndicationTypeImpl;

/* loaded from: classes13.dex */
public class CommitmentTypeIndicationTypeImpl extends XmlComplexContentImpl implements CommitmentTypeIndicationType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "CommitmentTypeId"), new QName(SignatureFacet.XADES_132_NS, "ObjectReference"), new QName(SignatureFacet.XADES_132_NS, "AllSignedDataObjects"), new QName(SignatureFacet.XADES_132_NS, "CommitmentTypeQualifiers")};
    private static final long serialVersionUID = 1;

    public CommitmentTypeIndicationTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getObjectReferenceArray$0(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlAnyURI[] lambda$xgetObjectReferenceArray$1(int i) {
        return new XmlAnyURI[i];
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public XmlObject addNewAllSignedDataObjects() {
        XmlObject xmlObject;
        synchronized (monitor()) {
            check_orphaned();
            xmlObject = (XmlObject) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return xmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public ObjectIdentifierType addNewCommitmentTypeId() {
        ObjectIdentifierType objectIdentifierType;
        synchronized (monitor()) {
            check_orphaned();
            objectIdentifierType = (ObjectIdentifierType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return objectIdentifierType;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public CommitmentTypeQualifiersListType addNewCommitmentTypeQualifiers() {
        CommitmentTypeQualifiersListType commitmentTypeQualifiersListType;
        synchronized (monitor()) {
            check_orphaned();
            commitmentTypeQualifiersListType = (CommitmentTypeQualifiersListType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return commitmentTypeQualifiersListType;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public XmlAnyURI addNewObjectReference() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void addObjectReference(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[1])).setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public XmlObject getAllSignedDataObjects() {
        XmlObject xmlObject;
        synchronized (monitor()) {
            check_orphaned();
            xmlObject = (XmlObject) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (xmlObject == null) {
                xmlObject = null;
            }
        }
        return xmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public ObjectIdentifierType getCommitmentTypeId() {
        ObjectIdentifierType objectIdentifierType;
        synchronized (monitor()) {
            check_orphaned();
            objectIdentifierType = (ObjectIdentifierType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (objectIdentifierType == null) {
                objectIdentifierType = null;
            }
        }
        return objectIdentifierType;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public CommitmentTypeQualifiersListType getCommitmentTypeQualifiers() {
        CommitmentTypeQualifiersListType commitmentTypeQualifiersListType;
        synchronized (monitor()) {
            check_orphaned();
            commitmentTypeQualifiersListType = (CommitmentTypeQualifiersListType) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (commitmentTypeQualifiersListType == null) {
                commitmentTypeQualifiersListType = null;
            }
        }
        return commitmentTypeQualifiersListType;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public String[] getObjectReferenceArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[1], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.j4e
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getObjectReferenceArray$0;
                lambda$getObjectReferenceArray$0 = CommitmentTypeIndicationTypeImpl.lambda$getObjectReferenceArray$0(i);
                return lambda$getObjectReferenceArray$0;
            }
        });
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public List<String> getObjectReferenceList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.l4e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CommitmentTypeIndicationTypeImpl.this.getObjectReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m4e
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CommitmentTypeIndicationTypeImpl.this.setObjectReferenceArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n4e
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CommitmentTypeIndicationTypeImpl.this.insertObjectReference(((Integer) obj).intValue(), (String) obj2);
                }
            }, new o4e(this), new p4e(this));
        }
        return javaListObject;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public XmlAnyURI insertNewObjectReference(int i) {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void insertObjectReference(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[1], i)).setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public boolean isSetAllSignedDataObjects() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public boolean isSetCommitmentTypeQualifiers() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void removeObjectReference(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void setAllSignedDataObjects(XmlObject xmlObject) {
        generatedSetterHelperImpl(xmlObject, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void setCommitmentTypeId(ObjectIdentifierType objectIdentifierType) {
        generatedSetterHelperImpl(objectIdentifierType, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void setCommitmentTypeQualifiers(CommitmentTypeQualifiersListType commitmentTypeQualifiersListType) {
        generatedSetterHelperImpl(commitmentTypeQualifiersListType, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void setObjectReferenceArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public int sizeOfObjectReferenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void unsetAllSignedDataObjects() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void unsetCommitmentTypeQualifiers() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public XmlAnyURI[] xgetObjectReferenceArray() {
        return (XmlAnyURI[]) xgetArray(PROPERTY_QNAME[1], new IntFunction() { // from class: com.sunia.HTREnginev2.k4e
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlAnyURI[] lambda$xgetObjectReferenceArray$1;
                lambda$xgetObjectReferenceArray$1 = CommitmentTypeIndicationTypeImpl.lambda$xgetObjectReferenceArray$1(i);
                return lambda$xgetObjectReferenceArray$1;
            }
        });
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public List<XmlAnyURI> xgetObjectReferenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q4e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CommitmentTypeIndicationTypeImpl.this.xgetObjectReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r4e
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CommitmentTypeIndicationTypeImpl.this.xsetObjectReferenceArray(((Integer) obj).intValue(), (XmlAnyURI) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s4e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CommitmentTypeIndicationTypeImpl.this.insertNewObjectReference(((Integer) obj).intValue());
                }
            }, new o4e(this), new p4e(this));
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void xsetObjectReferenceArray(XmlAnyURI[] xmlAnyURIArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlAnyURIArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public String getObjectReferenceArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public XmlAnyURI xgetObjectReferenceArray(int i) {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (xmlAnyURI == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void setObjectReferenceArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.etsi.uri.x01903.v13.CommitmentTypeIndicationType
    public void xsetObjectReferenceArray(int i, XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (xmlAnyURI2 != null) {
                xmlAnyURI2.set(xmlAnyURI);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
