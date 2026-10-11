package org.apache.xmlbeans.impl.p119xb.substwsdl.impl;

import androidx.core.app.NotificationCompat;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.p119xb.substwsdl.DefinitionsDocument;
import org.apache.xmlbeans.impl.p119xb.substwsdl.TImport;
import org.apache.xmlbeans.impl.p119xb.substwsdl.impl.DefinitionsDocumentImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class DefinitionsDocumentImpl extends XmlComplexContentImpl implements DefinitionsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.apache.org/internal/xmlbeans/wsdlsubst", "definitions")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class DefinitionsImpl extends XmlComplexContentImpl implements DefinitionsDocument.Definitions {
        private static final QName[] PROPERTY_QNAME = {new QName("http://www.apache.org/internal/xmlbeans/wsdlsubst", Constants.ELEMNAME_IMPORT_STRING), new QName("http://www.apache.org/internal/xmlbeans/wsdlsubst", "types"), new QName("http://www.apache.org/internal/xmlbeans/wsdlsubst", "message"), new QName("http://www.apache.org/internal/xmlbeans/wsdlsubst", "binding"), new QName("http://www.apache.org/internal/xmlbeans/wsdlsubst", "portType"), new QName("http://www.apache.org/internal/xmlbeans/wsdlsubst", NotificationCompat.CATEGORY_SERVICE)};
        private static final long serialVersionUID = 1;

        public DefinitionsImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject addNewBinding() {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().add_element_user(PROPERTY_QNAME[3]);
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public TImport addNewImport() {
            TImport tImport;
            synchronized (monitor()) {
                check_orphaned();
                tImport = (TImport) get_store().add_element_user(PROPERTY_QNAME[0]);
            }
            return tImport;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject addNewMessage() {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().add_element_user(PROPERTY_QNAME[2]);
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject addNewPortType() {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().add_element_user(PROPERTY_QNAME[4]);
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject addNewService() {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().add_element_user(PROPERTY_QNAME[5]);
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject addNewTypes() {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().add_element_user(PROPERTY_QNAME[1]);
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject[] getBindingArray() {
            return getXmlObjectArray(PROPERTY_QNAME[3], new XmlObject[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public List<XmlObject> getBindingList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n1f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.getBindingArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o1f
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.setBindingArray(((Integer) obj).intValue(), (XmlObject) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.p1f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.insertNewBinding(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.q1f
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.removeBinding(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.r1f
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(DefinitionsDocumentImpl.DefinitionsImpl.this.sizeOfBindingArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public TImport[] getImportArray() {
            return (TImport[]) getXmlObjectArray(PROPERTY_QNAME[0], new TImport[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public List<TImport> getImportList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.d2f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.getImportArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.e2f
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.setImportArray(((Integer) obj).intValue(), (TImport) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.f2f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.insertNewImport(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.g2f
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.removeImport(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.h2f
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(DefinitionsDocumentImpl.DefinitionsImpl.this.sizeOfImportArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject[] getMessageArray() {
            return getXmlObjectArray(PROPERTY_QNAME[2], new XmlObject[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public List<XmlObject> getMessageList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y1f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.getMessageArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z1f
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.setMessageArray(((Integer) obj).intValue(), (XmlObject) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.a2f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.insertNewMessage(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.b2f
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.removeMessage(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.c2f
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(DefinitionsDocumentImpl.DefinitionsImpl.this.sizeOfMessageArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject[] getPortTypeArray() {
            return getXmlObjectArray(PROPERTY_QNAME[4], new XmlObject[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public List<XmlObject> getPortTypeList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l2f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.getPortTypeArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m2f
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.setPortTypeArray(((Integer) obj).intValue(), (XmlObject) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.n2f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.insertNewPortType(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.o2f
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.removePortType(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.p2f
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(DefinitionsDocumentImpl.DefinitionsImpl.this.sizeOfPortTypeArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject[] getServiceArray() {
            return getXmlObjectArray(PROPERTY_QNAME[5], new XmlObject[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public List<XmlObject> getServiceList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s1f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.getServiceArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.t1f
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.setServiceArray(((Integer) obj).intValue(), (XmlObject) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.u1f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.insertNewService(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.v1f
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.removeService(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.w1f
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(DefinitionsDocumentImpl.DefinitionsImpl.this.sizeOfServiceArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject[] getTypesArray() {
            return getXmlObjectArray(PROPERTY_QNAME[1], new XmlObject[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public List<XmlObject> getTypesList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.m1f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.getTypesArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x1f
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.setTypesArray(((Integer) obj).intValue(), (XmlObject) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.i2f
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DefinitionsDocumentImpl.DefinitionsImpl.this.insertNewTypes(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.j2f
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        DefinitionsDocumentImpl.DefinitionsImpl.this.removeTypes(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.k2f
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(DefinitionsDocumentImpl.DefinitionsImpl.this.sizeOfTypesArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject insertNewBinding(int i) {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().insert_element_user(PROPERTY_QNAME[3], i);
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public TImport insertNewImport(int i) {
            TImport tImport;
            synchronized (monitor()) {
                check_orphaned();
                tImport = (TImport) get_store().insert_element_user(PROPERTY_QNAME[0], i);
            }
            return tImport;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject insertNewMessage(int i) {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().insert_element_user(PROPERTY_QNAME[2], i);
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject insertNewPortType(int i) {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().insert_element_user(PROPERTY_QNAME[4], i);
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject insertNewService(int i) {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().insert_element_user(PROPERTY_QNAME[5], i);
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject insertNewTypes(int i) {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().insert_element_user(PROPERTY_QNAME[1], i);
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void removeBinding(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[3], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void removeImport(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[0], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void removeMessage(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[2], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void removePortType(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[4], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void removeService(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[5], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void removeTypes(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[1], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setBindingArray(XmlObject[] xmlObjectArr) {
            check_orphaned();
            arraySetterHelper(xmlObjectArr, PROPERTY_QNAME[3]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setImportArray(TImport[] tImportArr) {
            check_orphaned();
            arraySetterHelper(tImportArr, PROPERTY_QNAME[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setMessageArray(XmlObject[] xmlObjectArr) {
            check_orphaned();
            arraySetterHelper(xmlObjectArr, PROPERTY_QNAME[2]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setPortTypeArray(XmlObject[] xmlObjectArr) {
            check_orphaned();
            arraySetterHelper(xmlObjectArr, PROPERTY_QNAME[4]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setServiceArray(XmlObject[] xmlObjectArr) {
            check_orphaned();
            arraySetterHelper(xmlObjectArr, PROPERTY_QNAME[5]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setTypesArray(XmlObject[] xmlObjectArr) {
            check_orphaned();
            arraySetterHelper(xmlObjectArr, PROPERTY_QNAME[1]);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public int sizeOfBindingArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public int sizeOfImportArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public int sizeOfMessageArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public int sizeOfPortTypeArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public int sizeOfServiceArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public int sizeOfTypesArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject getBindingArray(int i) {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().find_element_user(PROPERTY_QNAME[3], i);
                if (xmlObject == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public TImport getImportArray(int i) {
            TImport tImport;
            synchronized (monitor()) {
                check_orphaned();
                tImport = (TImport) get_store().find_element_user(PROPERTY_QNAME[0], i);
                if (tImport == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return tImport;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject getMessageArray(int i) {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().find_element_user(PROPERTY_QNAME[2], i);
                if (xmlObject == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject getPortTypeArray(int i) {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().find_element_user(PROPERTY_QNAME[4], i);
                if (xmlObject == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject getServiceArray(int i) {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().find_element_user(PROPERTY_QNAME[5], i);
                if (xmlObject == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public XmlObject getTypesArray(int i) {
            XmlObject xmlObject;
            synchronized (monitor()) {
                check_orphaned();
                xmlObject = (XmlObject) get_store().find_element_user(PROPERTY_QNAME[1], i);
                if (xmlObject == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setBindingArray(int i, XmlObject xmlObject) {
            generatedSetterHelperImpl(xmlObject, PROPERTY_QNAME[3], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setImportArray(int i, TImport tImport) {
            generatedSetterHelperImpl(tImport, PROPERTY_QNAME[0], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setMessageArray(int i, XmlObject xmlObject) {
            generatedSetterHelperImpl(xmlObject, PROPERTY_QNAME[2], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setPortTypeArray(int i, XmlObject xmlObject) {
            generatedSetterHelperImpl(xmlObject, PROPERTY_QNAME[4], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setServiceArray(int i, XmlObject xmlObject) {
            generatedSetterHelperImpl(xmlObject, PROPERTY_QNAME[5], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument.Definitions
        public void setTypesArray(int i, XmlObject xmlObject) {
            generatedSetterHelperImpl(xmlObject, PROPERTY_QNAME[1], i, (short) 2);
        }
    }

    public DefinitionsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.substwsdl.DefinitionsDocument
    public DefinitionsDocument.Definitions addNewDefinitions() {
        DefinitionsDocument.Definitions definitions;
        synchronized (monitor()) {
            check_orphaned();
            definitions = (DefinitionsDocument.Definitions) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return definitions;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.substwsdl.DefinitionsDocument
    public DefinitionsDocument.Definitions getDefinitions() {
        DefinitionsDocument.Definitions definitions;
        synchronized (monitor()) {
            check_orphaned();
            definitions = (DefinitionsDocument.Definitions) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (definitions == null) {
                definitions = null;
            }
        }
        return definitions;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.substwsdl.DefinitionsDocument
    public void setDefinitions(DefinitionsDocument.Definitions definitions) {
        generatedSetterHelperImpl(definitions, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
