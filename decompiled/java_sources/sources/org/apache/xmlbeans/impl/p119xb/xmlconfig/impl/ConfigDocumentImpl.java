package org.apache.xmlbeans.impl.p119xb.xmlconfig.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.ConfigDocument;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Extensionconfig;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Nsconfig;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Qnameconfig;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.Usertypeconfig;
import org.apache.xmlbeans.impl.p119xb.xmlconfig.impl.ConfigDocumentImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes13.dex */
public class ConfigDocumentImpl extends XmlComplexContentImpl implements ConfigDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://xml.apache.org/xmlbeans/2004/02/xbean/config", AbstractLogger.CONFIG)};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class ConfigImpl extends XmlComplexContentImpl implements ConfigDocument.Config {
        private static final QName[] PROPERTY_QNAME = {new QName("http://xml.apache.org/xmlbeans/2004/02/xbean/config", Constants.ATTRNAME_NAMESPACE), new QName("http://xml.apache.org/xmlbeans/2004/02/xbean/config", "qname"), new QName("http://xml.apache.org/xmlbeans/2004/02/xbean/config", "extension"), new QName("http://xml.apache.org/xmlbeans/2004/02/xbean/config", "usertype")};
        private static final long serialVersionUID = 1;

        public ConfigImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Extensionconfig addNewExtension() {
            Extensionconfig extensionconfig;
            synchronized (monitor()) {
                check_orphaned();
                extensionconfig = (Extensionconfig) get_store().add_element_user(PROPERTY_QNAME[2]);
            }
            return extensionconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Nsconfig addNewNamespace() {
            Nsconfig nsconfig;
            synchronized (monitor()) {
                check_orphaned();
                nsconfig = (Nsconfig) get_store().add_element_user(PROPERTY_QNAME[0]);
            }
            return nsconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Qnameconfig addNewQname() {
            Qnameconfig qnameconfig;
            synchronized (monitor()) {
                check_orphaned();
                qnameconfig = (Qnameconfig) get_store().add_element_user(PROPERTY_QNAME[1]);
            }
            return qnameconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Usertypeconfig addNewUsertype() {
            Usertypeconfig usertypeconfig;
            synchronized (monitor()) {
                check_orphaned();
                usertypeconfig = (Usertypeconfig) get_store().add_element_user(PROPERTY_QNAME[3]);
            }
            return usertypeconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Extensionconfig[] getExtensionArray() {
            return (Extensionconfig[]) getXmlObjectArray(PROPERTY_QNAME[2], new Extensionconfig[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public List<Extensionconfig> getExtensionList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i8e
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ConfigDocumentImpl.ConfigImpl.this.getExtensionArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.t8e
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        ConfigDocumentImpl.ConfigImpl.this.setExtensionArray(((Integer) obj).intValue(), (Extensionconfig) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.u8e
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ConfigDocumentImpl.ConfigImpl.this.insertNewExtension(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.v8e
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ConfigDocumentImpl.ConfigImpl.this.removeExtension(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.w8e
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(ConfigDocumentImpl.ConfigImpl.this.sizeOfExtensionArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Nsconfig[] getNamespaceArray() {
            return (Nsconfig[]) getXmlObjectArray(PROPERTY_QNAME[0], new Nsconfig[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public List<Nsconfig> getNamespaceList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.x8e
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ConfigDocumentImpl.ConfigImpl.this.getNamespaceArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.y8e
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        ConfigDocumentImpl.ConfigImpl.this.setNamespaceArray(((Integer) obj).intValue(), (Nsconfig) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.z8e
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ConfigDocumentImpl.ConfigImpl.this.insertNewNamespace(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.a9e
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ConfigDocumentImpl.ConfigImpl.this.removeNamespace(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.b9e
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(ConfigDocumentImpl.ConfigImpl.this.sizeOfNamespaceArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Qnameconfig[] getQnameArray() {
            return (Qnameconfig[]) getXmlObjectArray(PROPERTY_QNAME[1], new Qnameconfig[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public List<Qnameconfig> getQnameList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.o8e
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ConfigDocumentImpl.ConfigImpl.this.getQnameArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.p8e
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        ConfigDocumentImpl.ConfigImpl.this.setQnameArray(((Integer) obj).intValue(), (Qnameconfig) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.q8e
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ConfigDocumentImpl.ConfigImpl.this.insertNewQname(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.r8e
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ConfigDocumentImpl.ConfigImpl.this.removeQname(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.s8e
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(ConfigDocumentImpl.ConfigImpl.this.sizeOfQnameArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Usertypeconfig[] getUsertypeArray() {
            return (Usertypeconfig[]) getXmlObjectArray(PROPERTY_QNAME[3], new Usertypeconfig[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public List<Usertypeconfig> getUsertypeList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j8e
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ConfigDocumentImpl.ConfigImpl.this.getUsertypeArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k8e
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        ConfigDocumentImpl.ConfigImpl.this.setUsertypeArray(((Integer) obj).intValue(), (Usertypeconfig) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.l8e
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ConfigDocumentImpl.ConfigImpl.this.insertNewUsertype(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.m8e
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ConfigDocumentImpl.ConfigImpl.this.removeUsertype(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.n8e
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(ConfigDocumentImpl.ConfigImpl.this.sizeOfUsertypeArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Extensionconfig insertNewExtension(int i) {
            Extensionconfig extensionconfig;
            synchronized (monitor()) {
                check_orphaned();
                extensionconfig = (Extensionconfig) get_store().insert_element_user(PROPERTY_QNAME[2], i);
            }
            return extensionconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Nsconfig insertNewNamespace(int i) {
            Nsconfig nsconfig;
            synchronized (monitor()) {
                check_orphaned();
                nsconfig = (Nsconfig) get_store().insert_element_user(PROPERTY_QNAME[0], i);
            }
            return nsconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Qnameconfig insertNewQname(int i) {
            Qnameconfig qnameconfig;
            synchronized (monitor()) {
                check_orphaned();
                qnameconfig = (Qnameconfig) get_store().insert_element_user(PROPERTY_QNAME[1], i);
            }
            return qnameconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Usertypeconfig insertNewUsertype(int i) {
            Usertypeconfig usertypeconfig;
            synchronized (monitor()) {
                check_orphaned();
                usertypeconfig = (Usertypeconfig) get_store().insert_element_user(PROPERTY_QNAME[3], i);
            }
            return usertypeconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void removeExtension(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[2], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void removeNamespace(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[0], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void removeQname(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[1], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void removeUsertype(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[3], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void setExtensionArray(Extensionconfig[] extensionconfigArr) {
            check_orphaned();
            arraySetterHelper(extensionconfigArr, PROPERTY_QNAME[2]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void setNamespaceArray(Nsconfig[] nsconfigArr) {
            check_orphaned();
            arraySetterHelper(nsconfigArr, PROPERTY_QNAME[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void setQnameArray(Qnameconfig[] qnameconfigArr) {
            check_orphaned();
            arraySetterHelper(qnameconfigArr, PROPERTY_QNAME[1]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void setUsertypeArray(Usertypeconfig[] usertypeconfigArr) {
            check_orphaned();
            arraySetterHelper(usertypeconfigArr, PROPERTY_QNAME[3]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public int sizeOfExtensionArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public int sizeOfNamespaceArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public int sizeOfQnameArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public int sizeOfUsertypeArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Extensionconfig getExtensionArray(int i) {
            Extensionconfig extensionconfig;
            synchronized (monitor()) {
                check_orphaned();
                extensionconfig = (Extensionconfig) get_store().find_element_user(PROPERTY_QNAME[2], i);
                if (extensionconfig == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return extensionconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Nsconfig getNamespaceArray(int i) {
            Nsconfig nsconfig;
            synchronized (monitor()) {
                check_orphaned();
                nsconfig = (Nsconfig) get_store().find_element_user(PROPERTY_QNAME[0], i);
                if (nsconfig == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return nsconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Qnameconfig getQnameArray(int i) {
            Qnameconfig qnameconfig;
            synchronized (monitor()) {
                check_orphaned();
                qnameconfig = (Qnameconfig) get_store().find_element_user(PROPERTY_QNAME[1], i);
                if (qnameconfig == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return qnameconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public Usertypeconfig getUsertypeArray(int i) {
            Usertypeconfig usertypeconfig;
            synchronized (monitor()) {
                check_orphaned();
                usertypeconfig = (Usertypeconfig) get_store().find_element_user(PROPERTY_QNAME[3], i);
                if (usertypeconfig == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return usertypeconfig;
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void setExtensionArray(int i, Extensionconfig extensionconfig) {
            generatedSetterHelperImpl(extensionconfig, PROPERTY_QNAME[2], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void setNamespaceArray(int i, Nsconfig nsconfig) {
            generatedSetterHelperImpl(nsconfig, PROPERTY_QNAME[0], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void setQnameArray(int i, Qnameconfig qnameconfig) {
            generatedSetterHelperImpl(qnameconfig, PROPERTY_QNAME[1], i, (short) 2);
        }

        @Override // org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument.Config
        public void setUsertypeArray(int i, Usertypeconfig usertypeconfig) {
            generatedSetterHelperImpl(usertypeconfig, PROPERTY_QNAME[3], i, (short) 2);
        }
    }

    public ConfigDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.ConfigDocument
    public ConfigDocument.Config addNewConfig() {
        ConfigDocument.Config config;
        synchronized (monitor()) {
            check_orphaned();
            config = (ConfigDocument.Config) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return config;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.ConfigDocument
    public ConfigDocument.Config getConfig() {
        ConfigDocument.Config config;
        synchronized (monitor()) {
            check_orphaned();
            config = (ConfigDocument.Config) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (config == null) {
                config = null;
            }
        }
        return config;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xmlconfig.ConfigDocument
    public void setConfig(ConfigDocument.Config config) {
        generatedSetterHelperImpl(config, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
