package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface DSAKeyValueType extends XmlObject {
    public static final DocumentFactory<DSAKeyValueType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DSAKeyValueType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dsakeyvaluetypee913type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getG();

    byte[] getJ();

    byte[] getP();

    byte[] getPgenCounter();

    byte[] getQ();

    byte[] getSeed();

    byte[] getY();

    boolean isSetG();

    boolean isSetJ();

    boolean isSetP();

    boolean isSetPgenCounter();

    boolean isSetQ();

    boolean isSetSeed();

    void setG(byte[] bArr);

    void setJ(byte[] bArr);

    void setP(byte[] bArr);

    void setPgenCounter(byte[] bArr);

    void setQ(byte[] bArr);

    void setSeed(byte[] bArr);

    void setY(byte[] bArr);

    void unsetG();

    void unsetJ();

    void unsetP();

    void unsetPgenCounter();

    void unsetQ();

    void unsetSeed();

    CryptoBinary xgetG();

    CryptoBinary xgetJ();

    CryptoBinary xgetP();

    CryptoBinary xgetPgenCounter();

    CryptoBinary xgetQ();

    CryptoBinary xgetSeed();

    CryptoBinary xgetY();

    void xsetG(CryptoBinary cryptoBinary);

    void xsetJ(CryptoBinary cryptoBinary);

    void xsetP(CryptoBinary cryptoBinary);

    void xsetPgenCounter(CryptoBinary cryptoBinary);

    void xsetQ(CryptoBinary cryptoBinary);

    void xsetSeed(CryptoBinary cryptoBinary);

    void xsetY(CryptoBinary cryptoBinary);
}
