package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CellDefType extends XmlObject {
    public static final DocumentFactory<CellDefType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CellDefType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "celldeftypebe08type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getF();

    short getIX();

    String getN();

    short getS();

    String getT();

    boolean isSetF();

    boolean isSetIX();

    boolean isSetS();

    void setF(String str);

    void setIX(short s);

    void setN(String str);

    void setS(short s);

    void setT(String str);

    void unsetF();

    void unsetIX();

    void unsetS();

    XmlString xgetF();

    XmlUnsignedByte xgetIX();

    XmlString xgetN();

    XmlUnsignedByte xgetS();

    XmlToken xgetT();

    void xsetF(XmlString xmlString);

    void xsetIX(XmlUnsignedByte xmlUnsignedByte);

    void xsetN(XmlString xmlString);

    void xsetS(XmlUnsignedByte xmlUnsignedByte);

    void xsetT(XmlToken xmlToken);
}
