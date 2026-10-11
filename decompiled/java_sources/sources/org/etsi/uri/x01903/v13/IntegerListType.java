package org.etsi.uri.x01903.v13;

import java.math.BigInteger;
import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface IntegerListType extends XmlObject {
    public static final DocumentFactory<IntegerListType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<IntegerListType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "integerlisttype20d8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    void addInt(BigInteger bigInteger);

    XmlInteger addNewInt();

    BigInteger getIntArray(int i);

    BigInteger[] getIntArray();

    List<BigInteger> getIntList();

    void insertInt(int i, BigInteger bigInteger);

    XmlInteger insertNewInt(int i);

    void removeInt(int i);

    void setIntArray(int i, BigInteger bigInteger);

    void setIntArray(BigInteger[] bigIntegerArr);

    int sizeOfIntArray();

    XmlInteger xgetIntArray(int i);

    XmlInteger[] xgetIntArray();

    List<XmlInteger> xgetIntList();

    void xsetIntArray(int i, XmlInteger xmlInteger);

    void xsetIntArray(XmlInteger[] xmlIntegerArr);
}
