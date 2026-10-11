package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTCharset extends XmlObject {
    public static final DocumentFactory<CTCharset> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCharset> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcharset8ec6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCharacterSet();

    byte[] getVal();

    boolean isSetCharacterSet();

    boolean isSetVal();

    void setCharacterSet(String str);

    void setVal(byte[] bArr);

    void unsetCharacterSet();

    void unsetVal();

    STString xgetCharacterSet();

    STUcharHexNumber xgetVal();

    void xsetCharacterSet(STString sTString);

    void xsetVal(STUcharHexNumber sTUcharHexNumber);
}
