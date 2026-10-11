package org.apache.xmlbeans.impl.p119xb.xsdownload.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.p119xb.xsdownload.DownloadedSchemaEntry;
import org.apache.xmlbeans.impl.p119xb.xsdownload.DownloadedSchemasDocument;
import org.apache.xmlbeans.impl.p119xb.xsdownload.impl.DownloadedSchemasDocumentImpl;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes13.dex */
public class DownloadedSchemasDocumentImpl extends XmlComplexContentImpl implements DownloadedSchemasDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://www.bea.com/2003/01/xmlbean/xsdownload", "downloaded-schemas")};
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class DownloadedSchemasImpl extends XmlComplexContentImpl implements DownloadedSchemasDocument.DownloadedSchemas {
        private static final QName[] PROPERTY_QNAME = {new QName("http://www.bea.com/2003/01/xmlbean/xsdownload", "entry"), new QName("", "defaultDirectory")};
        private static final long serialVersionUID = 1;

        public DownloadedSchemasImpl(SchemaType schemaType) {
            super(schemaType);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public DownloadedSchemaEntry addNewEntry() {
            DownloadedSchemaEntry downloadedSchemaEntry;
            synchronized (monitor()) {
                check_orphaned();
                downloadedSchemaEntry = (DownloadedSchemaEntry) get_store().add_element_user(PROPERTY_QNAME[0]);
            }
            return downloadedSchemaEntry;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public String getDefaultDirectory() {
            String stringValue;
            synchronized (monitor()) {
                check_orphaned();
                SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
                stringValue = simpleValue == null ? null : simpleValue.getStringValue();
            }
            return stringValue;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public DownloadedSchemaEntry[] getEntryArray() {
            return (DownloadedSchemaEntry[]) getXmlObjectArray(PROPERTY_QNAME[0], new DownloadedSchemaEntry[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public List<DownloadedSchemaEntry> getEntryList() {
            JavaListXmlObject javaListXmlObject;
            synchronized (monitor()) {
                check_orphaned();
                javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zgf
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DownloadedSchemasDocumentImpl.DownloadedSchemasImpl.this.getEntryArray(((Integer) obj).intValue());
                    }
                }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ahf
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        DownloadedSchemasDocumentImpl.DownloadedSchemasImpl.this.setEntryArray(((Integer) obj).intValue(), (DownloadedSchemaEntry) obj2);
                    }
                }, new Function() { // from class: com.sunia.HTREnginev2.bhf
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return DownloadedSchemasDocumentImpl.DownloadedSchemasImpl.this.insertNewEntry(((Integer) obj).intValue());
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.chf
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        DownloadedSchemasDocumentImpl.DownloadedSchemasImpl.this.removeEntry(((Integer) obj).intValue());
                    }
                }, new Supplier() { // from class: com.sunia.HTREnginev2.dhf
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return Integer.valueOf(DownloadedSchemasDocumentImpl.DownloadedSchemasImpl.this.sizeOfEntryArray());
                    }
                });
            }
            return javaListXmlObject;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public DownloadedSchemaEntry insertNewEntry(int i) {
            DownloadedSchemaEntry downloadedSchemaEntry;
            synchronized (monitor()) {
                check_orphaned();
                downloadedSchemaEntry = (DownloadedSchemaEntry) get_store().insert_element_user(PROPERTY_QNAME[0], i);
            }
            return downloadedSchemaEntry;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public boolean isSetDefaultDirectory() {
            boolean z;
            synchronized (monitor()) {
                check_orphaned();
                z = true;
                if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                    z = false;
                }
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public void removeEntry(int i) {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_element(PROPERTY_QNAME[0], i);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public void setDefaultDirectory(String str) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
                if (simpleValue == null) {
                    simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
                }
                simpleValue.setStringValue(str);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public void setEntryArray(DownloadedSchemaEntry[] downloadedSchemaEntryArr) {
            check_orphaned();
            arraySetterHelper(downloadedSchemaEntryArr, PROPERTY_QNAME[0]);
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public int sizeOfEntryArray() {
            int count_elements;
            synchronized (monitor()) {
                check_orphaned();
                count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
            }
            return count_elements;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public void unsetDefaultDirectory() {
            synchronized (monitor()) {
                check_orphaned();
                get_store().remove_attribute(PROPERTY_QNAME[1]);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public XmlToken xgetDefaultDirectory() {
            XmlToken xmlToken;
            synchronized (monitor()) {
                check_orphaned();
                xmlToken = (XmlToken) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            }
            return xmlToken;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public void xsetDefaultDirectory(XmlToken xmlToken) {
            synchronized (monitor()) {
                check_orphaned();
                TypeStore typeStore = get_store();
                QName[] qNameArr = PROPERTY_QNAME;
                XmlToken xmlToken2 = (XmlToken) typeStore.find_attribute_user(qNameArr[1]);
                if (xmlToken2 == null) {
                    xmlToken2 = (XmlToken) get_store().add_attribute_user(qNameArr[1]);
                }
                xmlToken2.set(xmlToken);
            }
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public DownloadedSchemaEntry getEntryArray(int i) {
            DownloadedSchemaEntry downloadedSchemaEntry;
            synchronized (monitor()) {
                check_orphaned();
                downloadedSchemaEntry = (DownloadedSchemaEntry) get_store().find_element_user(PROPERTY_QNAME[0], i);
                if (downloadedSchemaEntry == null) {
                    throw new IndexOutOfBoundsException();
                }
            }
            return downloadedSchemaEntry;
        }

        @Override // org.apache.xmlbeans.impl.xb.xsdownload.DownloadedSchemasDocument.DownloadedSchemas
        public void setEntryArray(int i, DownloadedSchemaEntry downloadedSchemaEntry) {
            generatedSetterHelperImpl(downloadedSchemaEntry, PROPERTY_QNAME[0], i, (short) 2);
        }
    }

    public DownloadedSchemasDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdownload.DownloadedSchemasDocument
    public DownloadedSchemasDocument.DownloadedSchemas addNewDownloadedSchemas() {
        DownloadedSchemasDocument.DownloadedSchemas downloadedSchemas;
        synchronized (monitor()) {
            check_orphaned();
            downloadedSchemas = (DownloadedSchemasDocument.DownloadedSchemas) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return downloadedSchemas;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdownload.DownloadedSchemasDocument
    public DownloadedSchemasDocument.DownloadedSchemas getDownloadedSchemas() {
        DownloadedSchemasDocument.DownloadedSchemas downloadedSchemas;
        synchronized (monitor()) {
            check_orphaned();
            downloadedSchemas = (DownloadedSchemasDocument.DownloadedSchemas) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (downloadedSchemas == null) {
                downloadedSchemas = null;
            }
        }
        return downloadedSchemas;
    }

    @Override // org.apache.xmlbeans.impl.p119xb.xsdownload.DownloadedSchemasDocument
    public void setDownloadedSchemas(DownloadedSchemasDocument.DownloadedSchemas downloadedSchemas) {
        generatedSetterHelperImpl(downloadedSchemas, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
