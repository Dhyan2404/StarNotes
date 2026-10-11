package org.p120w3.x2000.x09.xmldsig;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface X509DataType extends XmlObject {
    public static final DocumentFactory<X509DataType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<X509DataType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "x509datatype5775type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    XmlBase64Binary addNewX509CRL();

    XmlBase64Binary addNewX509Certificate();

    X509IssuerSerialType addNewX509IssuerSerial();

    XmlBase64Binary addNewX509SKI();

    XmlString addNewX509SubjectName();

    void addX509CRL(byte[] bArr);

    void addX509Certificate(byte[] bArr);

    void addX509SKI(byte[] bArr);

    void addX509SubjectName(String str);

    byte[] getX509CRLArray(int i);

    byte[][] getX509CRLArray();

    List<byte[]> getX509CRLList();

    byte[] getX509CertificateArray(int i);

    byte[][] getX509CertificateArray();

    List<byte[]> getX509CertificateList();

    X509IssuerSerialType getX509IssuerSerialArray(int i);

    X509IssuerSerialType[] getX509IssuerSerialArray();

    List<X509IssuerSerialType> getX509IssuerSerialList();

    byte[] getX509SKIArray(int i);

    byte[][] getX509SKIArray();

    List<byte[]> getX509SKIList();

    String getX509SubjectNameArray(int i);

    String[] getX509SubjectNameArray();

    List<String> getX509SubjectNameList();

    XmlBase64Binary insertNewX509CRL(int i);

    XmlBase64Binary insertNewX509Certificate(int i);

    X509IssuerSerialType insertNewX509IssuerSerial(int i);

    XmlBase64Binary insertNewX509SKI(int i);

    XmlString insertNewX509SubjectName(int i);

    void insertX509CRL(int i, byte[] bArr);

    void insertX509Certificate(int i, byte[] bArr);

    void insertX509SKI(int i, byte[] bArr);

    void insertX509SubjectName(int i, String str);

    void removeX509CRL(int i);

    void removeX509Certificate(int i);

    void removeX509IssuerSerial(int i);

    void removeX509SKI(int i);

    void removeX509SubjectName(int i);

    void setX509CRLArray(int i, byte[] bArr);

    void setX509CRLArray(byte[][] bArr);

    void setX509CertificateArray(int i, byte[] bArr);

    void setX509CertificateArray(byte[][] bArr);

    void setX509IssuerSerialArray(int i, X509IssuerSerialType x509IssuerSerialType);

    void setX509IssuerSerialArray(X509IssuerSerialType[] x509IssuerSerialTypeArr);

    void setX509SKIArray(int i, byte[] bArr);

    void setX509SKIArray(byte[][] bArr);

    void setX509SubjectNameArray(int i, String str);

    void setX509SubjectNameArray(String[] strArr);

    int sizeOfX509CRLArray();

    int sizeOfX509CertificateArray();

    int sizeOfX509IssuerSerialArray();

    int sizeOfX509SKIArray();

    int sizeOfX509SubjectNameArray();

    XmlBase64Binary xgetX509CRLArray(int i);

    XmlBase64Binary[] xgetX509CRLArray();

    List<XmlBase64Binary> xgetX509CRLList();

    XmlBase64Binary xgetX509CertificateArray(int i);

    XmlBase64Binary[] xgetX509CertificateArray();

    List<XmlBase64Binary> xgetX509CertificateList();

    XmlBase64Binary xgetX509SKIArray(int i);

    XmlBase64Binary[] xgetX509SKIArray();

    List<XmlBase64Binary> xgetX509SKIList();

    XmlString xgetX509SubjectNameArray(int i);

    XmlString[] xgetX509SubjectNameArray();

    List<XmlString> xgetX509SubjectNameList();

    void xsetX509CRLArray(int i, XmlBase64Binary xmlBase64Binary);

    void xsetX509CRLArray(XmlBase64Binary[] xmlBase64BinaryArr);

    void xsetX509CertificateArray(int i, XmlBase64Binary xmlBase64Binary);

    void xsetX509CertificateArray(XmlBase64Binary[] xmlBase64BinaryArr);

    void xsetX509SKIArray(int i, XmlBase64Binary xmlBase64Binary);

    void xsetX509SKIArray(XmlBase64Binary[] xmlBase64BinaryArr);

    void xsetX509SubjectNameArray(int i, XmlString xmlString);

    void xsetX509SubjectNameArray(XmlString[] xmlStringArr);
}
