package org.etsi.uri.x01903.v13.impl;

import com.sunia.HTREnginev2.ld1;
import com.sunia.HTREnginev2.qaf;
import com.sunia.HTREnginev2.raf;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.DocumentationReferencesType;
import org.etsi.uri.x01903.v13.impl.DocumentationReferencesTypeImpl;

/* loaded from: classes13.dex */
public class DocumentationReferencesTypeImpl extends XmlComplexContentImpl implements DocumentationReferencesType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "DocumentationReference")};
    private static final long serialVersionUID = 1;

    public DocumentationReferencesTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getDocumentationReferenceArray$0(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlAnyURI[] lambda$xgetDocumentationReferenceArray$1(int i) {
        return new XmlAnyURI[i];
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public void addDocumentationReference(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[0])).setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public XmlAnyURI addNewDocumentationReference() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public String[] getDocumentationReferenceArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[0], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.laf
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getDocumentationReferenceArray$0;
                lambda$getDocumentationReferenceArray$0 = DocumentationReferencesTypeImpl.lambda$getDocumentationReferenceArray$0(i);
                return lambda$getDocumentationReferenceArray$0;
            }
        });
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public List<String> getDocumentationReferenceList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.naf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DocumentationReferencesTypeImpl.this.getDocumentationReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oaf
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DocumentationReferencesTypeImpl.this.setDocumentationReferenceArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.paf
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DocumentationReferencesTypeImpl.this.insertDocumentationReference(((Integer) obj).intValue(), (String) obj2);
                }
            }, new qaf(this), new raf(this));
        }
        return javaListObject;
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public void insertDocumentationReference(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[0], i)).setStringValue(str);
        }
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public XmlAnyURI insertNewDocumentationReference(int i) {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public void removeDocumentationReference(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public void setDocumentationReferenceArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public int sizeOfDocumentationReferenceArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public XmlAnyURI[] xgetDocumentationReferenceArray() {
        return (XmlAnyURI[]) xgetArray(PROPERTY_QNAME[0], new IntFunction() { // from class: com.sunia.HTREnginev2.maf
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlAnyURI[] lambda$xgetDocumentationReferenceArray$1;
                lambda$xgetDocumentationReferenceArray$1 = DocumentationReferencesTypeImpl.lambda$xgetDocumentationReferenceArray$1(i);
                return lambda$xgetDocumentationReferenceArray$1;
            }
        });
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public List<XmlAnyURI> xgetDocumentationReferenceList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.saf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DocumentationReferencesTypeImpl.this.xgetDocumentationReferenceArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.taf
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DocumentationReferencesTypeImpl.this.xsetDocumentationReferenceArray(((Integer) obj).intValue(), (XmlAnyURI) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uaf
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return DocumentationReferencesTypeImpl.this.insertNewDocumentationReference(((Integer) obj).intValue());
                }
            }, new qaf(this), new raf(this));
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public void xsetDocumentationReferenceArray(XmlAnyURI[] xmlAnyURIArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlAnyURIArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public String getDocumentationReferenceArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public XmlAnyURI xgetDocumentationReferenceArray(int i) {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlAnyURI == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlAnyURI;
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public void setDocumentationReferenceArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.etsi.uri.x01903.v13.DocumentationReferencesType
    public void xsetDocumentationReferenceArray(int i, XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlAnyURI2 != null) {
                xmlAnyURI2.set(xmlAnyURI);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
