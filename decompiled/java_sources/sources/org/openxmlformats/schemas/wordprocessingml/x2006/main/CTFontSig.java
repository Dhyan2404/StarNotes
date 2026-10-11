package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTFontSig extends XmlObject {
    public static final DocumentFactory<CTFontSig> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFontSig> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfontsiga9d0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getCsb0();

    byte[] getCsb1();

    byte[] getUsb0();

    byte[] getUsb1();

    byte[] getUsb2();

    byte[] getUsb3();

    void setCsb0(byte[] bArr);

    void setCsb1(byte[] bArr);

    void setUsb0(byte[] bArr);

    void setUsb1(byte[] bArr);

    void setUsb2(byte[] bArr);

    void setUsb3(byte[] bArr);

    STLongHexNumber xgetCsb0();

    STLongHexNumber xgetCsb1();

    STLongHexNumber xgetUsb0();

    STLongHexNumber xgetUsb1();

    STLongHexNumber xgetUsb2();

    STLongHexNumber xgetUsb3();

    void xsetCsb0(STLongHexNumber sTLongHexNumber);

    void xsetCsb1(STLongHexNumber sTLongHexNumber);

    void xsetUsb0(STLongHexNumber sTLongHexNumber);

    void xsetUsb1(STLongHexNumber sTLongHexNumber);

    void xsetUsb2(STLongHexNumber sTLongHexNumber);

    void xsetUsb3(STLongHexNumber sTLongHexNumber);
}
