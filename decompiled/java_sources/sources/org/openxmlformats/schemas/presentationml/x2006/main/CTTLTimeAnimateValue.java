package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLTimeAnimateValue extends XmlObject {
    public static final DocumentFactory<CTTLTimeAnimateValue> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLTimeAnimateValue> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttltimeanimatevalue07d0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLAnimVariant addNewVal();

    String getFmla();

    Object getTm();

    CTTLAnimVariant getVal();

    boolean isSetFmla();

    boolean isSetTm();

    boolean isSetVal();

    void setFmla(String str);

    void setTm(Object obj);

    void setVal(CTTLAnimVariant cTTLAnimVariant);

    void unsetFmla();

    void unsetTm();

    void unsetVal();

    XmlString xgetFmla();

    STTLTimeAnimateValueTime xgetTm();

    void xsetFmla(XmlString xmlString);

    void xsetTm(STTLTimeAnimateValueTime sTTLTimeAnimateValueTime);
}
