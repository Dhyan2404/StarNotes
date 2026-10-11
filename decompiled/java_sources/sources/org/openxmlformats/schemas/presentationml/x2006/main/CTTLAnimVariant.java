package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColor;

/* loaded from: classes14.dex */
public interface CTTLAnimVariant extends XmlObject {
    public static final DocumentFactory<CTTLAnimVariant> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimVariant> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimvariantc9d3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLAnimVariantBooleanVal addNewBoolVal();

    CTColor addNewClrVal();

    CTTLAnimVariantFloatVal addNewFltVal();

    CTTLAnimVariantIntegerVal addNewIntVal();

    CTTLAnimVariantStringVal addNewStrVal();

    CTTLAnimVariantBooleanVal getBoolVal();

    CTColor getClrVal();

    CTTLAnimVariantFloatVal getFltVal();

    CTTLAnimVariantIntegerVal getIntVal();

    CTTLAnimVariantStringVal getStrVal();

    boolean isSetBoolVal();

    boolean isSetClrVal();

    boolean isSetFltVal();

    boolean isSetIntVal();

    boolean isSetStrVal();

    void setBoolVal(CTTLAnimVariantBooleanVal cTTLAnimVariantBooleanVal);

    void setClrVal(CTColor cTColor);

    void setFltVal(CTTLAnimVariantFloatVal cTTLAnimVariantFloatVal);

    void setIntVal(CTTLAnimVariantIntegerVal cTTLAnimVariantIntegerVal);

    void setStrVal(CTTLAnimVariantStringVal cTTLAnimVariantStringVal);

    void unsetBoolVal();

    void unsetClrVal();

    void unsetFltVal();

    void unsetIntVal();

    void unsetStrVal();
}
