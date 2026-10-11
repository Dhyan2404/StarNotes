package com.microsoft.schemas.office.x2006.digsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface CTSignatureInfoV2 extends XmlObject {
    public static final DocumentFactory<CTSignatureInfoV2> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSignatureInfoV2> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsignatureinfov2d460type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getAddress1();

    String getAddress2();

    boolean isSetAddress1();

    boolean isSetAddress2();

    void setAddress1(String str);

    void setAddress2(String str);

    void unsetAddress1();

    void unsetAddress2();

    XmlString xgetAddress1();

    XmlString xgetAddress2();

    void xsetAddress1(XmlString xmlString);

    void xsetAddress2(XmlString xmlString);
}
