package org.p120w3.x2000.x09.xmldsig;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SPKIDataType extends XmlObject {
    public static final DocumentFactory<SPKIDataType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SPKIDataType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "spkidatatypea180type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    XmlBase64Binary addNewSPKISexp();

    void addSPKISexp(byte[] bArr);

    byte[] getSPKISexpArray(int i);

    byte[][] getSPKISexpArray();

    List<byte[]> getSPKISexpList();

    XmlBase64Binary insertNewSPKISexp(int i);

    void insertSPKISexp(int i, byte[] bArr);

    void removeSPKISexp(int i);

    void setSPKISexpArray(int i, byte[] bArr);

    void setSPKISexpArray(byte[][] bArr);

    int sizeOfSPKISexpArray();

    XmlBase64Binary xgetSPKISexpArray(int i);

    XmlBase64Binary[] xgetSPKISexpArray();

    List<XmlBase64Binary> xgetSPKISexpList();

    void xsetSPKISexpArray(int i, XmlBase64Binary xmlBase64Binary);

    void xsetSPKISexpArray(XmlBase64Binary[] xmlBase64BinaryArr);
}
