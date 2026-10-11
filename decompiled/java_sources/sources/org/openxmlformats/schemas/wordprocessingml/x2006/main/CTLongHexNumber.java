package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTLongHexNumber extends XmlObject {
    public static final DocumentFactory<CTLongHexNumber> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLongHexNumber> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlonghexnumbereeaatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getVal();

    void setVal(byte[] bArr);

    STLongHexNumber xgetVal();

    void xsetVal(STLongHexNumber sTLongHexNumber);
}
