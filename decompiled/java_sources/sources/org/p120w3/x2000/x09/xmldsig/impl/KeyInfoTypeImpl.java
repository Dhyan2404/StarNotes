package org.p120w3.x2000.x09.xmldsig.impl;

import com.sunia.HTREnginev2.fti;
import com.sunia.HTREnginev2.gti;
import com.sunia.HTREnginev2.ld1;
import com.sunia.HTREnginev2.lsi;
import com.sunia.HTREnginev2.msi;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.KeyInfoType;
import org.p120w3.x2000.x09.xmldsig.KeyValueType;
import org.p120w3.x2000.x09.xmldsig.PGPDataType;
import org.p120w3.x2000.x09.xmldsig.RetrievalMethodType;
import org.p120w3.x2000.x09.xmldsig.SPKIDataType;
import org.p120w3.x2000.x09.xmldsig.X509DataType;
import org.p120w3.x2000.x09.xmldsig.impl.KeyInfoTypeImpl;

/* loaded from: classes16.dex */
public class KeyInfoTypeImpl extends XmlComplexContentImpl implements KeyInfoType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "KeyName"), new QName(SignatureFacet.XML_DIGSIG_NS, "KeyValue"), new QName(SignatureFacet.XML_DIGSIG_NS, "RetrievalMethod"), new QName(SignatureFacet.XML_DIGSIG_NS, "X509Data"), new QName(SignatureFacet.XML_DIGSIG_NS, "PGPData"), new QName(SignatureFacet.XML_DIGSIG_NS, "SPKIData"), new QName(SignatureFacet.XML_DIGSIG_NS, "MgmtData"), new QName("", PackageRelationship.ID_ATTRIBUTE_NAME)};
    private static final long serialVersionUID = 1;

    public KeyInfoTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getKeyNameArray$0(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getMgmtDataArray$2(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetKeyNameArray$1(int i) {
        return new XmlString[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetMgmtDataArray$3(int i) {
        return new XmlString[i];
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void addKeyName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[0])).setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void addMgmtData(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[6])).setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public XmlString addNewKeyName() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public KeyValueType addNewKeyValue() {
        KeyValueType keyValueType;
        synchronized (monitor()) {
            check_orphaned();
            keyValueType = (KeyValueType) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return keyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public XmlString addNewMgmtData() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public PGPDataType addNewPGPData() {
        PGPDataType pGPDataType;
        synchronized (monitor()) {
            check_orphaned();
            pGPDataType = (PGPDataType) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return pGPDataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public RetrievalMethodType addNewRetrievalMethod() {
        RetrievalMethodType retrievalMethodType;
        synchronized (monitor()) {
            check_orphaned();
            retrievalMethodType = (RetrievalMethodType) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return retrievalMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public SPKIDataType addNewSPKIData() {
        SPKIDataType sPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            sPKIDataType = (SPKIDataType) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return sPKIDataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public X509DataType addNewX509Data() {
        X509DataType x509DataType;
        synchronized (monitor()) {
            check_orphaned();
            x509DataType = (X509DataType) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return x509DataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public String[] getKeyNameArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[0], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.ati
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getKeyNameArray$0;
                lambda$getKeyNameArray$0 = KeyInfoTypeImpl.lambda$getKeyNameArray$0(i);
                return lambda$getKeyNameArray$0;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public List<String> getKeyNameList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.kti
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.getKeyNameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lti
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.setKeyNameArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mti
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.insertKeyName(((Integer) obj).intValue(), (String) obj2);
                }
            }, new lsi(this), new msi(this));
        }
        return javaListObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public KeyValueType[] getKeyValueArray() {
        return (KeyValueType[]) getXmlObjectArray(PROPERTY_QNAME[1], new KeyValueType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public List<KeyValueType> getKeyValueList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.osi
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.getKeyValueArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.psi
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.setKeyValueArray(((Integer) obj).intValue(), (KeyValueType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qsi
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.insertNewKeyValue(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ssi
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    KeyInfoTypeImpl.this.removeKeyValue(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tsi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(KeyInfoTypeImpl.this.sizeOfKeyValueArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public String[] getMgmtDataArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[6], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.zsi
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getMgmtDataArray$2;
                lambda$getMgmtDataArray$2 = KeyInfoTypeImpl.lambda$getMgmtDataArray$2(i);
                return lambda$getMgmtDataArray$2;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public List<String> getMgmtDataList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.hti
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.getMgmtDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iti
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.setMgmtDataArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jti
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.insertMgmtData(((Integer) obj).intValue(), (String) obj2);
                }
            }, new fti(this), new gti(this));
        }
        return javaListObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public PGPDataType[] getPGPDataArray() {
        return (PGPDataType[]) getXmlObjectArray(PROPERTY_QNAME[4], new PGPDataType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public List<PGPDataType> getPGPDataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.oti
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.getPGPDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pti
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.setPGPDataArray(((Integer) obj).intValue(), (PGPDataType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qti
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.insertNewPGPData(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rti
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    KeyInfoTypeImpl.this.removePGPData(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sti
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(KeyInfoTypeImpl.this.sizeOfPGPDataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public RetrievalMethodType[] getRetrievalMethodArray() {
        return (RetrievalMethodType[]) getXmlObjectArray(PROPERTY_QNAME[2], new RetrievalMethodType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public List<RetrievalMethodType> getRetrievalMethodList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.usi
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.getRetrievalMethodArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vsi
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.setRetrievalMethodArray(((Integer) obj).intValue(), (RetrievalMethodType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wsi
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.insertNewRetrievalMethod(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xsi
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    KeyInfoTypeImpl.this.removeRetrievalMethod(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ysi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(KeyInfoTypeImpl.this.sizeOfRetrievalMethodArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public SPKIDataType[] getSPKIDataArray() {
        return (SPKIDataType[]) getXmlObjectArray(PROPERTY_QNAME[5], new SPKIDataType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public List<SPKIDataType> getSPKIDataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gsi
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.getSPKIDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rsi
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.setSPKIDataArray(((Integer) obj).intValue(), (SPKIDataType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cti
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.insertNewSPKIData(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nti
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    KeyInfoTypeImpl.this.removeSPKIData(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tti
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(KeyInfoTypeImpl.this.sizeOfSPKIDataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public X509DataType[] getX509DataArray() {
        return (X509DataType[]) getXmlObjectArray(PROPERTY_QNAME[3], new X509DataType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public List<X509DataType> getX509DataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vti
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.getX509DataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wti
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.setX509DataArray(((Integer) obj).intValue(), (X509DataType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xti
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.insertNewX509Data(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yti
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    KeyInfoTypeImpl.this.removeX509Data(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hsi
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(KeyInfoTypeImpl.this.sizeOfX509DataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void insertKeyName(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[0], i)).setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void insertMgmtData(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[6], i)).setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public XmlString insertNewKeyName(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public KeyValueType insertNewKeyValue(int i) {
        KeyValueType keyValueType;
        synchronized (monitor()) {
            check_orphaned();
            keyValueType = (KeyValueType) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return keyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public XmlString insertNewMgmtData(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public PGPDataType insertNewPGPData(int i) {
        PGPDataType pGPDataType;
        synchronized (monitor()) {
            check_orphaned();
            pGPDataType = (PGPDataType) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return pGPDataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public RetrievalMethodType insertNewRetrievalMethod(int i) {
        RetrievalMethodType retrievalMethodType;
        synchronized (monitor()) {
            check_orphaned();
            retrievalMethodType = (RetrievalMethodType) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return retrievalMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public SPKIDataType insertNewSPKIData(int i) {
        SPKIDataType sPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            sPKIDataType = (SPKIDataType) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return sPKIDataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public X509DataType insertNewX509Data(int i) {
        X509DataType x509DataType;
        synchronized (monitor()) {
            check_orphaned();
            x509DataType = (X509DataType) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return x509DataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void removeKeyName(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void removeKeyValue(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void removeMgmtData(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void removePGPData(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void removeRetrievalMethod(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void removeSPKIData(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void removeX509Data(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setKeyNameArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setKeyValueArray(KeyValueType[] keyValueTypeArr) {
        check_orphaned();
        arraySetterHelper(keyValueTypeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setMgmtDataArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[6]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setPGPDataArray(PGPDataType[] pGPDataTypeArr) {
        check_orphaned();
        arraySetterHelper(pGPDataTypeArr, PROPERTY_QNAME[4]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setRetrievalMethodArray(RetrievalMethodType[] retrievalMethodTypeArr) {
        check_orphaned();
        arraySetterHelper(retrievalMethodTypeArr, PROPERTY_QNAME[2]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setSPKIDataArray(SPKIDataType[] sPKIDataTypeArr) {
        check_orphaned();
        arraySetterHelper(sPKIDataTypeArr, PROPERTY_QNAME[5]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setX509DataArray(X509DataType[] x509DataTypeArr) {
        check_orphaned();
        arraySetterHelper(x509DataTypeArr, PROPERTY_QNAME[3]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public int sizeOfKeyNameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public int sizeOfKeyValueArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public int sizeOfMgmtDataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public int sizeOfPGPDataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public int sizeOfRetrievalMethodArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public int sizeOfSPKIDataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public int sizeOfX509DataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public XmlID xgetId() {
        XmlID xmlID;
        synchronized (monitor()) {
            check_orphaned();
            xmlID = (XmlID) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlID;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public XmlString[] xgetKeyNameArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[0], new IntFunction() { // from class: com.sunia.HTREnginev2.nsi
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetKeyNameArray$1;
                lambda$xgetKeyNameArray$1 = KeyInfoTypeImpl.lambda$xgetKeyNameArray$1(i);
                return lambda$xgetKeyNameArray$1;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public List<XmlString> xgetKeyNameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.isi
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.xgetKeyNameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jsi
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.xsetKeyNameArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ksi
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.insertNewKeyName(((Integer) obj).intValue());
                }
            }, new lsi(this), new msi(this));
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public XmlString[] xgetMgmtDataArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[6], new IntFunction() { // from class: com.sunia.HTREnginev2.uti
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetMgmtDataArray$3;
                lambda$xgetMgmtDataArray$3 = KeyInfoTypeImpl.lambda$xgetMgmtDataArray$3(i);
                return lambda$xgetMgmtDataArray$3;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public List<XmlString> xgetMgmtDataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bti
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.xgetMgmtDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dti
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    KeyInfoTypeImpl.this.xsetMgmtDataArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.eti
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return KeyInfoTypeImpl.this.insertNewMgmtData(((Integer) obj).intValue());
                }
            }, new fti(this), new gti(this));
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void xsetId(XmlID xmlID) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlID xmlID2 = (XmlID) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlID2 == null) {
                xmlID2 = (XmlID) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlID2.set(xmlID);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void xsetKeyNameArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void xsetMgmtDataArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[6]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public String getKeyNameArray(int i) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public KeyValueType getKeyValueArray(int i) {
        KeyValueType keyValueType;
        synchronized (monitor()) {
            check_orphaned();
            keyValueType = (KeyValueType) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (keyValueType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return keyValueType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public String getMgmtDataArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public PGPDataType getPGPDataArray(int i) {
        PGPDataType pGPDataType;
        synchronized (monitor()) {
            check_orphaned();
            pGPDataType = (PGPDataType) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (pGPDataType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return pGPDataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public RetrievalMethodType getRetrievalMethodArray(int i) {
        RetrievalMethodType retrievalMethodType;
        synchronized (monitor()) {
            check_orphaned();
            retrievalMethodType = (RetrievalMethodType) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (retrievalMethodType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return retrievalMethodType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public SPKIDataType getSPKIDataArray(int i) {
        SPKIDataType sPKIDataType;
        synchronized (monitor()) {
            check_orphaned();
            sPKIDataType = (SPKIDataType) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (sPKIDataType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return sPKIDataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public X509DataType getX509DataArray(int i) {
        X509DataType x509DataType;
        synchronized (monitor()) {
            check_orphaned();
            x509DataType = (X509DataType) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (x509DataType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return x509DataType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public XmlString xgetKeyNameArray(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public XmlString xgetMgmtDataArray(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (xmlString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setKeyValueArray(int i, KeyValueType keyValueType) {
        generatedSetterHelperImpl(keyValueType, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setPGPDataArray(int i, PGPDataType pGPDataType) {
        generatedSetterHelperImpl(pGPDataType, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setRetrievalMethodArray(int i, RetrievalMethodType retrievalMethodType) {
        generatedSetterHelperImpl(retrievalMethodType, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setSPKIDataArray(int i, SPKIDataType sPKIDataType) {
        generatedSetterHelperImpl(sPKIDataType, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setX509DataArray(int i, X509DataType x509DataType) {
        generatedSetterHelperImpl(x509DataType, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setKeyNameArray(int i, String str) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void setMgmtDataArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void xsetKeyNameArray(int i, XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            XmlString xmlString2 = (XmlString) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlString2 != null) {
                xmlString2.set(xmlString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.KeyInfoType
    public void xsetMgmtDataArray(int i, XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            XmlString xmlString2 = (XmlString) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (xmlString2 != null) {
                xmlString2.set(xmlString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
