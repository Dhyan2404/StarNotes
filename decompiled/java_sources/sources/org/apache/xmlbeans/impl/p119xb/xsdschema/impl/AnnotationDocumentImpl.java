package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AnnotationDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AppinfoDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.DocumentationDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.impl.AnnotationDocumentImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class AnnotationDocumentImpl extends XmlComplexContentImpl implements AnnotationDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "annotation")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class AnnotationImpl extends OpenAttrsImpl implements AnnotationDocument.Annotation {
        private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "appinfo"), new QName("http://www.w3.org/2001/XMLSchema", "documentation"), new QName("", "id")};
        private static final long serialVersionUID = 1;

        public AnnotationImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public AppinfoDocument.Appinfo addNewAppinfo() {
            AppinfoDocument.Appinfo appinfo;
            synchronized (monitor()) {
                check_orphaned();
                appinfo = (AppinfoDocument.Appinfo) get_store().add_element_user(PROPERTY_QNAME[0]);
            }
            return appinfo;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public DocumentationDocument.Documentation addNewDocumentation() {
            DocumentationDocument.Documentation documentation;
            synchronized (monitor()) {
                check_orphaned();
                documentation = (DocumentationDocument.Documentation) get_store().add_element_user(PROPERTY_QNAME[1]);
            }
            return documentation;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public AppinfoDocument.Appinfo[] getAppinfoArray() {
            return (AppinfoDocument.Appinfo[]) getXmlObjectArray(PROPERTY_QNAME[0], new AppinfoDocument.Appinfo[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public List<AppinfoDocument.Appinfo> getAppinfoList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fb
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return AnnotationDocumentImpl.AnnotationImpl.this.getAppinfoArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gb
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        AnnotationDocumentImpl.AnnotationImpl.this.setAppinfoArray(((Integer) obj).intValue(), (AppinfoDocument.Appinfo) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.hb
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return AnnotationDocumentImpl.AnnotationImpl.this.insertNewAppinfo(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.ib
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        AnnotationDocumentImpl.AnnotationImpl.this.removeAppinfo(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.jb
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(AnnotationDocumentImpl.AnnotationImpl.this.sizeOfAppinfoArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public DocumentationDocument.Documentation[] getDocumentationArray() {
            return (DocumentationDocument.Documentation[]) getXmlObjectArray(PROPERTY_QNAME[1], new DocumentationDocument.Documentation[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public List<DocumentationDocument.Documentation> getDocumentationList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kb
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return AnnotationDocumentImpl.AnnotationImpl.this.getDocumentationArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lb
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        AnnotationDocumentImpl.AnnotationImpl.this.setDocumentationArray(((Integer) obj).intValue(), (DocumentationDocument.Documentation) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.mb
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return AnnotationDocumentImpl.AnnotationImpl.this.insertNewDocumentation(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.nb
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        AnnotationDocumentImpl.AnnotationImpl.this.removeDocumentation(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.ob
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(AnnotationDocumentImpl.AnnotationImpl.this.sizeOfDocumentationArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public String getId() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public AppinfoDocument.Appinfo insertNewAppinfo(int i) {
            AppinfoDocument.Appinfo appinfo;
            synchronized (monitor()) {
                check_orphaned();
                appinfo = (AppinfoDocument.Appinfo) get_store().insert_element_user(PROPERTY_QNAME[0], i);
            }
            return appinfo;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public DocumentationDocument.Documentation insertNewDocumentation(int i) {
            DocumentationDocument.Documentation documentation;
            synchronized (monitor()) {
                check_orphaned();
                documentation = (DocumentationDocument.Documentation) get_store().insert_element_user(PROPERTY_QNAME[1], i);
            }
            return documentation;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public boolean isSetId() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public void removeAppinfo(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[0], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public void removeDocumentation(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[1], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public void setAppinfoArray(AppinfoDocument.Appinfo[] appinfoArr) {
            check_orphaned();
            arraySetterHelper(appinfoArr, PROPERTY_QNAME[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public void setDocumentationArray(DocumentationDocument.Documentation[] documentationArr) {
            check_orphaned();
            arraySetterHelper(documentationArr, PROPERTY_QNAME[1]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public void setId(String str) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
                }
                simpleValue.setStringValue(str);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public int sizeOfAppinfoArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public int sizeOfDocumentationArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public void unsetId() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[2]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public XmlID xgetId() {
            XmlID xmlID;
            synchronized (monitor()) {
                check_orphaned();
                xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            }
            return xmlID;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public void xsetId(XmlID xmlID) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[2]);
                if (xmlID2 == null) {
                    xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[2]);
                }
                xmlID2.set(xmlID);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public AppinfoDocument.Appinfo getAppinfoArray(int i) {
            AppinfoDocument.Appinfo appinfo;
            synchronized (monitor()) {
                check_orphaned();
                appinfo = (AppinfoDocument.Appinfo) get_store().find_element_user(PROPERTY_QNAME[0], i);
                if (appinfo == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return appinfo;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public DocumentationDocument.Documentation getDocumentationArray(int i) {
            DocumentationDocument.Documentation documentation;
            synchronized (monitor()) {
                check_orphaned();
                documentation = (DocumentationDocument.Documentation) get_store().find_element_user(PROPERTY_QNAME[1], i);
                if (documentation == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return documentation;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public void setAppinfoArray(int i, AppinfoDocument.Appinfo appinfo) {
            generatedSetterHelperImpl(appinfo, PROPERTY_QNAME[0], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.AnnotationDocument.Annotation
        public void setDocumentationArray(int i, DocumentationDocument.Documentation documentation) {
            generatedSetterHelperImpl(documentation, PROPERTY_QNAME[1], i, (short) 2);
        }
    }

    public AnnotationDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AnnotationDocument
    public AnnotationDocument.Annotation addNewAnnotation() {
        AnnotationDocument.Annotation annotation;
        synchronized (monitor()) {
            check_orphaned();
            annotation = (AnnotationDocument.Annotation) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return annotation;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AnnotationDocument
    public AnnotationDocument.Annotation getAnnotation() {
        AnnotationDocument.Annotation annotation;
        synchronized (monitor()) {
            check_orphaned();
            annotation = (AnnotationDocument.Annotation) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (annotation == null) {
                annotation = null;
            }
        }
        return annotation;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AnnotationDocument
    public void setAnnotation(AnnotationDocument.Annotation annotation) {
        generatedSetterHelperImpl(annotation, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
