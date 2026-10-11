package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AnnotationDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NamedAttributeGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NamedGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.RedefineDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelComplexType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelSimpleType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.impl.RedefineDocumentImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class RedefineDocumentImpl extends XmlComplexContentImpl implements RedefineDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "redefine")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class RedefineImpl extends OpenAttrsImpl implements RedefineDocument.Redefine {
        private static final QName[] PROPERTY_QNAME = {new QName("http://www.w3.org/2001/XMLSchema", "annotation"), new QName("http://www.w3.org/2001/XMLSchema", "simpleType"), new QName("http://www.w3.org/2001/XMLSchema", "complexType"), new QName("http://www.w3.org/2001/XMLSchema", "group"), new QName("http://www.w3.org/2001/XMLSchema", "attributeGroup"), new QName("", "schemaLocation"), new QName("", "id")};
        private static final long serialVersionUID = 1;

        public RedefineImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public AnnotationDocument.Annotation addNewAnnotation() {
            AnnotationDocument.Annotation annotation;
            synchronized (monitor()) {
                check_orphaned();
                annotation = (AnnotationDocument.Annotation) get_store().add_element_user(PROPERTY_QNAME[0]);
            }
            return annotation;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public NamedAttributeGroup addNewAttributeGroup() {
            NamedAttributeGroup namedAttributeGroup;
            synchronized (monitor()) {
                check_orphaned();
                namedAttributeGroup = (NamedAttributeGroup) get_store().add_element_user(PROPERTY_QNAME[4]);
            }
            return namedAttributeGroup;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public TopLevelComplexType addNewComplexType() {
            TopLevelComplexType topLevelComplexType;
            synchronized (monitor()) {
                check_orphaned();
                topLevelComplexType = (TopLevelComplexType) get_store().add_element_user(PROPERTY_QNAME[2]);
            }
            return topLevelComplexType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public NamedGroup addNewGroup() {
            NamedGroup namedGroup;
            synchronized (monitor()) {
                check_orphaned();
                namedGroup = (NamedGroup) get_store().add_element_user(PROPERTY_QNAME[3]);
            }
            return namedGroup;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public TopLevelSimpleType addNewSimpleType() {
            TopLevelSimpleType topLevelSimpleType;
            synchronized (monitor()) {
                check_orphaned();
                topLevelSimpleType = (TopLevelSimpleType) get_store().add_element_user(PROPERTY_QNAME[1]);
            }
            return topLevelSimpleType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public AnnotationDocument.Annotation[] getAnnotationArray() {
            return (AnnotationDocument.Annotation[]) getXmlObjectArray(PROPERTY_QNAME[0], new AnnotationDocument.Annotation[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public List<AnnotationDocument.Annotation> getAnnotationList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nil
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RedefineDocumentImpl.RedefineImpl.this.getAnnotationArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oil
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RedefineDocumentImpl.RedefineImpl.this.setAnnotationArray(((Integer) obj).intValue(), (AnnotationDocument.Annotation) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.pil
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RedefineDocumentImpl.RedefineImpl.this.insertNewAnnotation(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.qil
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RedefineDocumentImpl.RedefineImpl.this.removeAnnotation(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.ril
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RedefineDocumentImpl.RedefineImpl.this.sizeOfAnnotationArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public NamedAttributeGroup[] getAttributeGroupArray() {
            return (NamedAttributeGroup[]) getXmlObjectArray(PROPERTY_QNAME[4], new NamedAttributeGroup[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public List<NamedAttributeGroup> getAttributeGroupList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uhl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RedefineDocumentImpl.RedefineImpl.this.getAttributeGroupArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vhl
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RedefineDocumentImpl.RedefineImpl.this.setAttributeGroupArray(((Integer) obj).intValue(), (NamedAttributeGroup) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.whl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RedefineDocumentImpl.RedefineImpl.this.insertNewAttributeGroup(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.xhl
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RedefineDocumentImpl.RedefineImpl.this.removeAttributeGroup(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.yhl
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RedefineDocumentImpl.RedefineImpl.this.sizeOfAttributeGroupArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public TopLevelComplexType[] getComplexTypeArray() {
            return (TopLevelComplexType[]) getXmlObjectArray(PROPERTY_QNAME[2], new TopLevelComplexType[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public List<TopLevelComplexType> getComplexTypeList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.thl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RedefineDocumentImpl.RedefineImpl.this.getComplexTypeArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.eil
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RedefineDocumentImpl.RedefineImpl.this.setComplexTypeArray(((Integer) obj).intValue(), (TopLevelComplexType) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.kil
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RedefineDocumentImpl.RedefineImpl.this.insertNewComplexType(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.lil
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RedefineDocumentImpl.RedefineImpl.this.removeComplexType(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.mil
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RedefineDocumentImpl.RedefineImpl.this.sizeOfComplexTypeArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public NamedGroup[] getGroupArray() {
            return (NamedGroup[]) getXmlObjectArray(PROPERTY_QNAME[3], new NamedGroup[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public List<NamedGroup> getGroupList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zhl
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RedefineDocumentImpl.RedefineImpl.this.getGroupArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ail
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RedefineDocumentImpl.RedefineImpl.this.setGroupArray(((Integer) obj).intValue(), (NamedGroup) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.bil
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RedefineDocumentImpl.RedefineImpl.this.insertNewGroup(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.cil
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RedefineDocumentImpl.RedefineImpl.this.removeGroup(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.dil
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RedefineDocumentImpl.RedefineImpl.this.sizeOfGroupArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public String getId() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public String getSchemaLocation() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public TopLevelSimpleType[] getSimpleTypeArray() {
            return (TopLevelSimpleType[]) getXmlObjectArray(PROPERTY_QNAME[1], new TopLevelSimpleType[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public List<TopLevelSimpleType> getSimpleTypeList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fil
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RedefineDocumentImpl.RedefineImpl.this.getSimpleTypeArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gil
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        RedefineDocumentImpl.RedefineImpl.this.setSimpleTypeArray(((Integer) obj).intValue(), (TopLevelSimpleType) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.hil
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return RedefineDocumentImpl.RedefineImpl.this.insertNewSimpleType(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.iil
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RedefineDocumentImpl.RedefineImpl.this.removeSimpleType(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.jil
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(RedefineDocumentImpl.RedefineImpl.this.sizeOfSimpleTypeArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public AnnotationDocument.Annotation insertNewAnnotation(int i) {
            AnnotationDocument.Annotation annotation;
            synchronized (monitor()) {
                check_orphaned();
                annotation = (AnnotationDocument.Annotation) get_store().insert_element_user(PROPERTY_QNAME[0], i);
            }
            return annotation;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public NamedAttributeGroup insertNewAttributeGroup(int i) {
            NamedAttributeGroup namedAttributeGroup;
            synchronized (monitor()) {
                check_orphaned();
                namedAttributeGroup = (NamedAttributeGroup) get_store().insert_element_user(PROPERTY_QNAME[4], i);
            }
            return namedAttributeGroup;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public TopLevelComplexType insertNewComplexType(int i) {
            TopLevelComplexType topLevelComplexType;
            synchronized (monitor()) {
                check_orphaned();
                topLevelComplexType = (TopLevelComplexType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
            }
            return topLevelComplexType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public NamedGroup insertNewGroup(int i) {
            NamedGroup namedGroup;
            synchronized (monitor()) {
                check_orphaned();
                namedGroup = (NamedGroup) get_store().insert_element_user(PROPERTY_QNAME[3], i);
            }
            return namedGroup;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public TopLevelSimpleType insertNewSimpleType(int i) {
            TopLevelSimpleType topLevelSimpleType;
            synchronized (monitor()) {
                check_orphaned();
                topLevelSimpleType = (TopLevelSimpleType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
            }
            return topLevelSimpleType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public boolean isSetId() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void removeAnnotation(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[0], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void removeAttributeGroup(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[4], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void removeComplexType(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[2], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void removeGroup(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[3], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void removeSimpleType(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[1], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setAnnotationArray(AnnotationDocument.Annotation[] annotationArr) {
            check_orphaned();
            arraySetterHelper(annotationArr, PROPERTY_QNAME[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setAttributeGroupArray(NamedAttributeGroup[] namedAttributeGroupArr) {
            check_orphaned();
            arraySetterHelper(namedAttributeGroupArr, PROPERTY_QNAME[4]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setComplexTypeArray(TopLevelComplexType[] topLevelComplexTypeArr) {
            check_orphaned();
            arraySetterHelper(topLevelComplexTypeArr, PROPERTY_QNAME[2]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setGroupArray(NamedGroup[] namedGroupArr) {
            check_orphaned();
            arraySetterHelper(namedGroupArr, PROPERTY_QNAME[3]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setId(String str) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
                }
                simpleValue.setStringValue(str);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setSchemaLocation(String str) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
                }
                simpleValue.setStringValue(str);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setSimpleTypeArray(TopLevelSimpleType[] topLevelSimpleTypeArr) {
            check_orphaned();
            arraySetterHelper(topLevelSimpleTypeArr, PROPERTY_QNAME[1]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public int sizeOfAnnotationArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public int sizeOfAttributeGroupArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public int sizeOfComplexTypeArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public int sizeOfGroupArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public int sizeOfSimpleTypeArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void unsetId() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[6]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public XmlID xgetId() {
            XmlID xmlID;
            synchronized (monitor()) {
                check_orphaned();
                xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            }
            return xmlID;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public XmlAnyURI xgetSchemaLocation() {
            XmlAnyURI xmlAnyURI;
            synchronized (monitor()) {
                check_orphaned();
                xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            }
            return xmlAnyURI;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void xsetId(XmlID xmlID) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[6]);
                if (xmlID2 == null) {
                    xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[6]);
                }
                xmlID2.set(xmlID);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void xsetSchemaLocation(XmlAnyURI xmlAnyURI) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[5]);
                if (xmlAnyURI2 == null) {
                    xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[5]);
                }
                xmlAnyURI2.set(xmlAnyURI);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public AnnotationDocument.Annotation getAnnotationArray(int i) {
            AnnotationDocument.Annotation annotation;
            synchronized (monitor()) {
                check_orphaned();
                annotation = (AnnotationDocument.Annotation) get_store().find_element_user(PROPERTY_QNAME[0], i);
                if (annotation == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return annotation;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public NamedAttributeGroup getAttributeGroupArray(int i) {
            NamedAttributeGroup namedAttributeGroup;
            synchronized (monitor()) {
                check_orphaned();
                namedAttributeGroup = (NamedAttributeGroup) get_store().find_element_user(PROPERTY_QNAME[4], i);
                if (namedAttributeGroup == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return namedAttributeGroup;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public TopLevelComplexType getComplexTypeArray(int i) {
            TopLevelComplexType topLevelComplexType;
            synchronized (monitor()) {
                check_orphaned();
                topLevelComplexType = (TopLevelComplexType) get_store().find_element_user(PROPERTY_QNAME[2], i);
                if (topLevelComplexType == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return topLevelComplexType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public NamedGroup getGroupArray(int i) {
            NamedGroup namedGroup;
            synchronized (monitor()) {
                check_orphaned();
                namedGroup = (NamedGroup) get_store().find_element_user(PROPERTY_QNAME[3], i);
                if (namedGroup == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return namedGroup;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public TopLevelSimpleType getSimpleTypeArray(int i) {
            TopLevelSimpleType topLevelSimpleType;
            synchronized (monitor()) {
                check_orphaned();
                topLevelSimpleType = (TopLevelSimpleType) get_store().find_element_user(PROPERTY_QNAME[1], i);
                if (topLevelSimpleType == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return topLevelSimpleType;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setAnnotationArray(int i, AnnotationDocument.Annotation annotation) {
            generatedSetterHelperImpl(annotation, PROPERTY_QNAME[0], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setAttributeGroupArray(int i, NamedAttributeGroup namedAttributeGroup) {
            generatedSetterHelperImpl(namedAttributeGroup, PROPERTY_QNAME[4], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setComplexTypeArray(int i, TopLevelComplexType topLevelComplexType) {
            generatedSetterHelperImpl(topLevelComplexType, PROPERTY_QNAME[2], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setGroupArray(int i, NamedGroup namedGroup) {
            generatedSetterHelperImpl(namedGroup, PROPERTY_QNAME[3], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdschema.RedefineDocument.Redefine
        public void setSimpleTypeArray(int i, TopLevelSimpleType topLevelSimpleType) {
            generatedSetterHelperImpl(topLevelSimpleType, PROPERTY_QNAME[1], i, (short) 2);
        }
    }

    public RedefineDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.RedefineDocument
    public RedefineDocument.Redefine addNewRedefine() {
        RedefineDocument.Redefine redefine;
        synchronized (monitor()) {
            check_orphaned();
            redefine = (RedefineDocument.Redefine) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return redefine;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.RedefineDocument
    public RedefineDocument.Redefine getRedefine() {
        RedefineDocument.Redefine redefine;
        synchronized (monitor()) {
            check_orphaned();
            redefine = (RedefineDocument.Redefine) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (redefine == null) {
                redefine = null;
            }
        }
        return redefine;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.RedefineDocument
    public void setRedefine(RedefineDocument.Redefine redefine) {
        generatedSetterHelperImpl(redefine, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
