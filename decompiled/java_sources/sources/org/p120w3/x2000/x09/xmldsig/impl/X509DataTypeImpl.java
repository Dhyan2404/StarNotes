package org.p120w3.x2000.x09.xmldsig.impl;

import com.sunia.HTREnginev2.fbo;
import com.sunia.HTREnginev2.kbo;
import com.sunia.HTREnginev2.lbo;
import com.sunia.HTREnginev2.lco;
import com.sunia.HTREnginev2.ld1;
import com.sunia.HTREnginev2.rco;
import com.sunia.HTREnginev2.syl;
import com.sunia.HTREnginev2.vbo;
import com.sunia.HTREnginev2.wbo;
import com.sunia.HTREnginev2.wco;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.X509DataType;
import org.p120w3.x2000.x09.xmldsig.X509IssuerSerialType;
import org.p120w3.x2000.x09.xmldsig.impl.X509DataTypeImpl;

/* loaded from: classes16.dex */
public class X509DataTypeImpl extends XmlComplexContentImpl implements X509DataType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "X509IssuerSerial"), new QName(SignatureFacet.XML_DIGSIG_NS, "X509SKI"), new QName(SignatureFacet.XML_DIGSIG_NS, "X509SubjectName"), new QName(SignatureFacet.XML_DIGSIG_NS, "X509Certificate"), new QName(SignatureFacet.XML_DIGSIG_NS, "X509CRL")};
    private static final long serialVersionUID = 1;

    public X509DataTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[][] lambda$getX509CRLArray$6(int i) {
        return new byte[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[][] lambda$getX509CertificateArray$4(int i) {
        return new byte[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[][] lambda$getX509SKIArray$0(int i) {
        return new byte[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getX509SubjectNameArray$2(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlBase64Binary[] lambda$xgetX509CRLArray$7(int i) {
        return new XmlBase64Binary[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlBase64Binary[] lambda$xgetX509CertificateArray$5(int i) {
        return new XmlBase64Binary[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlBase64Binary[] lambda$xgetX509SKIArray$1(int i) {
        return new XmlBase64Binary[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetX509SubjectNameArray$3(int i) {
        return new XmlString[i];
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary addNewX509CRL() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary addNewX509Certificate() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public X509IssuerSerialType addNewX509IssuerSerial() {
        X509IssuerSerialType x509IssuerSerialType;
        synchronized (monitor()) {
            check_orphaned();
            x509IssuerSerialType = (X509IssuerSerialType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return x509IssuerSerialType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary addNewX509SKI() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlString addNewX509SubjectName() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void addX509CRL(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[4])).setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void addX509Certificate(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[3])).setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void addX509SKI(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[1])).setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void addX509SubjectName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[2])).setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public byte[][] getX509CRLArray() {
        return (byte[][]) getObjectArray(PROPERTY_QNAME[4], new syl(), new IntFunction() { // from class: com.sunia.HTREnginev2.gbo
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                byte[][] lambda$getX509CRLArray$6;
                lambda$getX509CRLArray$6 = X509DataTypeImpl.lambda$getX509CRLArray$6(i);
                return lambda$getX509CRLArray$6;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public List<byte[]> getX509CRLList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ebo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.getX509CRLArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pbo
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.setX509CRLArray(((Integer) obj).intValue(), (byte[]) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.aco
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.insertX509CRL(((Integer) obj).intValue(), (byte[]) obj2);
                }
            }, new lco(this), new rco(this));
        }
        return javaListObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public byte[][] getX509CertificateArray() {
        return (byte[][]) getObjectArray(PROPERTY_QNAME[3], new syl(), new IntFunction() { // from class: com.sunia.HTREnginev2.kco
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                byte[][] lambda$getX509CertificateArray$4;
                lambda$getX509CertificateArray$4 = X509DataTypeImpl.lambda$getX509CertificateArray$4(i);
                return lambda$getX509CertificateArray$4;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public List<byte[]> getX509CertificateList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.hbo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.getX509CertificateArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ibo
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.setX509CertificateArray(((Integer) obj).intValue(), (byte[]) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jbo
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.insertX509Certificate(((Integer) obj).intValue(), (byte[]) obj2);
                }
            }, new kbo(this), new lbo(this));
        }
        return javaListObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public X509IssuerSerialType[] getX509IssuerSerialArray() {
        return (X509IssuerSerialType[]) getXmlObjectArray(PROPERTY_QNAME[0], new X509IssuerSerialType[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public List<X509IssuerSerialType> getX509IssuerSerialList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mbo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.getX509IssuerSerialArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nbo
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.setX509IssuerSerialArray(((Integer) obj).intValue(), (X509IssuerSerialType) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.obo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.insertNewX509IssuerSerial(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qbo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    X509DataTypeImpl.this.removeX509IssuerSerial(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rbo
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(X509DataTypeImpl.this.sizeOfX509IssuerSerialArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public byte[][] getX509SKIArray() {
        return (byte[][]) getObjectArray(PROPERTY_QNAME[1], new syl(), new IntFunction() { // from class: com.sunia.HTREnginev2.qco
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                byte[][] lambda$getX509SKIArray$0;
                lambda$getX509SKIArray$0 = X509DataTypeImpl.lambda$getX509SKIArray$0(i);
                return lambda$getX509SKIArray$0;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public List<byte[]> getX509SKIList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.sbo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.getX509SKIArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tbo
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.setX509SKIArray(((Integer) obj).intValue(), (byte[]) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ubo
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.insertX509SKI(((Integer) obj).intValue(), (byte[]) obj2);
                }
            }, new vbo(this), new wbo(this));
        }
        return javaListObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public String[] getX509SubjectNameArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[2], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.dco
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getX509SubjectNameArray$2;
                lambda$getX509SubjectNameArray$2 = X509DataTypeImpl.lambda$getX509SubjectNameArray$2(i);
                return lambda$getX509SubjectNameArray$2;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public List<String> getX509SubjectNameList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.eco
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.getX509SubjectNameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fco
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.setX509SubjectNameArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gco
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.insertX509SubjectName(((Integer) obj).intValue(), (String) obj2);
                }
            }, new wco(this), new fbo(this));
        }
        return javaListObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary insertNewX509CRL(int i) {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary insertNewX509Certificate(int i) {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public X509IssuerSerialType insertNewX509IssuerSerial(int i) {
        X509IssuerSerialType x509IssuerSerialType;
        synchronized (monitor()) {
            check_orphaned();
            x509IssuerSerialType = (X509IssuerSerialType) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return x509IssuerSerialType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary insertNewX509SKI(int i) {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlString insertNewX509SubjectName(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void insertX509CRL(int i, byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[4], i)).setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void insertX509Certificate(int i, byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[3], i)).setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void insertX509SKI(int i, byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[1], i)).setByteArrayValue(bArr);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void insertX509SubjectName(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[2], i)).setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void removeX509CRL(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void removeX509Certificate(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void removeX509IssuerSerial(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void removeX509SKI(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void removeX509SubjectName(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void setX509CRLArray(byte[][] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(bArr, PROPERTY_QNAME[4]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void setX509CertificateArray(byte[][] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(bArr, PROPERTY_QNAME[3]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void setX509IssuerSerialArray(X509IssuerSerialType[] x509IssuerSerialTypeArr) {
        check_orphaned();
        arraySetterHelper(x509IssuerSerialTypeArr, PROPERTY_QNAME[0]);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void setX509SKIArray(byte[][] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(bArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void setX509SubjectNameArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[2]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public int sizeOfX509CRLArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public int sizeOfX509CertificateArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public int sizeOfX509IssuerSerialArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public int sizeOfX509SKIArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public int sizeOfX509SubjectNameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary[] xgetX509CRLArray() {
        return (XmlBase64Binary[]) xgetArray(PROPERTY_QNAME[4], new IntFunction() { // from class: com.sunia.HTREnginev2.sco
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlBase64Binary[] lambda$xgetX509CRLArray$7;
                lambda$xgetX509CRLArray$7 = X509DataTypeImpl.lambda$xgetX509CRLArray$7(i);
                return lambda$xgetX509CRLArray$7;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public List<XmlBase64Binary> xgetX509CRLList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hco
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.xgetX509CRLArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ico
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.xsetX509CRLArray(((Integer) obj).intValue(), (XmlBase64Binary) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jco
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.insertNewX509CRL(((Integer) obj).intValue());
                }
            }, new lco(this), new rco(this));
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary[] xgetX509CertificateArray() {
        return (XmlBase64Binary[]) xgetArray(PROPERTY_QNAME[3], new IntFunction() { // from class: com.sunia.HTREnginev2.cco
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlBase64Binary[] lambda$xgetX509CertificateArray$5;
                lambda$xgetX509CertificateArray$5 = X509DataTypeImpl.lambda$xgetX509CertificateArray$5(i);
                return lambda$xgetX509CertificateArray$5;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public List<XmlBase64Binary> xgetX509CertificateList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nco
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.xgetX509CertificateArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oco
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.xsetX509CertificateArray(((Integer) obj).intValue(), (XmlBase64Binary) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pco
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.insertNewX509Certificate(((Integer) obj).intValue());
                }
            }, new kbo(this), new lbo(this));
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary[] xgetX509SKIArray() {
        return (XmlBase64Binary[]) xgetArray(PROPERTY_QNAME[1], new IntFunction() { // from class: com.sunia.HTREnginev2.mco
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlBase64Binary[] lambda$xgetX509SKIArray$1;
                lambda$xgetX509SKIArray$1 = X509DataTypeImpl.lambda$xgetX509SKIArray$1(i);
                return lambda$xgetX509SKIArray$1;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public List<XmlBase64Binary> xgetX509SKIList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ybo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.xgetX509SKIArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zbo
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.xsetX509SKIArray(((Integer) obj).intValue(), (XmlBase64Binary) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bco
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.insertNewX509SKI(((Integer) obj).intValue());
                }
            }, new vbo(this), new wbo(this));
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlString[] xgetX509SubjectNameArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[2], new IntFunction() { // from class: com.sunia.HTREnginev2.xbo
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetX509SubjectNameArray$3;
                lambda$xgetX509SubjectNameArray$3 = X509DataTypeImpl.lambda$xgetX509SubjectNameArray$3(i);
                return lambda$xgetX509SubjectNameArray$3;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public List<XmlString> xgetX509SubjectNameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tco
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.xgetX509SubjectNameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.uco
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    X509DataTypeImpl.this.xsetX509SubjectNameArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vco
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return X509DataTypeImpl.this.insertNewX509SubjectName(((Integer) obj).intValue());
                }
            }, new wco(this), new fbo(this));
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void xsetX509CRLArray(XmlBase64Binary[] xmlBase64BinaryArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlBase64BinaryArr, PROPERTY_QNAME[4]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void xsetX509CertificateArray(XmlBase64Binary[] xmlBase64BinaryArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlBase64BinaryArr, PROPERTY_QNAME[3]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void xsetX509SKIArray(XmlBase64Binary[] xmlBase64BinaryArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlBase64BinaryArr, PROPERTY_QNAME[1]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void xsetX509SubjectNameArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[2]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public byte[] getX509CRLArray(int i) {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (simpleValue != null) {
                byteArrayValue = simpleValue.getByteArrayValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public byte[] getX509CertificateArray(int i) {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (simpleValue != null) {
                byteArrayValue = simpleValue.getByteArrayValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public X509IssuerSerialType getX509IssuerSerialArray(int i) {
        X509IssuerSerialType x509IssuerSerialType;
        synchronized (monitor()) {
            check_orphaned();
            x509IssuerSerialType = (X509IssuerSerialType) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (x509IssuerSerialType == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return x509IssuerSerialType;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public byte[] getX509SKIArray(int i) {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (simpleValue != null) {
                byteArrayValue = simpleValue.getByteArrayValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return byteArrayValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public String getX509SubjectNameArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary xgetX509CRLArray(int i) {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (xmlBase64Binary == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary xgetX509CertificateArray(int i) {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (xmlBase64Binary == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlBase64Binary xgetX509SKIArray(int i) {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (xmlBase64Binary == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlBase64Binary;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public XmlString xgetX509SubjectNameArray(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (xmlString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void setX509IssuerSerialArray(int i, X509IssuerSerialType x509IssuerSerialType) {
        generatedSetterHelperImpl(x509IssuerSerialType, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void setX509CRLArray(int i, byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (simpleValue != null) {
                simpleValue.setByteArrayValue(bArr);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void setX509CertificateArray(int i, byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (simpleValue != null) {
                simpleValue.setByteArrayValue(bArr);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void setX509SKIArray(int i, byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (simpleValue != null) {
                simpleValue.setByteArrayValue(bArr);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void setX509SubjectNameArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void xsetX509CRLArray(int i, XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (xmlBase64Binary2 != null) {
                xmlBase64Binary2.set(xmlBase64Binary);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void xsetX509CertificateArray(int i, XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (xmlBase64Binary2 != null) {
                xmlBase64Binary2.set(xmlBase64Binary);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void xsetX509SKIArray(int i, XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (xmlBase64Binary2 != null) {
                xmlBase64Binary2.set(xmlBase64Binary);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.X509DataType
    public void xsetX509SubjectNameArray(int i, XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            XmlString xmlString2 = (XmlString) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (xmlString2 != null) {
                xmlString2.set(xmlString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
